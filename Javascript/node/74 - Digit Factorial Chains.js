var input = Number(process.argv[2]);

// Factorials.
var f = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880];

var cached = [];

var factorialDigitSum = function(n) {
  var digits = String(n).split('');
  return digits.reduce(function(sum, n) {
    return sum + f[Number(n)];
  }, 0);
};

var findCycleLength = function(input) {
  var steps = 0;
  var seen = [];
  var n = input;
  do {
    seen[n] = true;
    if (cached[n]) {
      steps += cached[n]
      break;
    } else {
      steps++;
      n = factorialDigitSum(n);
    }
  } while (!seen[n])
  cached[input] = steps;
  return steps;
};

var sixtycount = 0;

for (var i = 999999; i--;) {
  if (findCycleLength(i) === 60) {
    sixtycount++;
  }
}

console.log(sixtycount);





