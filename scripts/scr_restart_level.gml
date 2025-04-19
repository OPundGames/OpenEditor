///scr_restart_level()

/*
**  Usage:
**      scr_restart_level()
**
**  Purpose:
**      This is the script that runs when the player clicks "Restart Level" in the
**      pause menu.
*/

//Stop the P-Switch if it's still on
obj_levelmanager.alarm[10] = -1

//Reset the level variables
scr_clearvars()

//Back to main section
global.currentsection = "MAIN"

//Stop all possible fanfares
audio_stop_sound(snd_starman)
audio_stop_sound(snd_switchsong)

//Go to the level room
room_goto(rm_editor)
