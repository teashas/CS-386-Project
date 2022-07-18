var table = document.querySelector("#pokedex")
var body = table.getElementsByTagName("tbody")[0]
var rows = body.getElementsByTagName("tr");

var teamElements = document.querySelector("#pokemon-team").children

var team = []
var teamSelection = 0
var pokemonArray = []


//Fetches the pokemon data from the local pokedex file
//
fetch("./pokedex.json").then(results => results.json()).then(results =>{
    pokemonArray = results
    for(var i = 0; i < 6; i++){
        team.push(results[100 - 1])
    }
    updateTeam()
    createTable()
})

//Creates a table of all pokemon in the pokemonArray
//
function createTable(){
    for(var i = 0; i < pokemonArray.length; i++){
        var newRow = body.insertRow()

        var buttonCell = newRow.insertCell()
        var imageCell = newRow.insertCell()
        var numberCell = newRow.insertCell()
        var nameCell = newRow.insertCell()
        
        var button = document.createElement("button")
        button.id = pokemonArray[i].id - 1
        var image = document.createElement("img")
        var number = document.createTextNode(pokemonArray[i].id)
        var name = document.createTextNode(pokemonArray[i].name["english"])
        
        image.src = "assets/sprites/" + pokemonArray[i].image["sprite"]
        number.innerHTML = pokemonArray[i].id

        buttonCell.append(button)
        imageCell.appendChild(image)
        numberCell.appendChild(number)
        nameCell.appendChild(name)
    }
}


table.addEventListener("click", (event) => {
    const isButton = event.target.nodeName === "BUTTON";
    if(!isButton){
        return
    }
    team[teamSelection] = pokemonArray[event.target.id]
    console.log(teamSelection)
    teamSelection++
    if(teamSelection == team.length){
        teamSelection = 0
    }
    console.log(team)
    
    updateTeam()

})

function updateTeam(){
    for(var i = 0; i < team.length; i++){
        var image = teamElements[i].getElementsByTagName("img")[0]
        var p = teamElements[i].getElementsByTagName("p")[0]

        p.innerHTML = team[i].name["english"]
        image.src = "assets/sprites/" + team[i].image["sprite"]
    }
}