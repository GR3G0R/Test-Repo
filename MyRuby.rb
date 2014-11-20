def sum(array)
    sum = 0
    if array.empty?
        sum
    else
        array.each {|x| sum += x}
        sum
    end
end

# Define a method max_2_sum which takes an array of integers as an argument and returns the sum of its two largest elements.
# For an empty array it should return zero. For an array with just one element, it should return that element.

def max_2_sum(array)
    if array.empty?
        0
    elsif array.count ==1
       array[0]
    else
       array.sort! {|a,b| b <=> a}
       array[0] + array[1]
    end
end

# Define a method sum_to_n? which takes an array of integers and an additional integer, n,
# as arguments and returns true if any two elements in the array of integers sum to n.
# An empty array should sum to zero by definition.

def sum_to_n?(array,n)
  if array.empty? || array.count == 1
    false
end
  if array.combination(2).detect {|a,b| a+b ==n}
      true
    end
end



MyArray = [2,3,4,5,6] #Create an array of integers

puts sum(MyArray) #Pass MyArray as parameter for sum method

puts max_2_sum(MyArray) #Pass MyArray as parameter for max_2_sum method

puts sum_to_n?(MyArray,5) #Pass MyArray as parameter for sum_to_n? method
