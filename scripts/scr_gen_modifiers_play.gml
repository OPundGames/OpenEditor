///scr_gen_modifiers_play(section)

/*
**  Usage:
**      scr_gen_modifiers_editor(section)
**
**  Given:
**      section     Section to generate the edit mode modifiers from.
*/

var _objname = "",
    _objcontent = "";
for(var i = json_iterate(global.leveldata,argument0,"MODIFIERS",ds_type_map); json_has_next(i); json_next(i))
{
    _objname = i[JSONITER.VALUE]
    _objcontent = ""
    if string_count(":",_objname) > 0
    {
        _objcontent = string_copy(_objname,string_pos(":",_objname)+1,string_length(_objname)-string_pos(":",_objname)+1)
        _objname = string_copy(_objname,0,string_pos(":",_objname)-1)
    }
    with instance_create(16*real(string_copy(i[JSONITER.KEY],0,string_pos(",",i[JSONITER.KEY]))),16*real(string_copy(i[JSONITER.KEY],string_pos(",",i[JSONITER.KEY])+1,string_length(i[JSONITER.KEY])-(string_pos(",",i[JSONITER.KEY])))),obj_cc_modifier)
    {
        myname = _objname
        event_perform_object(obj_editor_place_modifier,ev_other,ev_user0)
        if _objcontent != ""
            content = _objcontent
    }
}
