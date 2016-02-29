 What does puts do?


  Puts returns nil and prints the output to the console with a new line.
  Puts basically writes on the screen whatever you tell it to.

What is an integer? What is a float?


Numbers without decimal points are integers and numbers with decimal points are floats.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?


If you divide floats you will get a precise answer (another float).  If you divide with integers, you will get an integer output.  It's good to use integer division when you need a result with a whole number. Heres an example


```
puts 12/5
```


```
puts 12.0 / 5.0
```


The top integer example will return an answer of 2.
The bottom float example will return an answer of 2.4


<b>Programs for 2.5</b>


How many hours in a year?


```
puts 24 * 365
```


How many minutes in a year?


```
puts (60 * 24) * 365 * 10
```


How many seconds old are you? (I rounded and just did 25 years!)

```
puts (((60 * 60) * 24) * 365 ) * 25
```


How many seconds old is the author?


```
puts ((((1160000000/ 365 ) /24 ) /60) /60)
```


<b>Reflection</b>


<b>How does Ruby handle addition, subtraction, multiplication, and division of numbers?</b>


If you provide integers, ruby will give you the answer you expect.  However, if you provide floating numbers (numbers with decimal points) Ruby will always give you the lowest integer.

```
+
``` is addition
```
-
``` is subtraction
```
*
``` is addition
```
/
``` is division.


<b>What is the difference between integers and floats?</b>


Integers are what we know as whole numbers. 2, 12, -9845, 8, are all examples of integers.  Floats are any numbers with a decimal point. 1.2, .0998, 60.5, are all examples of floats.


<b>What is the difference between integer and float division?</b>

With integer division you will get an integer answer, even if it may not be the most accurate answer. For example,

```
puts 12/5
```
will return 2.

As we know, that is not the most accurate answer. If we change the integer to floats we will see a different return value.


```
puts 12.0 / 5.0
```
will return 2.4


<b>What are strings? Why and when would you use them?</b>

Strings are groups of letters.  You define a string by putting it inside single quotes.


```
my_string = 'This is a string.
```

You use strings if you want to display text. I'm sure there are more uses for strings, but this is what I know of them so far.


<b>What are local variables? Why and when would you use them?</b>


Local variables are made to hold data. They start with a lowercase letter, number, or an underscore.

In the above example I made this bit of code,

```
my_string = 'This is a string.'
```

Here, my_string is the variable and it holds the data 'This is a string.' So from now on I could just type my_string and it would automatically know I was referring to that string.  This variable might not be incredibly useful since it just holds a string, but variables can hold any data to be used in any program.


<b>How was this challenge? Did you get a good review of some of the basics?</b>


This challenge was fun! I remembered a good bit of the information from previous Ruby tutorials I did when prepping for the DBC interview.  I haven't paid much mind to Ruby since then, so it was really nice to dip my toe in the Ruby waters again. I'm excited to learn more, though a little intimidated.  I was also reminded of how long it has been since I have done math! Yikes!





Here are direct links to my sub challenges.
[4.2.1](https://raw.githubusercontent.com/allisonpaul/phase-0/master/week-4/defining-variables.rb)
[4.2.2](https://raw.githubusercontent.com/allisonpaul/phase-0/master/week-4/simple-string.rb)
[4.2.3](https://raw.githubusercontent.com/allisonpaul/phase-0/master/week-4/basic-math.rb)
