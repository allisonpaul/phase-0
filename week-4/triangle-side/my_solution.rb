
# I worked on this challenge [with: Christyn Budzyna ].


# Your Solution Below

def valid_triangle?(a, b, c)
    if (a > 0 && b >0 && c >0) && ((a + b>= c) && (a + c >= b) && (c+b >= a))
      return true
    else
      return false
  end
end

valid_triangle?(2,-4,3)