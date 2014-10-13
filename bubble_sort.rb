
def bubble_sort(arr)
	x = arr.length
	x.times do |y|
		for i in 1...(x)
			if arr[i-1] > arr[i] 
				arr[i-1], arr[i] = arr[i], arr[i-1]
			end
		end
	end
	puts arr
end

bubble_sort([4,3,78,2,0,2])
# =>[0,2,2,3,4,78]

def bubble_sort_by(arr)
	x = arr.length
	x.times do |y|
		for i in 1...(x)
			if yield(arr[i],arr[i-1]) > 0 
				arr[i-1], arr[i] = arr[i], arr[i-1]
			end
		end
	end
	puts arr
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
	right.length - left.length
end
#=>["hi","hey","hello"]