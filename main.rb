def bubble_sort(array)

  # loop the array and check the current element if is bigger then the next element, in case is bigger we swap them
  iteration = 0

  loop do
    # we make sorted true by default and in case we have any swap we will make it false
    sorted = true
    iteration += 1

    array.each_with_index do |element, index|
      nextElement = array[index + 1]
      
      break if !nextElement && iteration > array.length - index - 1

      if element > nextElement
        sorted = false

        array[index] = nextElement
        array[index + 1] = element
      end
    end

    # when we loop the array we need to know if anything was swaped, in order to do this we will initialize a variable outside of the loop and if there is any swap then we change the variable

    # after we loop all the array, if we had any swaps during the loop then we should start looping again because we don`t know if the array is sorted
    
    # if the sorted remains true after a iteration of the array then the array is sorted and we can break the loop

    break if sorted == true
  end

  array
end

p bubble_sort([756545, 1, 5, 2, -20, 56, 999, 34, 546, 65464])
