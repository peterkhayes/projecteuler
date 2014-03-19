var input = Number(process.argv[2]);

var cache = [1, 1, 2, 3];

// Uses Euler's recurrance function for partitions, which is much faster than my attempt :-D
var calcPartitions = function(n) {
  if (n < 0) return 0;
  if (cache[n]) return cache[n]
  var total = 0;
  for (var k = 1; k <= n; k++) {
    var multiplier = (k % 2 ? 1 : -1);
    var x = n - k*(3*k - 1)/2
    var y = x - k
    total += multiplier * ( calcPartitions(x) + calcPartitions(y) );
  }
  total = total % 1000000
  cache[n] = total;
  return total;
}

// var calcPartitions = function(n, maxChunkSize) {
//   if (cache[n] && cache[n][maxChunkSize]) {
//     return cache[n][maxChunkSize]
//   } else if (n < 2) {
//     return 1;
//   } else if (maxChunkSize === 1) {
//     return 1;
//   }
//   var total = 0;
//   for (var i = 1, lim = Math.min(n, maxChunkSize); i <= lim; i++) {
//     total += calcPartitions(n - i, Math.min(i, maxChunkSize));
//   }
//   cache[n] = cache[n] || [];
//   total = total % 100000;
//   cache[n][maxChunkSize] = total;
//   return total;
// }

// console.log(calcPartitions(input, input))

for (var x = 0; calcPartitions(x, x) !== 0; x++);

console.log(x);
