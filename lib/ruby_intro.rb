# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return 0 if arr.nil? or arr.empty?
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.nil? or arr.empty?
  arr.max(2).inject(0,:+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.nil? or arr.empty?
  arr.combination(2).any? {|i,j| i + j == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  name = "" if name.nil?
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.nil? or s.empty? or !s[0].match(/[a-z]/i)
  s.match(/^[^aeiou].*$/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.nil? or s.empty? or !s.match(/^[+-]?[0-9]+$/)
  s.split(//).last(2).join.to_i % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.nil? or isbn.empty? or price <= 0.0
  	@isbn = isbn
  	@price = price
  end
  
  def isbn=(isbn) # Setter for ISBN
    raise ArgumentError if isbn.nil? or isbn.empty?
    @isbn = isbn
  end

  def price=(price) # Setter for price
    raise ArgumentError if price <= 0.0
    @price=price
  end

  def isbn # Getter for ISBN
    @isbn
  end
  
  def price # Getter for price
    @price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end
