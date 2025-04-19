///scr_editor_init_collision_map()

/*
**  Usage:
**      scr_editor_init_collision_map()
**
**  Purpose:
**      An easy way to set up tile collisions in the room editor. (rm_tile_collisions)
**
**  Notes:
**      You can set up your own tileset very easily, collisions and all, with no code at
**      all! Just replace the bg_tileset background with your own custom tileset, and you
**      can just place collisions in the rm_tile_collisions room! Easy as pie!
*/

//Create the collision map
global.collisionmap = ds_map_create()

//Loop through all active instances
for(var i = 0; i < instance_count; i++)
{
    //With the collision object
    with instance_id[i]
    {
        //If it's not the Hello Mario Engine persistent object
        if object_index != obj_persistent
        {
            //Assign the collision object to a tile
            ds_map_add(global.collisionmap, string(floor(x/16))+","+string(floor(y/16)),object_index)
        }
    }
}
