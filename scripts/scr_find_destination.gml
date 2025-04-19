///scr_find_destination(name)

/*
**  Usage:
**      scr_find_destination(name)
**
**  Given:
**      name        The name of the destination marker to search for
**
**  Returns:
**      Instance ID of the destination marker or -1 if not found
*/

if argument0 == noone
    return -1;
var _dest_id = -1;
with obj_cc_modifier
{
    if mytype = 2
    and content = argument0
        _dest_id = id;
};
return _dest_id;
