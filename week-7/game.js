
 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Defeat the Mean Guy in a food fight.
// Goals: End the game covered in less food than the Mean Guy.
// Characters: user, Mean Guy
// Objects: user, Mean Guy, each with a clean property starting at 100 and going down as they get dirtier.
// Functions: Food fighting fuction, clean function.



// Pseudocode
//Make a list of foods to throw.
//Make two objects- one for player, one for Mean Guy with a clean level of 100.
//Write a function for their fight. Players will throw a random food.
//Assign a random value between 0 and 1 to each food. If the value is above less than .25, the players health goes down 15, .5 -> 20, .75 -> 25.
//Keep throwing food until someone is completely covered.
//Print a message saying they are really dirty and their mom will be mad.


// // Initial Code

// var foods = ["mashed potatoes", "macaroni and cheese", "meatloaf", "pudding"]

// var meanGuy = {
//   name: "Mean Guy",
//   clean:100,
// }

// var user = {
//   name: "User",
//   clean:100,
// }

// console.log("All bets are off! FOOD FIGHT")
// //Randomly pick an item out of the array.

// var fight = function() {
//   var foodItem=foods[Math.floor(Math.random()*foods.length)]
//   console.log("Throw some " +foodItem + " on that Mean Guy!!!");

// //Randomly assign the food item a 'cleanliness value' and subtract that value from the players health.
//   var cleanliness = Math.random()
//     if (cleanliness >= 0.25 && cleanliness < 0.5) {
//     meanGuy.clean -=15
//     console.log("That Mean Guy is getting nice and dirty! 15 clean points down! He is now at " + meanGuy.clean + " points." )
//     }
//    else if (cleanliness >= 0.5 && cleanliness <0.75) {
//     meanGuy.clean -=20
//     console.log("That Mean Guy lost 20 clean points! He is now at " + meanGuy.clean + " points.")
//     }

//     else{
//     meanGuy.clean -=25
//     console.log("That Mean Guy is really dirty! He lost 25 clean points and now only has " + meanGuy.clean + ".")
//     }
// };

// fight();

// //Have the other player throw the food.
// var fightBack = function() {
//   var foodItem2=foods[Math.floor(Math.random()*foods.length)]
//   console.log("Mean Guy stricks back with some " +foodItem2 +  "!!!")

//   var userCleanliness = Math.random();
//     if (userCleanliness >= 0.10 && userCleanliness < 0.25)
//       {console.log("Nice dodge!!")
//     }
//     else if (userCleanliness >= 0.25 && userCleanliness < 0.5) {
//       user.clean -= 15
//       console.log("He got you! 15 clean points down and " +user.clean +" remain.")
//     }
//     else if (userCleanliness >= 0.5 && userCleanliness <0.75) {
//       user.clean-=20
//       console.log("Oh no, you lost 20 clean points! " +user.clean+ " left.")
//     }
//     else{
//       user.clean -=25
//       console.log("That Mean Guy got you good. You lost 25 clean points! Yikes! You have " +user.clean + " left.")
//     }
// };

// fightBack();

// //Compare their scores and print the winner.
// var theCleanest = function() {
//   if (user.clean > meanGuy.clean){
//     console.log("Congrats! You won the food fight and don't have to clean up the cafeteria. Mean Guy's mom is going to be so mad at him!! Hope he has fun cleaning those mashed potatoes off the walls.")
//   }

//   else {
//   console.log("You ruined your new shirt! Good luck explaining this one to Mom. Grab a mop and start chipping away at that pile of macaroni.  Yuck.")
//   }
// }

// theCleanest();


// Refactored Code

var foods = ["mashed potatoes", "macaroni and cheese", "meatloaf", "pudding", "ice cream", "corn on the cob",]

var meanGuy = {name: "Mean Guy", clean:100,}

var user = {name: "User", clean:100,}

console.log("All bets are off! It's a FOOD FIGHT")

var fight = function() {
  var foodItem=foods[Math.floor(Math.random()*foods.length)]
  console.log("Throw some " +foodItem + " on that Mean Guy!!!");

  var cleanliness = Math.random()
    if (cleanliness >= 0.25 && cleanliness < 0.5) {
    meanGuy.clean -=15
    console.log("\nThat Mean Guy is getting nice and dirty! 15 clean points down! He is now at " + meanGuy.clean + " points." )
    }
    else if (cleanliness >= 0.5 && cleanliness <0.75) {
    meanGuy.clean -=20
    console.log("\nThat Mean Guy lost 20 clean points! He is now at " + meanGuy.clean + " points.")
    }
    else{
    meanGuy.clean -=25
    console.log("\nThat Mean Guy is really dirty! He lost 25 clean points and now only has " + meanGuy.clean + ".")
    }

console.log("\nMean Guy strikes back with some " +foodItem +  "!!!")

  var userCleanliness = Math.random();
    if (userCleanliness >= 0.10 && userCleanliness < 0.25)
      {console.log("\nNice dodge!!")}
    else if (userCleanliness >= 0.25 && userCleanliness < 0.5) {
    user.clean -= 15
    console.log("\nHe got you! 15 clean points down and " +user.clean +" remain.")
    }
    else if (userCleanliness >= 0.5 && userCleanliness <0.75) {
    user.clean-=20
    console.log("\nOh no, you lost 20 clean points! " +user.clean+ " left.")
    }
    else{
    user.clean -=25
    console.log("\nThat Mean Guy got you good. You lost 25 clean points! Yikes! You have " +user.clean + " left.")}
};

//Run the game a few times.
    for (var gameCounter=0; gameCounter<4; gameCounter++) {
    fight();
    }

var theCleanest = function() {
  if (user.clean > meanGuy.clean){
    console.log("\nCongrats! You won the food fight and don't have to clean up the cafeteria. Mean Guy's mom is going to be so mad at him!! Hope he has fun cleaning those mashed potatoes off the walls.")
  }
  else if (user.clean === meanGuy.clean){
    console.log("\nGreat, now you're both dirty. Start cleaning bud.")
  }
  else {
  console.log("\nYou ruined your new shirt! Good luck explaining this one to Mom. Grab a mop and start chipping away at that pile of macaroni.  Yuck.")
  }
console.log("\nThe final score: \n You:" + user.clean +
      "\n That really mean guy:" + meanGuy.clean)};

theCleanest();





//  Reflection
// What was the most difficult part of this challenge?
// I had a hard time thinking of a game. Syntax was also difficult for me. I got stuck a couple times because I missed some curly braces, and it's very frustrating. It was also annoying to realize that you can't pick a random item out of an array as easily as you can in Ruby.

// What did you learn about creating objects and functions that interact with one another?
//I learned that to call functions you are to have parentheses at the end.
//Also you can change objects even if they weren't created in that function.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//   Earlier this week my pair told me about #floor and #math and I used those to find a random number. I know my code could be refactored to something cleaner, but I am out of time and I feel like my brain isn't working.  Please give suggestions!! I also should add options like if the food hits a teacher in the face and things like that. Overall, I really feel like my refactored solution isn't good.  But it does add a bit of code for the game to run 4 times and it makes the output look much nicer.

// How can you access and manipulate properties of objects?
// You can access properties with either dot or bracket notation, and it is the same as accessing with a hash in Ruby.
