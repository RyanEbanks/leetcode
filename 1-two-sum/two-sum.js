/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
    //Storing the numbers in an empty index to look up later
    let myMap = {};

    for(i = 0; i < nums.length; i++){
        const num = nums[i];
        const missingNumber = target - num;

        if(missingNumber in myMap) {
            return [i, myMap[missingNumber]]
        }
        myMap[num] = i;
    }
};