///scr_init_globals()

/*
**  Usage:
**      scr_init_globals()
**
**  Purpose:
**      Initializes all of the global variables used throughout the game.
*/

//Time Limit
global.timer = 0

//World Number
global.world = 1

//Mario's health
global.healthmeter = 3

//Coins
global.coins = 0

//Lives
lives = 5

//Score
score = 0

//Mario Start!
global.mariostart = 0

//Whether a level is cleared
global.clear = 0

//Powerup
global.powerup = cs_small

//Checkpoint
global.checkpoint = noone

//Checkpoint Room
global.checkpointroom = noone

//Checkpoint Coordinates
global.checkpointx = noone
global.checkpointy = noone

//Checkpoint Section
global.checkpointsection = noone

//Red Switch Palace
global.palacered = 0

//Blue Switch Palace
global.palaceblue = 0

//Yellow Switch Palace
global.palaceyellow = 0

//Green Switch Palace
global.palacegreen = 0

//Position change object type
global.postchange = -1

//Position change coordinates
global.postx = 0
global.posty = 0

//Position destination marker name
global.postdest = noone

//Yoshi
global.yoshi = 0

//Yoshi's Color
global.ycolor = 0

//Whether Mario died
global.died = 0

//P-Switch time limit
global.pswitch = 0

//Star time limit
global.star = 0

//On/Off Block state
global.onoffblock = 0

//Amount of levels selected in challenge mode
global.challenge = 0

//Challenge mode levels already completed
global.challenge_levels = array_create(0)

//List of levels to be completed
global.challenge_list = noone
