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

# flatten([[1,2],[3,4]]) => [1,2,3,4]
# flatten([[1,[8,9]],[3,4]]) => [1,8,9,3,4]

# Converts a number to a roman numeral
def roman(num, comp = '')
  roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}
 
  if num == 0
    p comp 
  else
    roman_mapping.each_key do |key|
      result = num - key 
      if result >= 0 
        comp += roman_mapping[key]
        roman(result, comp)
        break
      end
    end
  end
end

# fibonacci sequence without recursion 
def fibs(num)
  fib = []
  0.upto(num-1) do |i|
    if i == 0
      fib.push(0)
    elsif i == 1
      fib.push(1)
    else
      fib.push(fib[i-2]+fib[i-1])
    end
  end
  fib_to_s = fib.join(", ")
  fib_to_s
end

# fibonacci sequence with recursion
def fibs_rec(num, fib = [0,1])
  if num == 1
    0
  elsif num == fib.length
    fib
  else
    result = fib[fib.length - 2] + fib[fib.length - 1]
    fib.push(result)
    fibs_rec(num, fib)
  end
end




def merge (arr1,arr2,arr)
  arr1_counter = 0
  arr2_counter = 0
  arr_counter = 0

  while arr1_counter < (arr1.length) && arr2_counter < (arr2.length) do
    if arr1[arr1_counter] < arr2[arr2_counter]
      arr[arr_counter] = arr1[arr1_counter]
      arr1_counter += 1
    else
      arr[arr_counter]= arr2[arr2_counter]
      arr2_counter += 1
    end
    arr_counter += 1
  end

  if arr1_counter == arr1.length
    while arr2_counter < arr2.length do
      arr[arr_counter] = arr2[arr2_counter]
      arr2_counter += 1
      arr_counter += 1
    end
  else
    while arr1_counter < arr1.length do
      arr[arr_counter] = arr1[arr1_counter]
      arr1_counter += 1
      arr_counter += 1
    end
  end
  arr
end

# Merge sort

def merge_sort(arr)
# Splits the array into halves 

  if arr.length > 1
    if arr.length.even?
      arr1 = arr[0..((arr.length-1)/2)]
      arr2 = arr[(arr.length/2)..(arr.length)]
    else
      arr1 = arr[0..((arr.length-2)/2)]
      arr2 = arr[(arr.length/2)..(arr.length)]
    end
    merge_sort(arr1)
    merge_sort(arr2)
    merge(arr1,arr2,arr)
  else
    arr
  end
end

# p merge_sort([7,4,3,6,1]) => [1,3,4,6,7]
