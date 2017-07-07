# Build a method #bubble_sort that takes an array and returns a 
# sorted array. It must use the bubble sort methodology (using 
# #sort would be pretty pointless, wouldn't it?).

# Our bubble_sort uses a flag variable called 'swapped' to keep
# track of when we can stop iterating. If 'swapped' remains false
# after an iteration through our loop, we know we're done sorting.

# We also know that we're only going to need 1 iteration less than
# the array's length to fully sort it, so we can use the .times 
# iterator. 

def bubble_sort(arr)
  x = arr.length - 1
  loop do
    swapped = false
    (x).times do |i|
      if arr[i] > arr [i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    break if not swapped
  end
  arr
end



# Now create a similar method called #bubble_sort_by which sorts 
# an array but accepts a block. The block should take two arguments 
# which represent the two elements currently being compared.
# Use this to sort your array.

# This method is almost the exact same as the previous one, but we
# yield to a block that compares our two inputs using the spaceship
# operator. 

def bubble_sort_by(arr)
  x = arr.length - 1
  loop do
    swapped = false
    (x).times do |i|
      if yield(arr[i], arr [i+1]) > 0
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end
    break if not swapped
  end
  arr
end
  
bubble_sort([22, 15, 8, 4, 12])
bubble_sort_by([22, 15, 8, 4, 12]) {|left, right| left <=> right}