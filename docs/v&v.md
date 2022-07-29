# Project Verification & Validation

_Group 01 – PokéPicker\
Date and location: Jul 28, 2022\
Group Members: Saima Teasha, Ricardo Chairez, Mya Davis, Kyle Young_

## 1. Description

PokePicker is a web application where gamers can easily create and share their Pokemon teams without accessing the game. The system has four main software components which are, creating teams, viewing teams, deleting teams, and sharing teams. Creating a team allows the app user to select six pokemon out of the inventory database, choose specific battle moves for each Pokemon, and then save that team under a team name. Viewing teams on the web application prompts the system to retrieve all the user’s team as an overview. Deleting an existing team would look similar to viewing teams, except it will display a delete button and will ask the user to confirm their choice if they select to delete the team. The team will be removed and will not show in the web application any longer. To share a team, the user must select a team to share and the system will display all the shareable social media platforms. After the user selects one of the platforms, the system will redirect them to the associated link.

Link to GitHub: https://github.com/teashas/CS-386-Project

Link to Trello: https://trello.com/b/XnYpplP0/cs-386-project


## 2. Verification

### 2.1 Unit Testing

- XCTest (Apple’s native testing framework)
- https://github.com/teashas/CS-386-Project/tree/main/PokePicker/PokePickerUnitTests
- When creating a team in PokePicker, the list of pokemon is generated by fetching a local JSON file and parsing through it. This test mocks the class that handles the fetching and parsing of the JSON file and sees if it returns the desired Pokemon.

![unit test](https://github.com/teashas/CS-386-Project/blob/main/images/unitTest.PNG)

### 2.2 Acceptance Testing 

- XCTest
- https://github.com/teashas/CS-386-Project/tree/main/PokePicker/PokePickerUITests
- Tests inputting a team name and beginning the process of creating a new team.
- https://github.com/teashas/CS-386-Project/blob/main/PokePicker/PokePickerUITests/PokePickerUITests.swift

![acp test](https://github.com/teashas/CS-386-Project/blob/main/images/acceptanceTest.PNG)

## 3. Validation

### User 1 

- How would you describe the homepage of our app?
  - It is very neat and easy to navigate. Not what I had in mind for the theme, but overall great.

- How do you compare our system to the actual videogame?
  - I think what you guys created is a product that could essentially be integrated to be a part of the actual videogame. Would need to work on the theme to make it complimentary.

- On a scale of 1 to 10, how would you rate the layout of our application? 
  - Given the short time, I would give it a 10. It was easy for me to view data and make my team selections.


- On the same scale, how likely would you use the system in its current state?
  -Maybe like a 7 or an 8. Everything is easy to find and I really think it meets your requirements.

- On a scale of 1 to 10, do you think that we achieved the goals we made?
  - Absolutely 10/10. Looking at your requirements, you have met all the requirements.
  
 _Reflection:_ For what we came up with in the span of four weeks, the user seemed to be really impressed. They did say that there could be room for improvement because when I interviewed them for the inception, they were really looking forward to the theme & formatting of this application. They said that there are very few things we can improve because it is such a simple application. But they mentioned that maybe we could include battling demos on our app too since it is something that might catch a lot of audience interest. Considering the amount of documentation and testing we had to do for this project, I think we had an outstanding product. I asked the user to perform tasks on the app, like creating a team, and the user performed all tasks without fail. All results were as expected (mostly because we had tested all functionalities beforehand). Our value proposition was definitely valid and confirmed.


### User 2

- How would you describe the homepage of our app?
  - Simple, and neat. Not a lot of character relatively plain

- How do you compare our system to the actual videogame?
  - It would be nice to use with the videogame integrated and could definitely be a nice addition.

- On a scale of 1 to 10, how would you rate the layout of our application? 
  - 8 because  the buttons make sense and are labeled well and it is easy to navigate

- On the same scale, how likely would you use the system in its current state?
  - 7 because it is cool to be able to make the different teams along with being able to see all of the teams though it does not have a community feature.

- On a scale of 1 to 10, do you think that we achieved the goals we made?
  - 9 because the majority of the things we talked 
  
  _Reflection:_ The features of creating multiple teams worked well along with being able to view your different teams and see the information about each individual pokemon. Something that was mentioned that could be changed would be to make the homepage more appealing for users to use visually. The learning curve of the system is very easy, it’s easy to navigate and learn how to create teams. The users actions did as the user expected them to do which is a great outcome. The user liked being able to look at each individual pokemons stats seperately. We did accomplish the value proposition based on this interview because the user was able to create and share their pokemon teams.


### User 3

- How would you describe the homepage of our app?
  - The interface is clean and the transitions are very smooth with color coordinations drawing me to understand what would be done very easily

- How do you compare our system to the actual videogame?
  - Team Composition is similar to the videogame, but it doesn't necessarily help me build a team.

- On a scale of 1 to 10, how would you rate the layout of our application? 
  - Layout: 8/10 missing a home tab

- On the same scale, how likely would you use the system in its current state?
  - I'd use the system in the current state because of its clean design, and the goals achieved from the initial pitch

- On a scale of 1 to 10, do you think that we achieved the goals we made?
  -Goals: 10/10 this is exactly what I pictured it would be from our first analysis

_Reflection:_ The user seemed pleased with the result of the project, and looked to be what he expected. Something that was mentioned was the ability to transition to home from the select bar at the bottom. Other than that, everything was very expected and the pokemon data was present and shown. This app is not necessarily new user friendly, as new users would not understand which pokemon to pick and how to build a good team compisition