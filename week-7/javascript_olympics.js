 // JavaScript Olympics

// I paired [with: Esther Leytush] on this challenge.

// This challenge took me [.5] hours.


// Warm Up
//input: array
//output: string saying athlete won the event
//
//
//
//

// Bulk Up

var athletes = [["Michael Jordan", "win", "basketball"],
                ["Cheese", "win", "mealtime"] ]

function  winCondition(athleteArray){
  for (var i=0; i < athleteArray.length; i++){
    console.log(athleteArray[i][0]+ " " + athleteArray[i][1] + "s " + athleteArray[i][2] + "!")
  };
}


winCondition(athletes)

// Jumble your words
function reverseString(string){
  console.log(string.split('').reverse().join(''));
};

reverseString("Hello how are you")


// 2,4,6,8

function evenNumbers(array){
  var evenArray= [];
  for (var i=0; i < array.length; i++){
    if (array[i] % 2 === 0){
      evenArray.push(array[i]);
    };
  };
  console.log(evenArray);
};

evenNumbers([0,4,5,6,2,8,9])

// "We built this city"

function Athlete(aName, aAge, aSport, aQuote){
  this.name = aName;
  this.age = aAge;
  this.sport= aSport;
  this.quote= aQuote;
}



//Driver test code:
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

//What JavaScript knowledge did you solidify in this challenge?
  // I learned a lot about constructor functions on this challenge, I wasn't really familiar with them prior.  I also think it helped to solidify just working in javascript in general.

//What are constructor functions?
// Constructor functions contruct an object with given values.

//How are constructors different from Ruby classes (in your research)?
// A constructor doesn't belong to a class but is used to create any object.