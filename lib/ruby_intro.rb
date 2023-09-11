# frozen_string_literal: true

# Part 1

def sum(arr)
  return arr.sum
end

def max_2_sum(arr)
  return arr.sort.last(2).sum
end

def sum_to_n?(arr, number)
  present = {}

  arr.each do |num|
    find_num = number - num
    if present[find_num]
      return true
    end
    present[num] = true
  end

  return false
end

# Part 2

def hello(name)
  return("Hello, #{name}")
end

def starts_with_consonant?(string)
  if string[0]=~/^[a-zA-Z]$/ 
    if string[0]=~/^[aeiouAEIOU]$/
      return false
    else
      return true
    end
  else 
    return false
  end
end

def binary_multiple_of_4?(string)
  return false if string.empty?
  if string=~ /[^01]/
    return false
  else
    return string.to_i(2)%4==0  
  end

end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    
    if(isbn.empty?)
      raise ArgumentError
    else
      @isbn=isbn
    end

    if price <=0
      raise ArgumentError
    else
      @price=price
    end
  end
  
  def price_as_string()
    return "$%.2f" % @price
  end
end
