#Create a method called substrings that takes a string as the first argument
#and an array(dictionary) of valid substrings as the second argument
#return a hash listing each substring(case insensitive) found in the original
#string AND how many times
dictionary =["below", "down", "go", "going", "horn", "how", "howdy", "it",
"i", "low", "own", "part", "partner", "sit"]

def substrings(text, dictionary)
	frequencies = {}
	dictionary.each {|sub|
		freq = text.scan(sub).length
		if (freq > 0)
			frequencies[sub] = freq
		end
	}
	puts frequencies
end

substrings("below", dictionary)
#=> {"below"=>1, "low"=>1}

substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> {"down"=>1, "how"=>2, "howdy"=>1, "go"=>1, "going"=>1, "it"=>2,
# "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}