// alert('Message from External File!');

window.onload = init;

function init(argument) {
	let x = 12;
	console.log(x);
	x = 15;
	console.log(x);
	x = x + 5;
	console.log(x);
	alert(x);
	
	let message = "This is a message!";
	alert(message);


	alert( sum(2,3) );
	

	let h = document.getElementById('testHeader');
	h.addEventListener('click', headerClick);
	

}
function headerClick() {
	let h = document.getElementById('testHeader');
	h.innerHTML = "Header is clicked!";
}

function sum(a , b) {
	let s = a+b;
	return(s);

	// return(a+b);
}
