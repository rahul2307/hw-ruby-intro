# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  s=0
  arr.each do |x|
    s+=x
  end
  return s
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort!
  n=arr.length
  if n==0
    return 0
  elsif n==1
    return arr[0]
  else
    return arr[n-1]+arr[n-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.sort!
  len= arr.length
  l=0
  r=len-1
  if len<=1
    return false
  end
  while(l<r)
      if(arr[l]+arr[r]==n)
        return true
      elsif(arr[l]+arr[r]<n)
        l+=1
      else
        r-=1
      end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str="Hello, #{name}"
  return str
end

def starts_with_consonant? s

  if s.empty?
    return false
  end
  if(s=~/^[a-zA-Z]+$/i)
    if(s=~/^[^AIEOU]/i)
      return true
    else
      return false
    end
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if(s=~/^[01]+$/&& s.to_i%4==0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn,price)
    if(isbn.empty?||price<=0)
      raise ArgumentError
    end
    @isbn=isbn
    @price=price
  end 
  def price_as_string
    str="$%.2f"%price
    return str
  end
end
