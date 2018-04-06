import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import speak from './App';

it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<App />, div);
  ReactDOM.unmountComponentAtNode(div);
});

console.log("Hello World");




test("Aladdin", function(){
	const result = speak();
	const expected = 'It is I, Aladdin';
	expect(result).toBe(expected);
});


