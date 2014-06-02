var highestDie = 6;
var desiredSum = 15;
var totalDice = 5;
var using = 3;
var notUsing = totalDice - using;

var setup = [];
for (var i = 1; i <= highestDie; i++) {
  setup[i] = 0;
}

// First we find all combinations of dice that sum to the correct total using the given number of dice.
var combos = [];
var findCombos = function ( desired, diceLeft, values, current) {
  
  // Desired: the total sum we want.
  // Values: an array where values[i] is the number of i's
  // Max: The current highest die we're going t

  // Copy the old values array.
  var newValues = values.slice();

  // Test if we can't insert any more dice, or wouldn't be able to make the total.
  if ((desired > 0) && (current * diceLeft >= desired) && (current > 0)) {
    
    // Add as many of the current die as we can.
    var sum = 0; // We've added 0 in value so far.
    while (sum + current <= desired) { // As long as we can keep adding.
      sum += current; // Sum increases by the current die.
      newValues[current]++; // We've added one more of the current die.
      diceLeft--; // And have one fewer die left.
    }

    // If we've made the desired sum with the right number of dice, record the combo.
    if (sum === desired && diceLeft === 0) combos.push(newValues.slice());

    // Otherwise, recurse on all the smaller dice with every possible value of current.
    while (sum >= 0) {
      findCombos( desired - sum, diceLeft, newValues, current - 1 ) ;
      newValues[current]--;
      sum -= current;
      diceLeft++;
    }
  }
};

findCombos(desiredSum, using, setup, highestDie);
console.log(combos);

var f = function (n) {
  if (n < 2) return 1;
  return n * f(n-1);
};

// Returns the number of ways to fill n spaces, with the number of values provided,
// given that the highest value must occur at least the needed number of times.
var atLeastN = function(n, values, needed) {
  var result = Math.pow(values, n);
  for (var i = 0; i < needed; i++) {
    result -= Math.pow(values-1, n-i)*f(n)/f(i)/f(n-i);
  }
  return result;
};

var count = 0;

for (var i = 0; i < combos.length; i++) {
  var combo = combos[i];
  var min = 0;
  while (!combo[++min]);
  
  var result = f(totalDice)/f(notUsing + combo[min]);

  var current = min;
  while (++current <= highestDie) {
    result /= f(combo[current]);
  }

  result *= atLeastN(notUsing + combo[min], min, combo[min]);

  count += result;
}

console.log(count);


