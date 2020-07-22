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

