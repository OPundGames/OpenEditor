///scr_load(file)

/*
**  Usage:
**      scr_load(file)
**
**  Given:
**      file    The location of the save file.
**
*/

//Make sure previous level data is cleared
if ds_exists(global.leveldata,ds_type_map)
    ds_map_destroy(global.leveldata)
    
//Open the level file
var file = file_text_open_read_ns("Level\" + argument0,-1);

//Remember the data in the file
global.leveldata = json_decode(file_text_read_line_ns(file))

//Close the level file
file_text_close_ns(file)
