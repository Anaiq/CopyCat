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
produces the right sequence,they advance to the next stage.  They game ends when the player inputs an incorrect sequence.

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
<img width="1361" alt="Screenshot 2025-04-15 at 12 49 34" src="https://github.com/user-attachments/assets/77b38918-1886-43e6-b62f-cb5d8a34fbd8" />

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
| <img width="376" alt="Screenshot 2025-04-15 at 21 59 19" src="https://github.com/user-attachments/assets/4d4c26a0-953f-4f18-a5c9-be52766de95d" /> |  <img width="381" alt="Screenshot 2025-04-15 at 21 59 36" src="https://github.com/user-attachments/assets/1fc5a42b-3a5e-4703-befa-7a2bc3f1a6a4" /> | <img width="390" alt="Screenshot 2025-04-15 at 21 59 42" src="https://github.com/user-attachments/assets/fe4f2c52-ce86-4312-bedd-2aa86db3e1ce" /> | <img width="384" alt="Screenshot 2025-04-15 at 21 59 47" src="https://github.com/user-attachments/assets/86250dff-e197-48ff-ac22-fde411c93f61" /> |  <img width="400" alt="Screenshot 2025-04-15 at 22 00 05" src="https://github.com/user-attachments/assets/d1aaa3f2-b13c-4623-a874-43a833b06ae0" /> |


[BONUS] Digital Wireframes & Mockups: 
|  Login/Start  | Home/Rules/Settings Page | Game  | Game Over - Win  | Game Over - Lose |
| -------- | -------- | ----------- | ---------- | ------------- | 
|<img width="385" alt="Screenshot 2025-04-15 at 16 29 29" src="https://github.com/user-attachments/assets/a4da299e-4bde-4dca-9888-f9ef8c077a41" />   | <img width="386" alt="Screenshot 2025-04-15 at 16 29 37" src="https://github.com/user-attachments/assets/6dddb560-100b-4263-8aa2-42ac2e4cee37" />  | <img width="385" alt="Screenshot 2025-04-15 at 22 04 17" src="https://github.com/user-attachments/assets/17a4bad5-4923-4a85-8bbc-c249d88ca5af" /> | <img width="384" alt="Screenshot 2025-04-15 at 16 29 59" src="https://github.com/user-attachments/assets/c99dc3f5-f41d-4d90-8f58-ca11fbc0d496" />  | <img width="385" alt="Screenshot 2025-04-15 at 16 30 15" src="https://github.com/user-attachments/assets/faaf6817-7f6c-4738-9658-31869de14280" />  | 

<hr> 

### Schema
[This section will be completed in Unit 9]

### Models
[Add table of models]


