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
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
