# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # Finding the sum of array : Checking if the given array is integer and if true, then the sum is calculated. Catches the exception if it is false and sends zero sum
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
  # Calculates the sum of the first two largest elements in the array. This is done by assuming the first two elements as the first and second largest. And then, traversing the array to find the largest elements.
  
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
  # Checking if the sum of any two elements in the array "arr" is equal to n. This is done by making use of a hash function to reduce the complexity to O(n). 
  # While traversing the array, the value of n - arr[i] is checked in the hash function. If it is not present, the existing value, which is arr[i] is added to the hash function
  
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
  # This is done using intrapolation
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # The first part of the regex ensures only alphabets are present and the second part removes the vowels, thus leaving behind consonants
  if (s =~ /^[[a-zA-Z]&&[^AEIOUaeiou]]/)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # The code checks last 4 digits of the binary number. The last 3 binary digits should be 100 or 000. It should also make sure it will handle 1 or 2 binary length as well
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
