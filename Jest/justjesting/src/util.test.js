const util = require('./util.js');


test("Add Two Numbers", function(){
	const result = util.sum(47,4);
	const expected = 8;
	expect(result).toBe(expected)
});
