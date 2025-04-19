///scr_gen_level_editor(section)

/*
**  Usage:
**      scr_gen_level_editor(section)
**
**  Given:
**      section     Section to generate in edit mode.
*/

//Adjust the size of the level
room_width = json_get(global.leveldata,argument0,"WIDTH") * 16
room_height = json_get(global.leveldata,argument0,"HEIGHT") * 16

//Load tile data
scr_gen_tiles(argument0)

//Load objects
scr_gen_objects_editor(argument0)

//Load markers
scr_gen_markers_editor(argument0)

//Load modifiers
scr_gen_modifiers_editor(argument0)

//Load the background
scr_gen_background(argument0)

//Load the music
global.levelmusic = scr_gen_music(argument0)
