# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  return 0 if arr.empty?
  b = arr.reduce(:+) unless arr.empty?
  return b
end

def max_2_sum arr
  if arr.empty?
    return 0
  elseif arr.length = 1
    return arr[0]
  else
    z = arr.max(2).inject { | x, y| x + y }
    return z
  end
end

def sum_to_n? arr, n
  c = arr.count
  x = 0 ; y = 1 ; z = "false"
  if arr.empty? || c == 1
    z = "true" if arr.empty? and n == 0
  else
    while y < c and (x + 1) < c
      m = arr[x] + arr[y]
      if m == n
        z = "true"; y = c + 1; x = c + 1
      end
      y += 1 if y < c
      x += 1 if y == c
      y = x + 1 if y == c
    end
  end
  return z
end

# Part 2

def hello(name)
  a = "Hello " << name
  return a
end

def starts_with_consonant? s
  if s =~ /^[bcdfghj-np-tv-z}]/i
      return true
  else
      return false
  end
end

def binary_multiple_of_4? s
  if s =~ /[^a-zA-Z2-9_]1?0?0$/
      return true
  else
      return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn.to_s
    @price = price.to_f
  end
  attr_accessor :isbn
  attr_accessor :price
  def price_as_string
    if @isbn.empty? || @price <= 0
      puts "error" #raise_error(ArgumentError)
    else
      return sprintf("$%#.2f", "#{@price}")
    end
  end
end