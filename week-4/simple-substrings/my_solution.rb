# Simple Substrings

# I worked on this challenge [by myself].


# Your Solution Below
#intial solution using a case method.

def welcome(street, city, state)
  case state

   when "California"
    return "Welcome to California!"
    when "CA"
    return "Welcome to California!"
    else
    return "You should move to California"
    end
  end

  welcome("1833 Sawyer", "Chicago", "California")





=begin
refactored solution using split method

def welcome(address)
  state= address.split

for word in state
  if word == "CA" || word== "California"
    return "Welcome to California"
  end
end
 return "You should move to California"
end

=end