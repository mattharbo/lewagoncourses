// -------------
// Functions
// -------------

// Déclaration historique d'une fonction sous Javascript

function square(x){
	return x * x;
}

// Obligation de mettre le RETURN !

let square(10);

// Avec ES6 une nouvelle notation a été intraduite ==> flat arrow

const square = (x) => {
	return x * x;
}

// Even shorter

const square = x => x*x; // seule cas ou le return est facultatif !

// On peut passer des fonctions en arguments d'autre fonction
// ==> On passe des blocks

// -------------
// DOM Events
// -------------

// Differente type of events:
// blur
// focus
// click
// etc…

element.addEventListener(eventType, (event) => {
	// Do something (ie. call back)
});

// -------------
// AJAX
// -------------

// Toutes les requêtes HTTP qui vont être réalisées après le chargement initial de la page

// On le fait sur un appel API et la synthaxe est très similaire aux events JS

// Théorie
fetch(url).then((response) => {
	// Do something with the HTTP response
});

// Pratique
fetch("url")
	.then(response => response.json()) // this line stays like this
	.then((data) => {
		console.log(data);
	});