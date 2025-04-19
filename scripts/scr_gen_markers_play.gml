///scr_gen_markers_play(section)

/*
**  Usage:
**      scr_gen_markers_play(section)
**
**  Given:
**      section     Section to generate the play mode markers from.
*/

for(var i = json_iterate(global.leveldata,argument0,"MARKERS",ds_type_map); json_has_next(i); json_next(i))
{
    var _x = 16*real(string_copy(i[JSONITER.KEY],0,string_pos(",",i[JSONITER.KEY]))),
        _y = 16*real(string_copy(i[JSONITER.KEY],string_pos(",",i[JSONITER.KEY])+1,string_length(i[JSONITER.KEY])-(string_pos(",",i[JSONITER.KEY]))));
    switch(i[JSONITER.VALUE])
    {
        case "UP":
            instance_create(_x,_y,obj_up)
            break
        case "DOWN":
            instance_create(_x,_y,obj_down)
            break
        case "LEFT":
            instance_create(_x,_y,obj_left)
            break
        case "RIGHT":
            instance_create(_x,_y,obj_right)
            break
        case "END":
            instance_create(_x,_y,obj_endmarker)
            break
        case "SPEED":
            instance_create(_x,_y,obj_speedmarker)
            break
        case "CLOCKWISE":
            instance_create(_x,_y,obj_clockwise)
            break
        case "COUNTERCLOCKWISE":
            instance_create(_x,_y,obj_cclockwise)
            break
        case "CLOCKWISE BOTTOM":
            instance_create(_x,_y,obj_clockwiseb)
            break
        case "COUNTERCLOCKWISE BOTTOM":
            instance_create(_x,_y,obj_cclockwiseb)
            break
        case "WARP TOP":
            instance_create(_x,_y,obj_warptop)
            break
        case "WARP BOTTOM":
            instance_create(_x,_y,obj_warpbottom)
            break
        case "WARP LEFT":
            instance_create(_x,_y,obj_warpleft)
            break
        case "WARP RIGHT":
            instance_create(_x,_y,obj_warpright)
            break
        case "DOOR":
            instance_create(_x,_y+16,obj_door)
            break
        case "LOCKED DOOR":
            instance_create(_x,_y+16,obj_door_locked)
            break
        case "BOSS DOOR":
            instance_create(_x,_y+16,obj_door_boss)
            break
        case "HIDDEN DOOR":
            instance_create(_x,_y+16,obj_door_hidden)
            break
        case "HIDDEN LOCKED DOOR":
            instance_create(_x,_y+16,obj_door_hidden_locked)
            break
        case "BOMB DOOR":
            instance_create(_x,_y+16,obj_door_bomb)
            break
        case "WARP MARKER":
            instance_create(_x,_y,obj_warpmarker)
            break
        case "WARP CANNON":
            instance_create(_x,_y,obj_warpcannon)
            break
        case "DIAGONAL WARP CANNON":
            instance_create(_x+16,_y,obj_giantwarpcannon)
            break
    }
}
