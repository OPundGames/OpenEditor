///scr_editor_can_resize_left()

/*
**  Usage:
**      scr_editor_can_resize_left()
**
**  Returns:
**      True if there are no tiles in the way, false otherwise.
*/

//Check for objects in the way
with obj_editor_placeparent
{
    if x >= room_width - 16
    {
        return false
    }
}
//Check for tiles in the way
var _tiles = tile_get_ids()
for(var i = 0; i < array_length_1d(_tiles); i++)
{
    if tile_get_x(_tiles[i]) >= room_width - 16
    {
        return false
    }
}
return true
