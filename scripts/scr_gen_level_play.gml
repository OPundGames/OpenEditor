///scr_gen_level_play(section)

/*
**  Usage:
**      scr_gen_level_play(section)
**
**  Given:
**      section     Section to generate in play mode.
*/

//Adjust the size of the level
room_width = json_get(global.leveldata,argument0,"WIDTH") * 16
room_height = json_get(global.leveldata,argument0,"HEIGHT") * 16

//Load tile data
scr_gen_tiles(argument0)

//Load markers
scr_gen_markers_play(argument0)

//Load modifiers
scr_gen_modifiers_play(argument0)

//Load objects
scr_gen_objects_play(argument0)

//Load the background
scr_gen_background(argument0)

//Load the music
obj_levelmanager.levelmusic = scr_gen_music(argument0)

//Keep powerups on damage
if json_get(global.leveldata,global.currentsection,"KEEP_POWERUP")
    obj_levelmanager.keep_powerup = true

//Daredevil mode
if json_get(global.leveldata,global.currentsection,"DAREDEVIL")
    obj_levelmanager.daredevil = true
    
//Generate rain
if json_get(global.leveldata,global.currentsection,"RAIN")
    instance_create(0,0,obj_stormmaker)
    
//Generate snow
if json_get(global.leveldata,global.currentsection,"SNOW")
    instance_create(0,0,obj_snowmaker)
    
//Classic scrolling
if json_get(global.leveldata,global.currentsection,"CLASSIC_SCROLL")
    instance_create(0,0,obj_classicscroll)
