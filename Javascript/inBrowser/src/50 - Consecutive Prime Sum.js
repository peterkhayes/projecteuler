var cps = function (n) {
    var primes = [false, false];
    for (var i = 2; i < n; i++) {
        if (primes[i] === undefined) {
            primes[i] = true;
            for (var j = 2*i; j < n; j += i) {
                primes[j] = false;
            }
        }
    }
    
    var sum = 0;
    var length = 0;
    
    var maxSum = 0;
    var maxLength = 1;
    
    for (j = 2; j < n; j++) {
        if (!primes[j]) continue;
        sum = 0;
        length = 0;
        for (i = j; i < n/21; i++) {
            if (!primes[i]) continue;
            sum += i;
            length++;
            if (primes[sum] && (length > maxLength)) {
                maxLength = length;
                maxSum = sum;
            }
        }
    }
    
    return [maxSum, maxLength];
};