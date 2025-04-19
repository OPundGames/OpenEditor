///scr_editor_can_resize_up()

/*
**  Usage:
**      scr_editor_can_resize_up()
**
**  Returns:
**      True if there are no tiles in the way, false otherwise.
*/

//Check for objects in the way
with obj_editor_placeparent
{
    if y >= room_height - 16
    {
        return false
    }
}

//Check for tiles in the way
var _tiles = tile_get_ids()
for(var i = 0; i < array_length_1d(_tiles); i++)
{
    if tile_get_y(_tiles[i]) >= room_height - 16
    {
        return false
    }
}
return true
