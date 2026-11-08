/**
 * Two Sum - classic DSA problem
 * Given array and target, return indices of two numbers that add to target.
 * Run: node two-sum.js
 */

function twoSum(nums, target) {
  const seen = new Map();
  for (let i = 0; i < nums.length; i++) {
    const complement = target - nums[i];
    if (seen.has(complement)) {
      return [seen.get(complement), i];
    }
    seen.set(nums[i], i);
  }
  return [];
}

// Tests
console.log(twoSum([2, 7, 11, 15], 9));  // [0, 1]
console.log(twoSum([3, 2, 4], 6));         // [1, 2]
console.log(twoSum([3, 3], 6));           // [0, 1]

// Time: O(n)  Space: O(n)  — hash map pattern
