// Given an array of n integers where n > 1, nums, return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].

// Solve it without division and in O(n).

// For example, given [1,2,3,4], return [24,12,8,6].


a = [2, 3, 5, 3, 1, 2];
b = []; 
c = []; 
finalArray = [];

const solution(a) =>{
	var mult; 
	var base = 1;
	
// loop over and make array of all multiplied numbers to the left
	for(i = 0; a.length; i++){


		a[i] * a[i - 1] = mult; 

		a.push(mult * base);

		base = mult * base;

	}

// loop over again but reverse the multiplication/array from right
	for(x = 1; b.length; x--){


		a[x] * a[x - 1] = mult; 

		a.push(mult * base);

		base = mult * base;

	}

// Multiple each b[z] times c[z] to get opposite values and create array with Product
// of Array minus itself 

}



// final solution: 
// b = [1, 2, 6, 30, 90, 90]
// c = [90, 30, 6, 2, 2, 1]
// finalArray = [90, 60, 36, 60, 180, 90]





//I think I got my loops wrong. Oops
// https://leetcode.com/problems/product-of-array-except-self/description/