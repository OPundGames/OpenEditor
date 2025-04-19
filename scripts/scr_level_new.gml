///scr_level_new(name)

/*
**  Usage:
**      scr_level_new(name)
**
**  Given:
**      name    The name of the level to create (in quotes)
*/

//Set the level name
global.levelname = argument0

//Clear previously loaded level data if it exists
if ds_exists(global.leveldata,ds_type_map)
    ds_map_destroy(global.leveldata)

//Create new DS map to handle the level
global.leveldata = ds_map_create()

//Add main section
scr_level_add_section("MAIN")

//Set current section to main section
global.currentsection = "MAIN"
