var divBy3And5 = function(num) {
  return num % 3 == 0 || num % 5 == 0
};

var filteredSum = function(max, filter, min) {
  var total = 0;
  for (var i = min || 1; i <= max; i++) {
    if (filter(i)) {
      total += i;
    };
  };
  return total
};

console.log( filteredSum(1000, divBy3And5) );