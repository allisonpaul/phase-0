// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Lisa Buch
// This challenge took me [1.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// -Go through each "voter" in "votes"
// -For each person voted for increment each persons vote number by one (count each vote)
// -If the name doesn't exist yet, create it and and add vote count to one.
// -IF the name already exists, add one.
// -For each office with the highest number, return the propery with the highest number of votes.

// __________________________________________
// Initial Solution



// for (var voter in votes){
//   var ballot = votes[voter];
//   for (var position in ballot){
//     var nominee= ballot[position];
//     if (voteCount[position].hasOwnProperty(nominee)){
//       voteCount[position][nominee] +=1;
//     }
//     else{
//       voteCount[position][nominee]=1;
//     }
//   }
// }

// // console.log(voteCount);

// for (var position in voteCount){
// var largest=0;
//   for (var person in voteCount[position]){
//     if(voteCount[position][person] >largest){
//       largest = voteCount[position][person];
//       officers[position]= person;
//     }

// }
// } console.log(officers);




// __________________________________________
// Refactored Solution
function tally(votes){
for (var voter in votes){
  var ballot = votes[voter];
  for (var position in ballot){
    var nominee= ballot[position];
    if (voteCount[position].hasOwnProperty(nominee)){
    voteCount[position][nominee] ++;
    }
    else{
       voteCount[position][nominee] = 1;
    }
  }
}
  return voteCount;
}
console.log(tally(votes));

function winner(voteCount){
for (var position in voteCount){
var largest = 0;
  for (var person in voteCount[position]){
    if(voteCount[position][person] >largest){
      largest = voteCount[position][person];
      officers[position]= person;
    }

}
} return officers
}

console.log(winner(voteCount));

// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
//   I learned that it is really easy to get confused! Taking notes on pen and paper would probably help me more.

// Were you able to find useful methods to help you with this?
//   Yes! We found the hasOwnProperty method which was perfect. It returns a boolean indicating whether the object has the specified property that you are looking for.

// What concepts were solidified in the process of working through this challenge?
//   I feel a lot more comfortable working through nested arrays and adding properties to objects after this challenge.




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
