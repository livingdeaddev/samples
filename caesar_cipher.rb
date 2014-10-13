puts "Give me some text, please. "
text = gets.chomp
puts "Give me a number from 0-25, please."
shift = gets.chomp.to_i

def caesar_cipher(text, shift = 0)
	arr = ("a".."z").to_a
	arr_cap = ('A'..'Z').to_a
	abc = Hash[arr.collect.with_index.to_a]
	abc_cap = Hash[arr_cap.collect.with_index.to_a]
	ciph = arr.rotate(shift)
	ciph_cap = arr_cap.rotate(shift)
	cipher = []
	c = text.split(//).each {|l| 
		unless (arr_cap.include?(l) || arr.include?(l))
			cipher.push(l)
		else if (l  == l.upcase)
			cipher.push(ciph_cap[abc_cap[l]])
			else
				cipher.push(ciph[abc[l]])
			end
		end
	}
	puts cipher.join
end

caesar_cipher(text, shift)
