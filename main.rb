def bubble_sort(array)

  # Count how many times did we iterate the array
  iteration = 0

  loop do
    # We make sorted true by default and in case we have any swap we will make it false
    sorted = true
    iteration += 1

    # With each loop we iterate all the array elements to check if we need to swap any, if we swap at least one element we set the sorted to false
    array.each_with_index do |element, index|
      nextElement = array[index + 1]
      
      
      # With each full iteration one more last element is already set
      # When we have n iteration, n elements from the end of the array are already set
      # We also break if the next element does not exist
      break if !nextElement && iteration > array.length - index - 1

      if element > nextElement
        sorted = false

        array[index] = nextElement
        array[index + 1] = element
      end
    end

    # If after a full iteration the sorted is still true we can break the loop
    break if sorted == true
  end

  array
end

p bubble_sort([756545, 1, 5, 2, -20, 56, 999, 34, 546, 65464])


def bubble_sort_by(array)

    iteration = 0
  
    loop do
      # we make sorted true by default and in case we have any swap we will make it false
      sorted = true
      iteration += 1
  
      array.each_with_index do |element, index|
        nextElement = array[index + 1]
        
        break if !nextElement && iteration > array.length - index - 1
  
        if yield(element, nextElement).positive?
          sorted = false
  
          array[index] = nextElement
          array[index + 1] = element
        end
      end
  
      break if sorted == true
    end
  
    array
  end


  testıng = bubble_sort_by(["hi","hello","hey", "hellog again", "h", "hm"]) { |left,right| left.length - right.length }
p testıng