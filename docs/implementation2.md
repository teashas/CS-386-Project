# Project Implementation 2

_Group 01 – PokéPicker\
Date and location: Jul 25, 2022\
Group Members: Saima Teasha, Ricardo Chairez, Mya Davis, Kyle Young_

## 1. Introduction

PokePicker is a web application where gamers can easily create and share their Pokemon teams without accessing the game. The system has four main software components which are, creating teams, viewing teams, deleting teams, and sharing teams. Creating a team allows the app user to select six pokemon out of the inventory database, choose specific battle moves for each Pokemon, and then save that team under a team name. Viewing teams on the web application prompts the system to retrieve all the user’s team as an overview. Deleting an existing team would look similar to viewing teams, except it will display a delete button and will ask the user to confirm their choice if they select to delete the team. The team will be removed and will not show in the web application any longer. To share a team, the user must select a team to share and the system will display all the shareable social media platforms. After the user selects one of the platforms, the system will redirect them to the associated link. 

Link to GitHub: https://github.com/teashas/CS-386-Project

Link to Trello: https://trello.com/b/XnYpplP0/cs-386-project

## 2. Implemented Requirements

Requirement: _As a gamer, I want to view a list of all Pokemon to select from when creating my team._ \
Issue:  https://github.com/teashas/CS-386-Project/issues/3 \
Pull Request: https://github.com/teashas/CS-386-Project/pull/27 \
Implemented by: Ricardo Chairez \
Approved by: Mya Davis \
Print Screen:

![Print Screen](https://github.com/teashas/CS-386-Project/blob/main/images/viewList.PNG)

Requirement: _As a gamer, I want to select the Pokemon I want to add to my team._ \
Issue:  https://github.com/teashas/CS-386-Project/issues/6 \
Pull Request: https://github.com/teashas/CS-386-Project/pull/27 \
Implemented by: Ricardo Chairez \
Approved by: Mya Davis \
Print Screen:

![Print Screen](https://github.com/teashas/CS-386-Project/blob/main/images/selectPokemon.PNG)

Requirement: _As a gamer, I want to create a team of Pokemon._ \
Issue:   https://github.com/teashas/CS-386-Project/issues/7 \
Pull Request: https://github.com/teashas/CS-386-Project/pull/27 \
Implemented by: Ricardo Chairez \
Approved by: Mya Davis \
Print Screen:

![Print Screen](https://github.com/teashas/CS-386-Project/blob/main/images/createATeam.PNG)

Requirement: _As a gamer, I want to view my Pokemon teams._ \
Issue:   https://github.com/teashas/CS-386-Project/issues/8 \
Pull Request: https://github.com/teashas/CS-386-Project/pull/28 \
Implemented by: Ricardo Chairez \
Approved by: Mya Davis \
Print Screen: 

![Print Screen](https://github.com/teashas/CS-386-Project/blob/main/images/viewPokemonTeam.PNG)

Requirement: _As a gamer, I want to be able to delete teams I create._ \
Issue:   https://github.com/teashas/CS-386-Project/issues/29 \
Pull Request: https://github.com/teashas/CS-386-Project/pull/30 \
Implemented by: Ricardo Chairez \
Approved by: Mya Davis \
Print Screen:

![Print Screen](https://github.com/teashas/CS-386-Project/blob/main/images/deleteCreatedTeams.PNG)

Requirement: _As a gamer, I want to see a descriptive view of a Pokemon_ \
Issue:   https://github.com/teashas/CS-386-Project/issues/31 \
Pull Request: https://github.com/teashas/CS-386-Project/pull/32 \
Implemented by: Ricardo Chairez \
Approved by: Mya Davis \
Print Screen:

![Print Screen](https://github.com/teashas/CS-386-Project/blob/main/images/pokemonDescription.PNG)

Requirement: _As a gamer, I want to see a descriptive view of a Pokemon_ \
Issue:   https://github.com/teashas/CS-386-Project/issues/9 \
Pull Request: https://github.com/teashas/CS-386-Project/pull/33 \
Implemented by: Ricardo Chairez \
Approved by: Saima Teasha \
Print Screen:

![Print Screen](https://github.com/teashas/CS-386-Project/blob/main/images/teamDescriptiveView.PNG)

## 4. Demo

https://www.youtube.com/watch?v=y66Dca0wdnM

## 5. Code Quality

## 6. Lessons Learned

We are happy with how our second implementation turned out. We were able to create our MVP, along with some extra features.
 
In this implementation, we changed our product from a web application to an iOS application. This transition went smoother than expected, mainly due to the fact that our requirements and planning were already laid out and iOS development was something we are overall more familiar with. 
 
Another major change we made was the implementation of Apple’s core data instead of Firebase. We decided that PokePicker is an application that does not need to be connected to the internet to function. Using Apple’s core data to store the user’s teams to the device allows the app to function offline. That being said, if we were to continue developing the app, we would need to implement Firebase so users can upload and view other user’s teams. Our app would then have 2 databases to account for offline and online use.
 
One thing we wish we had more time for was design. We wanted the app to feel like an old Gameboy game. We used a font taken straight from an old Pokemon game and it does contribute to a Gameboy “feel”. However, there is much more we could have done to contribute to the aesthetic. The app feels a bit like a generic iOS app. Given more time, we would probably add more color and try some different layouts that further resemble a Gameboy game.
