// Generated by CoffeeScript 1.6.3
(function() {
  $(document).ready(function() {
    var n, nCrOverMillion, r, result, _i, _j;
    nCrOverMillion = function(n, r) {
      var answer;
      r = Math.min(r, n - r);
      answer = 1;
      while (r > 0 && answer < 1000000) {
        answer *= n - r + 1;
        answer /= r;
        r -= 1;
      }
      if (answer < 1000000) {
        return false;
      }
      return true;
    };
    result = 0;
    for (n = _i = 1; _i <= 100; n = ++_i) {
      for (r = _j = 4; 4 <= n ? _j <= n : _j >= n; r = 4 <= n ? ++_j : --_j) {
        if (nCrOverMillion(n, r)) {
          result += 1;
        }
      }
    }
    return $('#answer').text(result);
  });

}).call(this);
