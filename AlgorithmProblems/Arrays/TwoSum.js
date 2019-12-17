/*
Given an array of integers and a target,
return the two indices in that array that sum up to the target
If none exist, return -1;
*/

function twoSum(arr, target) {
  let complements = {};
  let result = [-1, -1]
  arr.forEach((item, index) => {
    if(complements[item] === undefined) {
      complements[target - item] = index;
    } else {
      result[0] = complements[item];
      result[1] = index;
    }
  });
  return result;
}

module.exports = twoSum;

// console.log(twoSum([1, 2, 3, 5, 5], 60));
