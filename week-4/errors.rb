# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase="Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
while true
 puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.
# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#Line 16.
# 3. What is the type of error message?
#syntax error.
# 4. What additional information does the interpreter provide about this type of error?
#The interpreter says it is expecting another 'end'.
# 5. Where is the error in the code?
  #At the end of the code.
# 6. Why did the interpreter give you this error?
#The interpreter gave this error because the method needed another end. One to end the method and one to end the while.

# --- error -------------------------------------------------------

south_park="tv show"

# 1. What is the line number where the error occurs?
#line 35
# 2. What is the type of error message?
# This is a name error.
# 3. What additional information does the interpreter provide about this type of error?
#Undefined local method or variable.
# 4. Where is the error in the code?
# The error is in line 35.
# 5. Why did the interpreter give you this error?
#south_park has not been defined as anything- it is just floating in the code and ruby doesn't know what to do with it.  I'll define it for now just to fix the error.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
#Line 50
# 2. What is the type of error message?
#This is a NoMethodError.
# 3. What additional information does the interpreter provide about this type of error?
# There is an undefined method 'cartman'.
# 4. Where is the error in the code?
# The error is before cartman. We need to define the method with def.
# 5. Why did the interpreter give you this error?
#The interpreter gave this because it can tell we are trying to define a method but we haven't used the code to complete that step. I fixed this with 'def' and 'end'

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end


# 1. What is the line number where the error occurs?
#Line 66
# 2. What is the type of error message?
#This is an ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says we have the wrong number of arguments.
# 4. Where is the error in the code?
#The error is we are giving the method an argument but we haven't defined any arguments that method needs to work.
# 5. Why did the interpreter give you this error?
#We are trying to call an argument even though it doesn't accept any arguments.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("You suck Kyle.")

# 1. What is the line number where the error occurs?
#Line 88
# 2. What is the type of error message?
#This is an ArgumentError again.
# 3. What additional information does the interpreter provide about this type of error?
# We have the wrong number of arguments.
# 4. Where is the error in the code?
# The error is in line 88 after cartman_says.
# 5. Why did the interpreter give you this error?
#We are getting this error because we are trying to call the method without an argument. I fixed this by plugging in something for offensive_message.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'doofus')

# 1. What is the line number where the error occurs?
# Line 109
# 2. What is the type of error message?
 # Here we have another arugument error.
# 3. What additional information does the interpreter provide about this type of error?
# We have the wrong number of arguments. We have 1 argument for 2 defined.
# 4. Where is the error in the code?
# The error is when we are calling the method in line 109.
# 5. Why did the interpreter give you this error?
#We got this error because we have set two arguments for the method but are only calling with one.  I fixed this by adding in 'doofus'. (yes, doofus.)

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# Line 124
# 2. What is the type of error message?
# This is a TypeError.
# 3. What additional information does the interpreter provide about this type of error?
#The string cannot be coerced into a Fixnum and the error is with the *.
# 4. Where is the error in the code?
# The error is with the asterisk.
# 5. Why did the interpreter give you this error?
# Because you cannot multiple an integer by a string. I fixed this by switching their positions.
# --- error -------------------------------------------------------

amount_of_kfc_left = 20/5

# 1. What is the line number where the error occurs?
#Line 138
# 2. What is the type of error message?
#ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#You cannot divide by zero.
# 4. Where is the error in the code?
# The error is trying to divide by zero.
# 5. Why did the interpreter give you this error?
# We got this error because everybody knows you absolutely can't divide by zero! I fixed these by changing the 0 to a five.  Much better.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#Line 153.
# 2. What is the type of error message?
#LoadError.
# 3. What additional information does the interpreter provide about this type of error?
#Cannot load such file.
# 4. Where is the error in the code?
#The error is in require_relative.
# 5. Why did the interpreter give you this error?
# I don't have this file to open.


# --- REFLECTION -------------------------------------------------------

=begin

Which error was the most difficult to read?
  I did not see the 5 before the * in line 124 for the LONGEST TIME. I was googling everything under the sun about splat operators and then I finally saw the 5 and it clicked immidately.  Major DUH moment there.
  Aside from that, at first the ArgumentError was the hardest one for me to read and that was in its first occurance. I haven't seen a method without any arguments defined, I was like uh what is this garbage.
How did you figure out what the issue with the error was?
  I figured it out by just thinking it through for a second. They were trying to call on a method with an argument when there was no argument. So I just took out that bit of code completely.  You can't call an argument if one hasn't been defined.
Were you able to determine why each error message happened based on the code?
  I was able to figure out each error.
When you encounter errors in your future code, what process will you follow to help you debug?
  I will follow a similar process as I did today.  When I encountered a new error message for the first time I googled it to get a little background info. Then I went back to the code and tried to apply my existing Ruby knowledge.
  I loved this challenge and want to do more!
    I can only imagine how useful it will prove to be able to interpret Ruby errors instead of just getting so upset over them.

    Oh by the way- I did a little editing after I had found all of the errors.  I tried to go back and fix all of the line numbers but if I missed some it's just be cause I added or deleted text after finding the error in the command line.
=end