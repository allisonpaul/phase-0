# Leap Years

# I worked on this challenge [with:Christyn Budzyna ].


# Your Solution Below
def leap_year? (year)
  if year % 4 == 0 && year % 400 == 0
    return true
  elsif year % 4 ==0 && year % 100 !=0
    return true
  else
    return false
  end
end

leap_year?(2016)