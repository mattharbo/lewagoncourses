const firstName = "Matthieu";
console.log(firstName.length);
const lastName = "Harbonnier"
const message = `Mon identité est ${firstName} ${lastName} !`
console.log(message)

// -------------
// ARRAYS
// -------------

const teams = []; //declare an array

teams.push("Paris-Saint Germain"); //create a record

console.log(teams[0]); //read a value with an index

teams[0] = "PSG"; //update a value with the index
console.log(teams[0]);

teams.splice(0,1);//remote a record from an array

// -------------
// For each on an array
// -------------

const towns = ["Aulnoye","Lille","Beyrouth","Toronto","Paris"];

towns.forEach((town) => {
	console.log(town);
});

// -------------
// Control structures 
// -------------

const raining = false;
let accessory = "";

if (raining) {
	accessory = "Umbrella";
}else{
	accessory = "Sunglasses";
}

console.log(`I should take my ${accessory}`);

// -------------
// Peu s'ecrire de cette façon en opérateur TERNAIRE !!!
// -------------

const weather = true;
const access = weather ? "Umbrella" : "Sunglasses";
console.log(`I feel like wearing ${access}`);

// -------------
// Object
// -------------

const team = {
	name: "PSG",
	town: "Paris"
};

console.log(team);
console.log(`La ville qui accueille le ${team.name} est ${team.town}`);

// -------------
// Looping on a Object
// -------------

const myself = {
	surname: "Matthieu",
	name: "Harbonnier",
	age: "30",
	nationality: "French"
};

Object.keys(myself).forEach((key) => {
	const value = myself[key];
	console.log(`${key} is ${value}`);
});


// -------------
// Select element from the DOM (Document Object M…)
// -------------

const list = document.getElementById("players");
list.insertAdjacentHTML("beforeend","<li>new player</li>");

document.getElementsByClassName("container-830");

// -------------
// Using CSS Selectors
// -------------

document.querySelector(".container-830 h1");
document.querySelector(".container-830 h1").innerText;
document.querySelectorAll // ==> RETOUR UN ARRAY !!! :D

// -------------
// Retrieve content from DOM
// -------------

innerText
innerHTML

// -------------
// Hide / Display HTML
// -------------

const testelement = document.getElementById("testid");
testelement.style.display = "none"; // To hide it
testelement.style.display = ""; // To show it ==> default css style applied

// -------------
// Play with CSS Class
// -------------

element.classList.add("red"); // To add the "red" class to the selected element
element.classList.remove("red"); // To remove the "red" class to the selected element
element.classList.toggle("red"); // To add or remove the "red" class to the selected element depending of the previous state
 
// -------------
// Provide DATA from HTML to Javascript
// -------------

// Using special attributes for each HTML tags.
// Examples: <div id="toto" data-uuid="967853" data-secret-team="PSG">

const selectedtoto = document.getElementById("toto");
console.log(selectedtoto.dataset.uuid);
console.log(selectedtoto.dataset.secretTeam);
