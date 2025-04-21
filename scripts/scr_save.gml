///scr_save(file)

/*
**  Usage:
**      scr_save(file)
**
**  Given:
**      file    The name of the save file.
**
*/

//Create level folder if it doesn't already exist
if directory_exists("Level")
    directory_create_ns("Level")

//Save the level data as a JSON file
string_save_ns(json_encode(global.leveldata),"Level\" + argument0)
