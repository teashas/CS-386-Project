var table = document.querySelector("#pokedex")
var body = table.getElementsByTagName("tbody")[0]
var rows = body.getElementsByTagName("tr");

var pokemonArray = []

//Fetches the pokemon data from the local pokedex file
//
fetch("./pokedex.json").then(results => results.json()).then(results =>{
    console.log(results[0])
    pokemonArray = results
    createTable(pokemonArray)
})

//Creates a table of all pokemon in the pokemonArray
//
function createTable(){
    for(var i = 0; i < pokemonArray.length; i++){
        console.log(pokemonArray[i])
        var newRow = body.insertRow()

        var cell1 = newRow.insertCell()
        var cell2 = newRow.insertCell()
        
        var image = document.createElement("img")
        var name = document.createTextNode(pokemonArray[i].name["english"])
        
        image.src = "assets/sprites/" + pokemonArray[i].image["sprite"]

        cell1.appendChild(image)
        cell2.appendChild(name)
    }
}


//Pokemon class. Don't have a use for it yet because the JSON file creates pokemon objects perfectly.
//
class Pokemon{
    constructor(name){
        this.id = id
        this.name = name
    }
}