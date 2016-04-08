
// # Die Class 1: Numeric

// # I worked on this challenge [by myself]

// # 0. Pseudocode

// Input: number of sides of the die
//  Output: an integer (one side of the dice)
//  Steps:
//   -Get the total number of sides from the user
//   -IF the number is less than one give an error message.
//   -ELSE
//    -LOG the number of sides of the die.
//   -Roll the dice and give a random number between 1 and the number of sides the user provided.
// -LOG the result of the dice roll.

# 1. Initial Solution

var Die = function(side){
  this.side=side;
  if (this.side === 0){
      console.log("The dice needs at least one side.");
    }
    else {
      console.log("There are " + this.side + " sides on this die.")
      console.log("You rolled a " + Math.floor((Math.random() * this.side) + 1) + ".");
  }
}

Die(5)

// REFLECTION
// What concepts did you solidify in working on this challenge?
//   This challenge helped be with basic syntax differences between Ruby and JavaScript.

// What was the most difficult part of this challenge?
//   The most difficult part was the lack of built in methods.  Challenges that seem simple in ruby had an added level of difficulty when solved in JavaScript since you have to create your own methods to solve the problems.

// Did you solve the problem in a new way this time?
//   Yes, I solved all the problems in a new way.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
//   The pseudocode was different because I didn't raise an error message like I did in the Ruby challenge, I just logged an error. Mostly, the pseudocode is the same. I am a little better now than I was back then though, so it's easier to read with some key words for a smoother transition into code.


// OTHER PROBLEMS AND SOLUTIONS
// iterate through array and choose smallest number

var smallestNum = function(array) {
  smallest=array[0]
    for (var i=0; i < array.length; i++){
      if (smallest > array[i]){smallest=array[i]
    }
  }
  console.log(smallest)
}

smallestNum([2,3,5,6,3,9])

// take sentence, split into array, iterate through and choose smallest word

var sentence = function(string){
  var words=string.split(" ");
  var word=words[0];

  for (var i=0; i <words.length; i++){
    if (word.length > words[i].length){
      word=words[i]
    }
  }
  console.log(word)
}

sentence("here isa alot of weight jaskdfj")


// method that takes an array of numbers, and returns a new array with all the
// numbers doubled

var double = function(array){
 for (var i=0; i<array.length; i++){
    console.log(array[i]*2);
  }
}

double([12,20,2,3,4])



// # Numbers to Commas Solo Challenge

// # 0. Pseudocode
//Input=integer
//output= a string of numbers
// Steps
  //convert the integer into a string.
  //split the string into an array
  //reverse the array
  //insert a comma every three places
  //re-reverse the array
  //join the array back into a string


function injectComma(integer) {
  var backwardsArray = integer.toString().split('').reverse();
  var splitGroups = new Array() ;
  while (backwardsArray.length){
    var group = backwardsArray.splice(0, 3);
    group = group.reverse().join('')
    splitGroups.push(group);
  }
  splitGroups = splitGroups.reverse().join(',');
  console.log(splitGroups);
}

injectComma(9834752867)

