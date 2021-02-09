# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0

  begin
    arr.each { |number|
      if number.is_a? Integer
        sum += number
      end
    }
    return sum

  rescue => e
    puts "Enter a valid array of integers"
    puts "Following exception occurred: #{e.class}"
    return sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  
  array_length = arr.length()

  begin
    if array_length > 1
      if arr[0] > arr[1]
        first_largest = arr[0]
        second_largest = arr[1]
      else
        first_largest = arr[1]
        second_largest = arr[0]
      end

      (2...array_length).each do |i|
        if arr[i] > first_largest
          second_largest = first_largest
          first_largest = arr[i]
        elsif arr[i] > second_largest
          second_largest = arr[i]
      end

      end

      return first_largest + second_largest

    elsif array_length > 0
      return arr[0]

    else
      return 0

    end

  rescue


  end
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  temp_hash = Hash.new
  
  arr.each { |number|
    if temp_hash.has_key? n - number
      return true
    end

    temp_hash[number] = true
  }

  return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s =~ /^[[a-zA-Z]&&[^AEIOUaeiou]]/)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s =~ /^[01]*?((0)|(00))$/)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if (isbn.empty? or price <= 0)
    @isbn = isbn
    @price = price

  end
  
  def price_as_string
    return "$" + "%.2f" % @price.to_f
  end
  
end
