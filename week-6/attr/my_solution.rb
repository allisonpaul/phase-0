
#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# Pseudocode

# Input: a name
# Output: A greeting with my name.
# Steps:
#  Create a class
#  Initialize and set a name variable
#  Create another class
#  create an instance of the class
#  Greet the user (me!)


class NameData
  attr_reader :name
  def initialize
    @name = "Allison"
  end
end


class Greetings
  def initialize
     @namedata = NameData.new
   end

  def greet
    puts "Hello #{@namedata.name}! How wonderful to see you today! "
  end
end


# Reflection
=begin

RELEASE ONE
What are these methods doing?
  initialize- assigning values to name, age, and occupation.
  print_info- puts the instance values to the screen
  what_is_age- displays the age
  change_my_age- changes the age when the method is called
  what_is_name- displays the name
  change_my_name - changes the name when the method is called
  what_is_occupation: displays the occupation
  change_my_occipation: changes occupation when called.
There is also sleep which is putting in pauses (and is really cool!)

  All the change_my_(blanks) are attr_writer and all the what_is_(blank) can be attr_reader.

How are they modifying or returning the value of instance variables?
  They are modifying by giving new values. It does this implicitly by returning the last line of code executed inside of the method.



RELEASE TWO
What changed between the last release and this release?
  The what_is_age method has been changed and is now in attr:reader

What was replaced?
  the what_is_age method was replaced.

Is this code simpler than the last?
  This code i simplier and less repetition.

RELEASE THREE
  What changed between the last release and this release?
    An attn:writer has been created containing age.

What was replaced?
  The change_my_age method was replaced.

Is this code simpler than the last?
  Yes, this code is simplier. Once again we are taking out repetitive lines.

 RELEASE FOUR
  refactored code
  class Profile
  attr_accessor :age, :name, :occupation

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info

    puts "\nage: #{@age}"
    puts "\nname: #{@name}"
    puts "\noccupation: #{@occupation}"
    end
end

RELEASE 6
What is a reader method?
  A reader (or getter in other languages) method allows you to read the value of an instance variable outside of its class but not change it.

What is a writer method?
  A writer (or setter in other languages) method allows you to change the value of the variable outside of its class.

What do the attr methods do for you?
  They are a more convenient/ less wordy way of writing the methods they are shorthand for. They also provide a better performance 'under the hood'.


Should you always use an accessor to cover your bases? Why or why not?
  No you shouldn't because you don't want all of your instance variables to be changable.

What is confusing to you about these methods?
  I am still a little confused about always defining an initialize method.  I know to do it, so I always do but I'm not 100 percent on why.
  I also need to always remember my @ signs before variables.  I forgot the one in my greeting and it threw me off for a few minutes. Must pay attention to detail!

=end