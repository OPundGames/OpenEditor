///scr_cc_rotation(instance_id)

/*
**  Usage:
**      scr_cc_rotation(instance_id)
**
**  Given:
**      instance_id       The object to modify the rotation creation code of
**
**  Purpose:
**      Modify starting rotation creation code of what ever instance is given.
*/
with argument0
{
    if collision_point(x,y,obj_clockwise,0,1)
    or collision_point(x,y,obj_clockwiseb,0,1)
        ready = 1
    if collision_point(x,y,obj_cclockwise,0,1)
    or collision_point(x,y,obj_cclockwiseb,0,1)
        ready = -1
}
