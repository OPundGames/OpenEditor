///scr_gen_tiles(section)

//Normal tiles
for(var i = json_iterate(global.leveldata,global.currentsection,"TILES",ds_type_map); json_has_next(i); json_next(i))
{
    tile_add(bg_tileset,16*real(string_copy(i[JSONITER.VALUE],0,string_pos(",",i[JSONITER.VALUE]))),16*real(string_copy(i[JSONITER.VALUE],string_pos(",",i[JSONITER.VALUE])+1,string_length(i[JSONITER.VALUE])-(string_pos(",",i[JSONITER.VALUE])))),16,16,16*real(string_copy(i[JSONITER.KEY],0,string_pos(",",i[JSONITER.KEY]))),16*real(string_copy(i[JSONITER.KEY],string_pos(",",i[JSONITER.KEY])+1,string_length(i[JSONITER.KEY])-(string_pos(",",i[JSONITER.KEY])))),9)
    
    //Generate collisions if in play mode
    if json_exists(global.collisionmap,i[JSONITER.VALUE])
    and global.editorstate != es_edit
    {
        instance_create(16*real(string_copy(i[JSONITER.KEY],0,string_pos(",",i[JSONITER.KEY]))),16*real(string_copy(i[JSONITER.KEY],string_pos(",",i[JSONITER.KEY])+1,string_length(i[JSONITER.KEY])-(string_pos(",",i[JSONITER.KEY])))),json_get(global.collisionmap,i[JSONITER.VALUE]))
    }
}

//Background tiles
for(var i = json_iterate(global.leveldata,global.currentsection,"TILES_BG",ds_type_map); json_has_next(i); json_next(i))
{
    tile_add(bg_tileset,16*real(string_copy(i[JSONITER.VALUE],0,string_pos(",",i[JSONITER.VALUE]))),16*real(string_copy(i[JSONITER.VALUE],string_pos(",",i[JSONITER.VALUE])+1,string_length(i[JSONITER.VALUE])-(string_pos(",",i[JSONITER.VALUE])))),16,16,16*real(string_copy(i[JSONITER.KEY],0,string_pos(",",i[JSONITER.KEY]))),16*real(string_copy(i[JSONITER.KEY],string_pos(",",i[JSONITER.KEY])+1,string_length(i[JSONITER.KEY])-(string_pos(",",i[JSONITER.KEY])))),12)
}
