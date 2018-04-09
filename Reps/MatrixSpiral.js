Matrix = [[1,2,3], [4,5,6], [7,8,9]];
Spiral = [];
m = Matrix.length;
n = Matrix[0].length;
offset = 0;

// 1 2 3
// 4 5 6
// 7 8 9

// Create function to insert each value on M x N Matrix into an 
// empty array. Order must be in spiral and should account for
// all numbers in Matrix



const MegaEquation (m,n) => {

	// push first array numbers onto spiral

	for(i = 0; Matrix[0].length; i++){
		Spiral.push(i);
	}


	// push all last numbers onto Spiral from 
	// each remaining array in order
	for(i = 0; Matrix.length; i++){
		Spiral.push(i[m]);
	}


	// push leftover numbers on last array onto
	// spiral in reverse order
	for(i = m - offset; Matrix.length; i--){
		Spiral.push(i);
	}

	// account for remaining Matrix numbers and 
	// either adjust offset or push number accordingly

	if(m - offset > 1){
		//run equation alll over again
	} else{
		//push remaining numbers onto Spiral array
	}
}