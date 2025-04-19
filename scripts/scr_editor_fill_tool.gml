///scr_editor_fill_tool(x,y,delete,tilex,tiley,checker)

/*
**  Usage:
**      scr_editor_fill_tool(x,y,delete,tilex,tiley,checker)
**
**  Given:
**      x           X coordinate to start filling tiles
**      y           Y coordinate to start filling tiles
**      delete      Is the fill tool on delete mode?
**      tilex       Tile X position to fill with
**      tiley       Tile Y position to fill with
**      checker     Is the fill tool on checkerboard mode?
**
**  Notes:
**      This script assumes that the calling instance is obj_editor.
**      Attempting to call this with any other object WILL CRASH the game.
*/

var _x = argument0,
    _y = argument1,
    _delete = argument2,
    _tilex = argument3,
    _tiley = argument4,
    _checker = argument5,
    _mytile,
    _xcoord,
    _ycoord,
    _stack = ds_stack_create(),
    _pop;

//Add the starting tile position to the stack
ds_stack_push(_stack,string(_x)+","+string(_y))

//Loop through all values in the stack until it's empty
while(not ds_stack_empty(_stack))
{
    
    //Get the next tile position to check
    _pop = ds_stack_pop(_stack)
    _xcoord = real(string_copy(_pop,0,string_pos(",",_pop)-1))
    _ycoord = real(string_copy(_pop,string_length(_xcoord)+2,string_length(_pop)-string_length(_xcoord)+2))
    
    //Scan for a tile in the position we're trying to fill in
    _mytile = tile_layer_find(9+((selection-1)*3),floor(_xcoord/16)*16,floor(_ycoord/16)*16)
    
    //If we're placing tiles..
    if not _delete
    {
        
        //Check if the tile we want to fill is unoccupied
        if _mytile == -1
        
        //Make sure the tile is within the room bounds
        and (floor(_xcoord/16))*16 >= 0
        and (floor(_ycoord/16))*16 >= 0
        and (floor(_xcoord/16))*16 < room_width
        and (floor(_ycoord/16))*16 < room_height
        {
            
            //Add the tile to the editor
            tile_add(bg_tileset,_tilex*16,_tiley*16,16,16,_xcoord,_ycoord,9+((selection-1)*3))
            
            //Add the tile to the level data
            if selection = 1
                json_set(global.leveldata,global.currentsection,"TILES",string(floor(_xcoord/16))+","+string(floor(_ycoord/16)),string(_tilex)+","+string(_tiley))
            
            //Add the background tile to the level data
            if selection = 2
                json_set(global.leveldata,global.currentsection,"TILES_BG",string(floor(_xcoord/16))+","+string(floor(_ycoord/16)),string(_tilex)+","+string(_tiley))
            
            //Check the surrounding tiles
            if not _checker
            {
                ds_stack_push(_stack,string(_xcoord)+","+string(_ycoord-16))
                ds_stack_push(_stack,string(_xcoord)+","+string(_ycoord+16))
                ds_stack_push(_stack,string(_xcoord-16)+","+string(_ycoord))
                ds_stack_push(_stack,string(_xcoord+16)+","+string(_ycoord))
            }
            //Check diagonal tiles if in checkerboard mode
            else
            {
                ds_stack_push(_stack,string(_xcoord-16)+","+string(_ycoord-16))
                ds_stack_push(_stack,string(_xcoord-16)+","+string(_ycoord+16))
                ds_stack_push(_stack,string(_xcoord+16)+","+string(_ycoord-16))
                ds_stack_push(_stack,string(_xcoord+16)+","+string(_ycoord+16))
            }
            
        }
        
    }
    
    //If we're deleting tiles..
    else
    {
        
        //Check if the tile we want to fill matches the starting tile
        if _mytile != -1
        and tile_get_left(_mytile) == _tilex
        and tile_get_top(_mytile) == _tiley
        
        //Make sure the tile is within the room bounds
        and (floor(_xcoord/16))*16 >= 0
        and (floor(_ycoord/16))*16 >= 0
        and (floor(_xcoord/16))*16 < room_width
        and (floor(_ycoord/16))*16 < room_height
        {
        
            //Delete the tile
            tile_delete(_mytile)
            
            //Remove the tile from the level data
            if selection = 1
                json_unset(global.leveldata,global.currentsection,"TILES",string(floor(_xcoord/16))+","+string(floor(_ycoord/16)))
            
            //Remove the background tile from the level data
            if selection = 2
                json_unset(global.leveldata,global.currentsection,"TILES_BG",string(floor(_xcoord/16))+","+string(floor(_ycoord/16)))
            
            //Check the surrounding tiles
            if not _checker
            {
                ds_stack_push(_stack,string(_xcoord)+","+string(_ycoord-16))
                ds_stack_push(_stack,string(_xcoord)+","+string(_ycoord+16))
                ds_stack_push(_stack,string(_xcoord-16)+","+string(_ycoord))
                ds_stack_push(_stack,string(_xcoord+16)+","+string(_ycoord))
            }
            //Check diagonal tiles if in checkerboard mode
            else
            {
                ds_stack_push(_stack,string(_xcoord-16)+","+string(_ycoord-16))
                ds_stack_push(_stack,string(_xcoord-16)+","+string(_ycoord+16))
                ds_stack_push(_stack,string(_xcoord+16)+","+string(_ycoord-16))
                ds_stack_push(_stack,string(_xcoord+16)+","+string(_ycoord+16))
            }
            
        }
        
    }
    
}

//Destroy the stack
ds_stack_destroy(_stack)
