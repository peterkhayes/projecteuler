var fs = require('fs');
var br = require('buffered-reader');
var DataReader = br.DataReader

var r2a = {
  I: 1,
  V: 5,
  X: 10,
  L: 50,
  C: 100,
  D: 500,
  M: 1000
};

var a2r = [];
a2r[1]="I"; a2r[5]="V"; a2r[10]="X"; a2r[50]="L"; a2r[100]="C"; a2r[500]="D"; a2r[1000]="M";

var romanToArabic = function(roman){
  if(typeof roman !== 'string') {
    throw 'function "translateRomanNumeral" can only process strings';
  }

  var chars = roman.split('');
  var highest = 1;
  var sum = 0;

  for (var i = chars.length - 1; i >=0; i--) {
    var value = r2a[chars[i]];
    if (!value) throw "Must consist only of I, V, X, L, C, D, and M.";
    if (value >= highest) {
      highest = value;
      sum += value;
    } else {
      sum -= value;
    }
  }

  return sum;
};

var arabicToRoman = function(arabic) {
  var result = ""
  while (arabic >= 1000) {
    arabic = arabic - 1000;
    result += "M";
  }
  [[100, 500, 1000], [10, 50, 100], [1, 5, 10]].forEach(function(i) {
    var ones = i[0];
    var fives = i[1];
    var tens = i[2];
    var digit = Math.floor(arabic / ones);

    if (digit == 1) {
      result += a2r[ones];
    } else if (digit == 2) {
      result += a2r[ones] + a2r[ones];
    } else if (digit == 3) {
      result += a2r[ones] + a2r[ones] + a2r[ones];
    } else if (digit == 4) {
      result += a2r[ones] + a2r[fives];
    } else if (digit == 5) {
      result += a2r[fives];
    } else if (digit == 6) {
      result += a2r[fives] + a2r[ones];
    } else if (digit == 7) {
      result += a2r[fives] + a2r[ones] + a2r[ones];
    } else if (digit == 8) {
      result += a2r[fives] + a2r[ones] + a2r[ones]+ a2r[ones];
    } else if (digit == 9) {
      result += a2r[fives] + a2r[tens];
    }
    arabic = arabic % ones;
  });

  return result;
};

var findCharactersSaved = function(input) {
  var arabic = romanToArabic(input);
  var shorter = arabicToRoman(arabic);
  return input.length - shorter.length;
};

var file = './data/roman.txt';
var total = 0;

new DataReader (file, { encoding: "utf8" })
  .on ("error", function (error){
    console.log (error);
  })
  .on ("line", function (line){
    var charactersSaved = findCharactersSaved(line);
    total += charactersSaved;
  })
  .on ("end", function (){
    console.log("Total characters saved:", total);
  })
  .read ();

