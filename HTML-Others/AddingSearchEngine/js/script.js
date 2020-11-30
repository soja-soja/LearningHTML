window.onload = init;


function init() {
	// alert('Hello');

	let btnS = document.getElementById('btnSearch');
	btnS.addEventListener("click", Search);
}

function Search() {
	// alert( )
	let url = "https://www.google.com/search?q=site%3Asoja.ir+" + document.getElementById('txtSearch').value;
	alert(url);
	window.open(url);
}