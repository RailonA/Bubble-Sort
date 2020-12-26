
# build a method that takes an array as its argument
def bubble_sort(array)
# make a veriable that is equal to the length of the array
  array_length = array.length
  # check if the array is longer then one, if not it returns the array 
    if array.length <= 1
      array
    #if its bigger then one, we make a loop 
    else loop do
      #make a variable that we can check to exit the loop
      swapped = false
      # make a loop thats the length of the array - 1 (.times do ||)
      (array_length - 1).times do |i|
        #make an if statement that checks both values [i] and [i+1]
        # and swap if value [i]>[i+1]
        # convert swapped to true 
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          swapped = true
        end
    end
    # end the loop by a break unless swapped statement
      break unless swapped  
      end
  end
  # prints the array back to the screen
  print array
end



def  bubble_sort_by(array)
    array_length = array.length
      if array.length <= 1
        array
      else loop do
        swapped = false
        (array_length - 1).times do |i|
          if yield(array[i], array[i+1]).positive?
            array[i], array[i+1] = array[i+1], array[i]
            swapped = true
          end
      end
        break unless swapped  
        end
    end
    print array
  end
  




array = ['hi', 'hello', 'hey']
array_list = [4,3,7,1,40,60,100]

 puts bubble_sort(array_list)
 
  bubble_sort_by(array) do |left, right|
  left.length - right.length
end