#Try it Out

puts "Hi! What's your first name?"
first_name=gets.chomp
puts "Can I get your middle name?"
middle_name= gets.chomp
puts "And your last name?"
last_name=gets.chomp
puts "Nice to meet you, #{first_name} #{middle_name} #{last_name}."



puts "Whats your very favorite number?"
num= gets.chomp.to_i
puts "But #{num+1} is bigger and better! Could that be a new favorite?"



=begin
How do you define a local variable?
  You define a local variable with a lowercase letter, number or underscore.  You then use an equal sign to define the variable. For example,
  my_string= "here is a string."
  my_string is a local variable.


How do you define a method?
  You define a method by using def following by the parameters of the method in parathenses. You then have to hit end.
    def method (x,y)
     end

What is the difference between a local variable and a method?
    A local variable holds data.  A method is a set of expressions that returns a value.  Ruby has a lot of built-in methods -length, reverse, capitalize are just a few examples. You also have the option of creating your own method.  There are no defined local variables until you initialize them.

How do you run a ruby program from the command line?
    I have been running a ruby program by typing ruby and the file name.  You can also run a ruby by using IRB.This is useful when running commands individually.

How do you run an RSpec file from the command line?
    You run rspec files by typing rspec and the name of the file.

What was confusing about this material? What made sense?
    What really drove me crazy on this is the 4.3.2 rspec check.  I could not for the life of me get it to work, I kept getting crazy syntax errors when checking my code even though I know there were no errors in my code.  Turns out I forgot to copy over the final 'end' on the rspec file.  Major duh moment.   I still could get the rspec to work propery though and I have no idea why! My code works perfectly and I don't see what I am missing.  Please someone enlighten me!

    What made sense in this challenge are defining methods.  Of course these are simple methods, so we will see how long this actually makes sense.
    I like learning Ruby so far but I find it incredibly intimidating and am going to have to work really hard this week. I always want to resort to googling right away, but I need to really think things through and take my time.
=end


[Here is 4.3.1](https://github.com/allisonpaul/phase-0/blob/master/week-4/address/my_solution.rb)
[Here is 4.3.2](https://github.com/allisonpaul/phase-0/blob/master/week-4/math/my_solution.rb)
