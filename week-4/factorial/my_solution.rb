# Factorial

# I worked on this challenge [with Leland Meiner: ].

# Define a method
# if number == 0
  # return 1
# Takes integer input
# (Number -1) * number
# i= number-1
# n=n*i
# returns n

# Your Solution Below

def factorial(number)
  if number == 0 || number==1
    return 1
  end

  i = (number - 1)
  n = number * i
  while i > 1
    i= i-1
    n = n * i
  end
  return n
end
factorial(20)



=begin
 Here is some code to simplify.

def fact(n)
 if n == 0 || n==1
    1
  else
   n * fact(n-1)
  end
end

=end