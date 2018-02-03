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
  !!arr.find{|e| arr.include?(n-e)}
  return false
end
# Part 2

def hello(name)
  # YOUR CODE HERE
  value = "Hello, "
  return value << name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.to_s.empty?
    return false
  end
  if s.start_with?(s[/[a-zA-Z]+/]) #Makes sure it starts with a string
    unless s.start_with?('a','e','i','o','u','A','E','I','O','U') then
      return true
    end
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    if s.to_s.empty?
      return false
    end
    if s.scan(/\D/).empty? #scans to make sure it's all digits
      lastTwo = s[-2..-1]
      num = lastTwo.to_i
      if num == 00
        return true
      end
    end
    return false
end

# Part 3
class BookInStock
# YOUR CODE HERE
  def initialize(isbn = "",price = 0.0)
    if isbn.to_s.empty?
      raise ArgumentError.new("The isbn is Empty")
    elsif price <= 0
      raise ArgumentError.new("Price is invalid")
    else
      @isbn = isbn
      @price = price
    end
  end
  def isbn
    if isbn.to_s.empty?
      raise ArgumentError.new("The isbn is Empty")
    else
      @isbn
    end
  end
  def isbn=(isbn)
    if isbn.to_s.empty?
      raise ArgumentError.new("Price is invalid")
    else
      @isbn = isbn
    end
  end
  def price
    @price
  end
  def price=(price)
    @price = price
  end
  def price_as_string
    #valToTwo = number_with_precision(price,precision: 2)
    stringVal = sprintf('%.2f', price)
    stringFinalVal = "$" << stringVal
    return stringFinalVal
  end

end
