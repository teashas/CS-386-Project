# Team Project - D.2 Requirements

## 1. Position 

***1.1 Problem Statement***

The problem of establishing a unique team affects the gaming users; the impact of which is users have no Pokemon to use during battles.

***1.2 Product Position Statement***

For Pokemon users of all ages who struggle to find a good combination of Pokemon. PokePicker is a simple web application that relieves user stress with freedom to choose any six Pokemon to their team. Unlike other database games our product is primarily influenced by the pokemon video game and does not require any gaming experience.  

***1.3 Value Proposition & Customer Segment***

<ins>***Value Proposition***</ins>

 PokePicker is a web application where gamers can easily create and share their Pokemon teams without accessing the game.

<ins>***Consumer Segment***</ins>

Our consumer segments are competitive gamers who need somewhere to assemble teams for competitive play or casual gamers who want to assemble teams for fun

## 2. Stakeholders
<ins>***Gamer:***</ins>
The gamers are a stakeholder because they will be the primary audience and will be using the application. The users are the key stakeholders for this project.

<ins>***Project Manager:***</ins>
In charge of assigning tasks on the team and making sure that each phase meets its deadline. The project manager changes every week for our team. 

<ins>***Developers:***</ins>
These are the people putting in the time and effort into the project so that the team can produce the best possible product. The developers are the ones who test the demo and make adjustments to the app accordingly.

<ins>***Competitors:***</ins>
Web applications that have similar functionality to our app. If our application is successful then it puts other competitors’ businesses at stake (vice versa). 

## 3. Functional Requirements 
 - Create a team of Pokemon
 <ol> 
  <li> Create a team of Pokemon </li>
  <ol> 
    <li> choose a moveset for each Pokemon</li>
    <li> choose stats for each Pokemon</li>
    </ol>
  <li> Save/upload Pokemon teams</li>
  <li> View teams made by the user </li>
  <li> View teams made by other users </li>
  <li>  Share teams on social media </li>
</ol>




## 4. Non-Functional Requirements
- Usability - Clear menu instructions 
- Compatibility - Compatible with any web browser
- Quality Code - Multiple other coders are satisfied with the readability of the code to make future changes
- Readability - 7 out of 10 people are comfortable with the readability of the site


## 5. MVP
The minimum viable product of our application would allow users to view a list of Pokemon, create a team of Pokemon, save that team, and view their saved team.

The features it would validate are:
- View a list of Pokemon
- Create a team of Pokemon (not including moveset or stats)
- Save Pokemon teams
- View teams made by the user












## 6. Use cases
***6.1 Use case diagram***


***6.2 Use case descriptions and interface sketch***

<ins> Use Case: Create team</ins>

Actor: User

Description: User creates a team of Pokemon

Preconditions: The user is logged into the system

Post-conditions: A new team of Pokemon is created with the associated user

Main Flow:
<ol>
  <li>The user enters a name and selects to create a new team </li>
  <li>The system displays a list of all Pokemon </li>
  <li>The user selects multiple Pokemon  </li>
  <li>The system displays the selected Pokemon </li>
  <li>The user creates the new team </li>
  <li>TThe system registers the new team with the associated name and user</li>
</ol>
 
<ins> Use Case: View team </ins>

Actor: User

Description: The user views a team.

Precondition: The user is logged into the system

Main Flow:
<ol>
  <li>The user selects to see their created teams </li>
  <li>The system retrieves all the user’s teams </li>
  <li> The user selects a team</li>
  <li>The system displays the team </li>
</ol>
Alternative Flows:
<ol>
  <li> The User selects to see teams created by other users</li>
  <li>The system retrieves all teams not made by the user</li>
</ol>

 
<ins>Use Case: Delete team</ins>

Actor: User

Description: The user deletes a team they created.

Precondition: The user is viewing a team they created.

Post-condition: The team is no longer in the system

Main Flow:
<ol>
  <li>The user selects to delete the team </li>
  <li>The system asks to confirm their choice</li>
  <li> The user confirms their choice</li>
  <li>The system removes the team </li>
</ol>

 
 
<ins>Use Case: Share team</ins>

Actor: User

Description: User shares a team on social media. 

Precondition: User is viewing a team

Postcondition: The user is redirected to a social media site, with a generated post linking to the team.

Main Flow:
<ol>
  <li>The user selects to share the team</li>
  <li>The system displays all shareable social media platforms</li>
  <li> The user selects a social media platform</li>
  <li> The system redirects them to the social media platform and generates a post, linking to the team </li>
</ol>








## 7. User Stories

- As a gamer I want to see what pokemon types there are so that I can successfully create a synergistic team - High - 1 Hour
- As a gamer I want to give my pokemon moves, so that I can theory craft a game plan - high - 2 hours
- As a gamer I want to see and adjust Pokemon stats to run damage calculations, which could help in game - medium - 3 hours
- As a social user I want to share teams, so that I can gauge feedback via interaction and encourage others to use the application - urgent - 1 hour
- As a casual user I want to view a list of all Pokemon so that I can pick the ones I like - urgent - 2 hours
- As a busy adult I want to save my progress in the editor so I  don't lose my progress and can update my team at another time - medium - 1 hour
- As a new user, I want to view other teams in order to get a better understanding on how to make a successful and fun team - low - 2 hours
- As a pokemon fan gamer I want to be able to create a Pokemon team, so that I can import my existing in game team - urgent - 2 hours

## 8. Issue Tracker
https://trello.com/b/XnYpplP0/cs-386-project
