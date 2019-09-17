# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  arr.each do |x|
    total = total + x
  end
  return total
end

def max_2_sum arr
  # YOUR CODE HERE
  total = arr.sort.last(2).sum
  return total
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.permutation(2).any? { |x, y| x + y == n }
  #return total
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  hello_message = "Hello, "
  total_message = hello_message + name
  return total_message
end

def starts_with_consonant? s
  # YOUR CODE HERE
  consonants = /^[^aeiou\d\W_]/i
  if consonants.match(s)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
	if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
		return true
	else
		return false
	end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end
end

