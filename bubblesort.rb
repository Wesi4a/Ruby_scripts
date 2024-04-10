def bubble_sort(array)
    n = array.length
    sorted = false # Initialize the flag to false
  
    # Outer loop for iterating through each element
    (0..n - 1).each do |i|
      sorted = true # Assume array is sorted at the beginning of each iteration
  
      # Inner loop for comparison and swapping
      (0..n - 2).each do |j|
        # Swap if the current element is greater than the next one
        if array[j] > array[j + 1]
          array[j], array[j + 1] = array[j + 1], array[j]
          sorted = false # If we make any swaps, it means array is not sorted yet
        end
      end
  
      # If no swaps were made in an iteration, array is sorted, so break out of loop
      break if sorted
    end
  
    # Return the sorted array
    array
  end
  
  array = [5, 10, 3, 1,34,56,878]
  
  sorted_array = bubble_sort(array)
  puts sorted_array.join(',')
  