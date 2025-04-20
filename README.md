# CopyCat

## Table of Contents
Overview <br>
Product Spec <br>
Wireframes <br>
Schema <br>

<hr>

## Overview
#### Description
Think Simon, but with cats! It features a random sequence of cats that a player must memorize and duplicate.  If the player
produces the right sequence,they advance to the next stage.  The game ends when the player inputs an incorrect sequence.

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
Required Must-have Stories : Minimum Viable Product
- A user can start a new game
- A user can choose an easy or hard mode for longest sequence
- A user can choose a fast or slow sequence speed

Optional Nice-to-have Stories
- A timer up to 9 seconds for each play. Starts with 9 cat lives and ticks down and the player must complete the correct sequence in that time.
- Cat purr when user completes a level or stage
- Animated cat on game lost or won screen.


2. Screen Archetypes
Login/start: User can enter the game
Home: User can read the rules, choose an easy or hard mode, choose a slow or fast  sequence. User chooses their cat.
Game: Interact with game, replay sequence up to 3 times.
Game Over - Win : start new game.
Game Over - Lose: start new game.

3. Navigation
Navigation Flow


Tab Navigation (Tab to Screen)
- Rules
- Game
  
Flow Navigation (Screen to Screen)
<img width="1341" alt="flow" src="https://github.com/user-attachments/assets/11a1cd02-b99b-4a21-a24c-3228c53e35b1" />

Login/Start => Home  

Home => Game  

Game => Home  OR Game => Game Over - Win OR Game => Game Over - Lose  
     
Game Over - Win => Home  

Game Over - Lose => Home

<hr>

### Wireframes
Hand sketched wireframes:
|  Login/Start  | Home/Rules/Settings Page | Game  | Game Over - Win  | Game Over - Lose |
| -------- | -------- | ----------- | ---------- | ------------- | 
|  <img width="376" alt="sketched start" src="https://github.com/user-attachments/assets/65bd063d-b77e-4adc-8ac0-d59c6183e1ef" /> | <img width="381" alt="sketched rules" src="https://github.com/user-attachments/assets/f031563b-3b80-4b8a-99e4-242a920cefe9" /> | <img width="390" alt="sketched play" src="https://github.com/user-attachments/assets/8fd3cfb8-0487-496b-8a9e-15547a58f3e0" />  | <img width="384" alt="sketched win" src="https://github.com/user-attachments/assets/db049877-f823-4043-8dcc-52f515872b58" />   |  <img width="359" alt="sketched lose" src="https://github.com/user-attachments/assets/e20ba55f-fe38-49b9-b8e3-10cd1c64d8eb" />  |


[BONUS] Digital Wireframes & Mockups: 
|  Login/Start  | Home/Rules/Settings Page | Game  | Game Over - Win  | Game Over - Lose |
| -------- | -------- | ----------- | ---------- | ------------- | 
| <img width="385" alt="WF start" src="https://github.com/user-attachments/assets/f3cd5856-32c8-4fcb-a45b-f9fe66ff2ae5" />  |  <img width="385" alt="WF rules" src="https://github.com/user-attachments/assets/b9c352bf-8215-44da-9b8a-a2cdbb57dc22" />  |  <img width="385" alt="WF game" src="https://github.com/user-attachments/assets/7986281c-0d3c-4660-8f41-2f5d41693c3f" />  | <img width="384" alt="WF win" src="https://github.com/user-attachments/assets/8b4ca488-c58c-4585-9449-1dc5d984938a" />  | <img width="385" alt="WF lose" src="https://github.com/user-attachments/assets/94805561-c880-42ee-8528-ec5a996fb427" />   | 

<hr> 

### Schema
[This section will be completed in Unit 9]

### Models
[Add table of models]


