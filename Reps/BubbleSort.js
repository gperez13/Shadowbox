const bubbleSort = function (array){ 
	let keepGoing = true;

 while(keepGoing = true){

			for(let i = 0; i < array.length; i++){
			swapped = '';
			keepGoing = false;


			if(array[i] < array[i -1]){
				swapped = array[i];
				array.splice(i, 1);
				array.splice(i - 1, 0, swapped);
				keepGoing = true;

				console.log(array)
				console.log(swapped)
			}
		} 
	}



}

bubbleSort([10, 0, 99, 100, 8, 55, 2, 17, 16, 15, 1000, 1]);