///scr_gen_background(section)

/*
**  Usage:
**      scr_gen_background(section)
**
**  Given:
**      section     Section to generate the background from.
*/

var _bg = json_get(global.leveldata,argument0,"BACKGROUND");
with obj_bganimator
{
    anibg = array_create(0)
    numb = 0
    switch (_bg)
    {
        case "CLASSIC":
            anibg[0] = bg_classic
            break
        case "STARRY NIGHT":
            anibg[0] = bg_starrynight_0
            anibg[1] = bg_starrynight_1
            anibg[2] = bg_starrynight_2
            anibg[3] = bg_starrynight_1
            break
        case "CLOUDS":
            anibg[0] = bg_clouds
            break
        case "CAVE":
            anibg[0] = bg_underground
            break
        case "BLUE CAVE":
            anibg[0] = bg_underground_blue
            break
        case "CAVE ENTRANCE":
            anibg[0] = bg_cave_entrance
            break
        case "UNDERWATER":
            anibg[0] = bg_underwater
            if global.editorstate != es_edit
            {
                instance_create(0,0,obj_fillwater)
            }
            break
        case "DESERT":
            anibg[0] = bg_desert
            break
        case "DESERT BRICKS":
            anibg[0] = bg_desert_bricks
            break
        case "SNOW":
            anibg[0] = bg_snow
            break
        case "CASTLE GARDEN":
            anibg[0] = bg_castle_garden
            break
        case "MOUNTAIN":
            anibg[0] = bg_mountain
            break
        case "HILLS":
            anibg[0] = bg_hills
            break
        case "SKY HILLS":
            anibg[0] = bg_skyhills
            break
        case "SNOW HILLS":
            anibg[0] = bg_snowhills
            break
        case "ICE":
            anibg[0] = bg_ice_0
            anibg[1] = bg_ice_1
            anibg[2] = bg_ice_2
            anibg[3] = bg_ice_3
            anibg[4] = bg_ice_4
            anibg[5] = bg_ice_5
            break
        case "METAL":
            anibg[0] = bg_metal
            break
        case "PIPES":
            anibg[0] = bg_pipes
            break
        case "WATERFALL":
            anibg[0] = bg_waterfall_0
            anibg[1] = bg_waterfall_1
            anibg[2] = bg_waterfall_2
            anibg[3] = bg_waterfall_3
            break
        case "FOREST":
            anibg[0] = bg_forest_0
            anibg[1] = bg_forest_1
            anibg[2] = bg_forest_2
            anibg[3] = bg_forest_1
            break
        case "BONUS":
            anibg[0] = bg_bonus
            break
        case "HOUSE":
            anibg[0] = bg_house
            break
        case "MINIGAME":
            anibg[0] = bg_minigame
            break
        case "DUNGEON":
            anibg[0] = bg_dungeon
            break
        case "VOLCANO":
            anibg[0] = bg_volcano
            break
        case "CASTLE":
            anibg[0] = bg_castle
            break
        case "FORT":
            anibg[0] = bg_fort
            break
        case "GHOST":
            anibg[0] = bg_ghost
            break
        case "AIRSHIP":
            anibg[0] = bg_airship
            break
        case "STORM":
            anibg[0] = bg_storm
            break
    }
    background_index[0] = anibg[0]
}

