//PERSON FIVE. REFACTOR AND TRANSLATE TO USER STORIES.

// Pseudocode

// What is the input? Set of data, one that is odd in length, one that is even in length.
// What is the output? Return the sum, mean, and median for the data sets.

// What are the steps needed to solve the problem?

// CREATE a function to calculate sum
var array = [1,9,2,3,7,4,5,6];

function sum(array){
  var returning_sum = 0;
  for (var i=0; i < array.length; i++){
    returning_sum += array[i];
  }
return returning_sum;
}

//FUNCTION SUM
// As a USER I want to input data sets, one  with an even length and one with an odd, and return the sum of the numbers in those individual data sets.

//REFACTORED
function sum(array){
 var returning_sum = 0;
 for (var i in array){
   returning_sum += array[i];
 }
return returning_sum;
}



// ADD numbers in data set together
// CREATE a function to calculate mean

function mean(array){
return (sum(array)/array.length);
}

//FUNCTION MEAN
// As a USER I want to input data sets, one with an even length and one with an odd, and return the mean of those data sets by dividing the sum by the length.




// ADD all numbers in data set and divide by amount of numbers there are in the set
// CREATE a function to calculate median
function median(array){
  var newarr = array.slice(0).sort(function(a,b) {return a-b});

if(newarr.length === 1){
  return newarr[0];
}
else if(newarr.length === 2){
  return mean(newarr);
}
else {
  var set = newarr.splice(1, newarr.length -2);
  return median(set);

}
}



//FUNCTION MEDIAN
// As a USER I want to input data sets, one  with an even length and one with an odd, and return the median of those data.





// SORT data from smallest to largest and find the middle value.
// RETURN values for sum, mean, and median for each data set.

function show_vals(array){
var sumResult = sum(array);

var meanResult = mean(array);

var medianResult = median(array);

console.log("The sum of your values is " + sumResult);
console.log("The mean of your values is " + meanResult);
console.log("The median of your values is " + medianResult);
}

show_vals(array);


//FUNCTION SHOW_VALS
// As a USER I want to go through the data sets and sort the data from the smallest to the largest. I want to return the sum, mean, and median for each data set.


