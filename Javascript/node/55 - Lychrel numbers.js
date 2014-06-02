var input = Number(process.argv[2]);

var reverseAndAdd = function(n) {
  return n + Number(n.toString().split('').reverse().join(''));
};

var isPalidrome = function(n) {
  var s = n.toString();
  for (var i = 0, len = s.length, halfLen = Math.floor(len/2); i < halfLen; i++) {
    if (s[i] !== s[len - i - 1]) return false;
  }
  return true;
};

notLychrel = 0;

for (var start = 10000; start--;) {
  console.log(start);
  var n = start;
  for (var i = 50; --i;) {
    n = reverseAndAdd(n);
    if (isPalidrome(n)) {
      notLychrel++;
      console.log("is notLychrel");
      break;
    }
  }
}

console.log(10000 - notLychrel);