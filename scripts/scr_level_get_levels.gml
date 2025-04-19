///scr_level_get_levels(list)

/*
**  Usage:
**      scr_level_get_levels(list)
**
**  Given:
**      list    ds_list used to store the level names.
*/

var _search = file_find_first_ns("Level\*.json")
while _search != ""
{
    ds_list_add(argument0,_search)
    _search = file_find_next_ns()
}
file_find_close_ns()
