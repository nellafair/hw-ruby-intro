# When done, submit this entire file to the autograder.
# run 'rspec /spec' for all tests

# Part 1

def sum arr 
  arr.sum
end

def max_2_sum arr 
  # Error Checking: Is Array Empty?
  if arr.count == 0 
    return 0
  else
    # Sorts by Value, and Sums Largest 2 Values
    arr.max(2).reduce(:+)
  end
end

def sum_to_n? arr, n
  # Error Checking: Is Array Empty or Have Only 1 Element?
  if arr.empty? || arr.count == 1
    return false
  end 
  
  # Place all *2 Combinations into Test Array
  testArray = arr.combination(2).to_a

  # (Hopefully) Place all Matched Combinations into Final Array
  finalArray = testArray.select {|test| (test[0] + test[1]) == n}
  if finalArray.empty?
    return false
  else
    return true
  end
end

# Part 2
def hello(name) 
  return String.new("Hello, #{name}")
end

def starts_with_consonant? s 
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s 
  # Null-Check: Does the string
  if s.empty? 
    return false
  end

  # Pattern Match: Does the input string begin with a '1' or '0'?
  if (s =~ /^[01]/) == nil
    return false
  end 
  
  # Is binary representation of String divisible by 4? (mod)
  return s.to_i(base=10) %4 == 0 ? true : false

end
  
# Part 3
class BookInStock
  def initialize(isbn, price)
    
    # Error Checking: Below Zero price or No ISBN?
    if price <= 0 || isbn.empty?
      raise ArgumentError
    end
    
    # Set Variables to Input Parameters
    @isbn = isbn
    @price = price
  end
  
  # Getters/Setters
  attr_accessor :isbn
  attr_accessor :price
  
  # Return Price as String
  def price_as_string
    return String.new("$%.2f" % price)
  end
end
