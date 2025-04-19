///scr_gen_markers_editor(section)

/*
**  Usage:
**      scr_gen_markers_editor(section)
**
**  Given:
**      section     Section to generate the edit mode markers from.
*/

for(var i = json_iterate(global.leveldata,argument0,"MARKERS",ds_type_map); json_has_next(i); json_next(i))
{
    with instance_create(16*real(string_copy(i[JSONITER.KEY],0,string_pos(",",i[JSONITER.KEY]))),16*real(string_copy(i[JSONITER.KEY],string_pos(",",i[JSONITER.KEY])+1,string_length(i[JSONITER.KEY])-(string_pos(",",i[JSONITER.KEY])))),obj_editor_place_marker)
    {
        myname = i[JSONITER.VALUE]
        event_user(0)
    }
}
