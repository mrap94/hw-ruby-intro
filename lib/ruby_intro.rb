# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  numSum = 0
  arr.each {|i| numSum+=i}
  return numSum
end

def max_2_sum arr
  # YOUR CODE HERE
  #We can simply sort the array and iterate backwards
  numSum = 0
  if (arr.size == 0)
    return numSum
  end
  if(arr.size == 1)
    return arr.at(0)
  end
  maxFirst = arr.sort[-1];
  maxSecond = arr.sort[-2];
  numSum = maxFirst + maxSecond
  return numSum

end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
