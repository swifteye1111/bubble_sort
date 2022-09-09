# Method: #bubble_sort
# Argument: array to be sorted
# Returns: sorted array

def bubble_sort (arr)
  flag = false
  l = arr.length
  
  loop do
    i = 0
    while i < l do
      
      if arr[i + 1] && arr[i] > arr[i + 1]
        arr.insert(i,arr[i + 1])
        arr.delete_at(i + 2)
        flag = true
      end

      i += 1
    end

    break if flag == false
    flag = false
  end
  
  return arr
end

p bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]