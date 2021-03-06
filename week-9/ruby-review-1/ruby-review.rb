# OO Basics: Student

# I worked on this challenge [with: Carlos Gonzalez].
# This challenge took me [2.5] hours.

# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(args)   #Use named arguments!
    @first_name= args[:first_name]
    @scores= args[:scores]
  end

  # average method
  def average()
    sum = 0
    @scores.each do |x|
      sum += x
    end
    average = sum/@scores.length
    return average
  end

  # letter_grade method
  def letter_grade()
    average
    if average >= 90
      letter = "A"
    elsif average >= 80
      letter = "B"
    elsif average >= 70
      letter = "C"
    elsif average >= 60
      letter = "D"
    else
      letter = "F"
    end
    return letter
  end
end #ends the class


def linear_search(array,first_name)
  array.each_with_index do |student, i|
    if student.first_name == first_name
      return i
    end
  end
    return-1
end

def binary_search(array, first_name)
  students_hash = {}
  names_array = []

  array.each_with_index do |student, index|
    students_hash[student.first_name] = index
    names_array.push(student.first_name)
  end #ending the do

  names_array.sort!
  half = names_array.length/2
  p names_array

  if first_name < names_array[half]
    index = 0
    (0..half).each do |x|
    puts "first name:#{first_name}, name in array: #{names_array[index]}"
      if first_name == names_array[index]
        return students_hash[names_array[index]]
      else
        return -1
      end #ending sub if #1
        index += 1
    end # end each
  else #else from original if
    index=0
    (half..-1).each do |x|
    #puts "first name:#{first_name}, name in array: #{names_array[index]}"
      if first_name == names_array[index]
        return students_hash[names_array[index]]
      else
        return -1
      end #ending sub if #1
        index += 1
    end # end each
  end # end if
end

alex=Student.new({first_name: "Alex",
                 scores:[100,100,100,0,100]})
tom=Student.new({first_name: "Tom",
                 scores:[10,50,60,100,80]})
betty=Student.new({first_name: "Betty",
                 scores:[50,100,80,70,80]})
susan=Student.new({first_name: "Susan",
                 scores:[80,60,90,90,100]})
frank=Student.new({first_name: "Frank",
                 scores:[70,100,100,88,65]})

students=[alex, tom, betty, susan, frank]

# Code Test
# p students[0].average() #80
# p linear_search(students, "Alex")
# binary_search(students, "Alex")


# Refactored Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(args)   #Use named arguments!
    @first_name= args[:first_name]
    @scores= args[:scores]
  end

  def average()
    return @scores.inject(:+) / @scores.length
  end

  # letter_grade method
  def letter_grade()
    if average >= 90
      letter = "A"
    elsif average >= 80
      letter = "B"
    elsif average >= 70
      letter = "C"
    elsif average >= 60
      letter = "D"
    else
      letter = "F"
    end
    return letter
    end
  end #ends the class


def linear_search(array,first_name)
  array.each_with_index do |student, i|
    if student.first_name == first_name
      return i
    end
  end
    return-1
end

  def binary_search(array, first_name)
    students_hash = {}
    names_array = []

    array.each_with_index do |student, index|
      students_hash[student.first_name] = index
      names_array.push(student.first_name)
    end

    names_array.sort!
    half = names_array.length/2
    p names_array

    if first_name < names_array[half]
      index = 0
      (0..half).each do |x|

        if first_name == names_array[index]
          return students_hash[names_array[index]]
        else
          return -1
        end
        index += 1
      end
    else
      index=0
      (half..-1).each do |x|

        if first_name == names_array[index]
          return students_hash[names_array[index]]
        else
          return -1
        end
        index += 1
      end
    end
  end

alex=Student.new({first_name: "Alex",
                 scores:[100,100,100,0,100]})
tom=Student.new({first_name: "Tom",
                 scores:[10,50,60,100,80]})
betty=Student.new({first_name: "Betty",
                 scores:[50,100,80,70,80]})
susan=Student.new({first_name: "Susan",
                 scores:[80,60,90,90,100]})
frank=Student.new({first_name: "Frank",
                 scores:[70,100,100,88,65]})

students=[alex, tom, betty, susan, frank]


###REFLECTION
# What concepts did you review in this challenge?
# This challenge was a nice review of #each_with_index and just ruby in general.  The binary search was a new concept and I am still pretty confused by that.  I realize that our binary method is a total mess, but I really need to learn more about that before much refactoring can be done.

# What is still confusing to you about Ruby?
# Just some logic is confusing to me.


# What are you going to study to get more prepared for Phase 1
# I have a lot to study! I need to review reader, accessor, and writer definitely. I am also just going to work through more problems for practice.


# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

#binary search test
p binary_search(students, "Alex") ==0
