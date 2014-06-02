var dice = 5;
var highest = 6;

var desiredSum = 15;
var using = 3;

var sums = [];

var sum = function (partialSum, rolledDice, history) {
  if (partialSum >= desiredSum || rolledDice >= using) {
    if (partialSum === max && rolledDice === using) {
      sums.push(history);
    }
    return;
  } else {
    for (var i = 1; i <= highest; i++) {
      sum(partialSum + i, rolledDice++, history.concat([i]));
    }
  }
};

sum(0, 0, []);
console.log(sums);