var input = Number(process.argv[2]);

var toFraction = function(n) {
  return [n, 1];
}

var flip = function(fraction) {
  return [fraction[1], fraction[0]]
};