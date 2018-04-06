const util = require('./util.js');


test("Add Two Numbers", function(){
	const result = util.sum(4,4);
	const expected = 8;
	expect(result).toBe(expected);
});

console.log('First Test Passed')


test("Add Two Numbers", function(){
	const result = util.sum(47,4);
	const expected = 8;
	expect(result).toBe(expected);
});


console.log('Second test failed. Exhaustive testing impossible');


test("Add Two Numbers", function(){
	const result = util.sum(7,3);
	const expected = 10;
	expect(result).toBe(expected);
});