#practice building recursive methods 

# Palindrome using recusrion 

def palindrome(str)
  if str.length == 1
    true
  elsif str[0] == str[str.length-1]
    str[0] = ''
    str[str.length-1] = ''
    palindrome(str)
  else
    false
  end
end

# Bottlees of beer on the wall?

def bottles(n)
  if n == 0 
   puts 'no more bottles of beer on the wall'
  else
    puts "#{n} bottles of beer on the wall "
    bottles(n-1)
  end
end

def fib(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fib(n-2) + fib(n-1)
  end
end

# flattens an array
def flatten(arr, flat = [])
  arr.each do |a|
    if a.is_a?(Array)
      flatten(a,flat)
    else
      flat.push(a)
    end
  end
  flat
end

p flatten([[1,2],[3,4]])

# flatten([[1,2],[3,4]]) => [1,2,3,4]
# flatten([[1,[8,9]],[3,4]]) => [1,8,9,3,4]


