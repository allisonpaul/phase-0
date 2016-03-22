# Virus Predictor

# I worked on this challenge [with: Aarthi].
# We spent [1.25] hour on this challenge.
#

# EXPLANATION OF require_relative
#require_relative: Direct to a file in the same directory.
#require: Loads in any file in the application


require_relative(STATE_DATA)

class VirusPredictor
#Initializing and creating instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#Calls two other methods in the class

  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private
#Compares population density to a number. Depending on the result of that comparison, the number of deaths will change.
#Floor method rounds down to the nearest integer.
#Prints a string
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density

    x = 1

    number_of_deaths = (@population * x).floor
    case @population_density

    when (150...200)
     x = 0.3
    when (100...150)
      x = 0.2
    when (50...100)
      x = 0.1
    when (0...50)
      x= 0.05
    else
      x = 0.4
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#Intializes a counter. Compares pop density to a number, determines the speed of the spread.
#Prints a statement
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0
    case @population_density
      when  (151...200)
        speed = 1

      when  (100...150)
        speed = 1.5

      when  (50...100)
        speed = 2

      when (0..50)
        speed = 2.5

      else
        speed = 0.5

    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

def report(hash)
      hash.each do |state, info|
        states= VirusPredictor.new(state, info[:population_density], info[:population])
      states.virus_effects
      end
    end
report(STATE_DATA)



=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
  -The state_data is a nested hash with strings of the state names as keys. The values of the hash are more hashes with symbols as keys and numbers as values.

What does require_relative do? How is it different from require?
  -require_relative directs code to another Ruby file in the same directory as the file you are linking from.
  -Require lets you access any file you have in the application.

What are some ways to iterate through a hash?
  -We iterated through the hash using each, targeting the info.

When refactoring virus_effects, what stood out to you about the variables, if anything?
  -We realied we didn't need parameters for the methods since we already initialized them as instance variables that could be accessed anywhere in the class.

What concept did you most solidify in this challenge?
  -I think iterating over hashes and solidified for me a little better.  We were at first trying to reach the info in the hash by calling it with [hash][state] but thanks to our guide we realized we were already targeting it when we iterated and just needed to use [info].  Going over hashes can be sort of confusing, but this challenge definitely helped.
  It was also nice to work with instance variables, and this was the first time I have seen a constant which was cool to learn about.
=end