# CopyCat

## Table of Contents
Overview <br>
Demo <br>
Product Spec: Required and Optional future enhancements <br>
Wireframes <br>
Schema <br>
Models <br>
Sprint Planning
 <br>

<hr>

## Overview
#### Description
Think Simon, but with cats! It features a random sequence of cats that a player must memorize and duplicate.  If the player
produces the right sequence,they advance to the next stage.  The game ends when the player inputs an incorrect sequence.

#### Video Demo

https://github.com/user-attachments/assets/56b443df-1236-4c9e-b66b-6fc4f88158f2


#### App Evaluation
#### 1. Mobile: How uniquely mobile is the product experience?
It's designed for quick, focused gameplay, puurfect while you are waiting. Feels more natural on touchscreens. Responsive
animations or purring sounds when complete a stage to make it more engaging.
#### 2. Story: How compelling is the story around this app once completed?
"Think Simon, but with cats!" is instantly fun and relatable.  Cat lovers and ppl who remember the Simon game would probably
like it.  You can test your memory while having fun doing it.
#### 3. Market: How large or unique is the market for this app?
Massive mobile gaming market and large niche for cat games e.g. KleptoCats, Kitty Cat Tycoon, Deco Neko.
#### 4. Habit
Usage most likely daily or few times a week, possible d/t chasing better scores and more difficult challenges.  
#### 5. Scope: How well-formed is the scope for this app?
V1 Would provide a simple easy game with basic scale progression, keep track of score/level, screen for winning and losing.
V2 Adds on hard mode (faster sequence), possible sounds/animation when complete a stage or level.
V3 Adds on a timers(9 secs) for each move, possible different cat themes.
    
<hr>

### Product Spec
1. User Stories (Required and Optional)
#### Required Must-have Stories : Minimum Viable Product
-[X] A user can start a new game <br>
-[X] A user can navigate to/from the rules <-> game screen <br>
-[X] A user can choose a fast or slow cat display speed <br>
-[X] A user can view their progress through the levels and see their score <br>
-[X] A user can replay a sequence up to 3 times <br>

 #### Optional Nice-to-have Stories
-[] Paw timer counts down between each move, maybe start a 5 paws (seconds) for each move and increased up to max 9 paws (seconds) for more difficult levels.  <br>
-[] Add optional different meow sounds for each cat. <br>
-[] Add more levels to choose an easy or hard mode for longer sequence <br>
-[] Bug fix: Speed setting needs to reset to normal or remain at previous setting when restart a game. <br>
-[X] Bug fix: Disable recognizing user tap before push play button. <br>


2. Screen Archetypes
Start: User can enter the game
Home/Rules/Settings: User can read the rules, choose an easy or hard mode, choose a slow or fast  sequence. User chooses their cat.
Game: Interact with game, replay sequence up to 3 times.
Game Over - Win : start new game.
Game Over - Lose: start new game.

3. Navigation
#### Flow Navigation (Screen to Screen)
<img width="1341" alt="flow" src="https://github.com/user-attachments/assets/11a1cd02-b99b-4a21-a24c-3228c53e35b1" />
  
Start => Rules/Settings  

Rules/Settings  => Game  

Game => Rules/Settings   OR Game => Game Over - Win OR Game => Game Over - Lose  
     
Game Over - Win => Rules/Settings   

Game Over - Lose => Rules/Settings 

#### Tab Navigation (Tab to Screen)
- Rules
- Game

<hr>

### Wireframes
#### Hand sketched wireframes:
|  Login/Start  | Home/Rules/Settings Page | Game  | Game Over - Win  | Game Over - Lose |
| -------- | -------- | ----------- | ---------- | ------------- | 
|  <img width="376" alt="sketched start" src="https://github.com/user-attachments/assets/65bd063d-b77e-4adc-8ac0-d59c6183e1ef" /> | <img width="381" alt="sketched rules" src="https://github.com/user-attachments/assets/f031563b-3b80-4b8a-99e4-242a920cefe9" /> | <img width="390" alt="sketched play" src="https://github.com/user-attachments/assets/8fd3cfb8-0487-496b-8a9e-15547a58f3e0" />  | <img width="384" alt="sketched win" src="https://github.com/user-attachments/assets/db049877-f823-4043-8dcc-52f515872b58" />   |  <img width="359" alt="sketched lose" src="https://github.com/user-attachments/assets/e20ba55f-fe38-49b9-b8e3-10cd1c64d8eb" />  |


#### [BONUS] Digital Wireframes & Mockups: 
|  Login/Start  | Home/Rules/Settings Page | Game  | Game Over - Win  | Game Over - Lose |
| -------- | -------- | ----------- | ---------- | ------------- | 
| <img width="385" alt="WF start" src="https://github.com/user-attachments/assets/f3cd5856-32c8-4fcb-a45b-f9fe66ff2ae5" />  |  <img width="385" alt="WF rules" src="https://github.com/user-attachments/assets/b9c352bf-8215-44da-9b8a-a2cdbb57dc22" />  |  <img width="385" alt="WF game" src="https://github.com/user-attachments/assets/7986281c-0d3c-4660-8f41-2f5d41693c3f" />  | <img width="384" alt="WF win" src="https://github.com/user-attachments/assets/8b4ca488-c58c-4585-9449-1dc5d984938a" />  | <img width="385" alt="WF lose" src="https://github.com/user-attachments/assets/94805561-c880-42ee-8528-ec5a996fb427" />   | 

<hr> 

### Schema
“The Game struct keeps track of the player's progress (level, score, replays). It also stores the animation speed, which is determined by user settings in RulesAndSettings. These settings are controlled by the player on the rules screen and affect how quickly the cats animate in the game.”

### Models
#### Game
|  Property  | Type | Description  |
| -------- | -------- | ----------- |
| level | Int | Current game level. |
| maxLevel | Int | Maximum number of level in the game. | 
| score | Int | Player's score | 
| replaynumber | Int | How many replays the user has used. | 
| animationSpeed | Double | Speed of animations based on selections | 
| isGameComplete | Bool | Checks win. |

#### Rules
|  Property  | Type | Description  |
| -------- | -------- | ----------- |
| gameRules | String | Instructions on how to play the game. |
| difficuly | GameSequenceDifficulty (enum) | Increased difficulty with longer sequences. |
| speed | GameSpeed (enum) | Increases speed of animation for more challenge play. | 

### Sprint Planning
Sprint 1: Start to build UI for start screen: add pictures
Sprint 2: Build Launch screen, game screen
Sprint 3: Build Rules/Settings screen and win/lose screens
Sprint 4: UI updates and Initiate game Logic
Sprint 5: Bug fixes for MVP
