///scr_gen_music(section)

/*
**  Usage:
**      scr_gen_music(section)
**
**  Given:
**      section     Section to generate music from.
**
**  Returns:
**      The music asset ID to play level music with.
*/

var _music = json_get(global.leveldata,argument0,"MUSIC");
switch (_music)
{
    case "LAND": return snd_music_land
    case "BLOCKS": return snd_music_blocks
    case "ATHLETIC": return snd_music_athletic
    case "CAVE": return snd_music_under
    case "WATER": return snd_music_water
    case "SWIM": return snd_music_swim
    case "FOREST": return snd_music_forest
    case "RAILROAD": return snd_music_railroad
    case "ROAD": return snd_music_road
    case "SAFARI": return snd_music_safari
    case "SUBCON": return snd_music_subcon
    case "SUBCON CAVE": return snd_music_subconcave
    case "SUBCON BOSS": return snd_music_subconboss
    case "TOWER": return snd_music_tower
    case "WINE": return snd_music_wine
    case "YOSHI": return snd_music_yoshi
    case "FACTORY": return snd_music_factory
    case "VOLCANO": return snd_music_volcano
    case "SECRET": return snd_palacemusic
    case "BONUS": return snd_music_bonus
    case "HAMMER BATTLE": return snd_hammerbattle
    case "CASTLE": return snd_music_castle
    case "FORT": return snd_music_fort
    case "GHOST": return snd_music_ghost
    case "AIRSHIP": return snd_music_airship
    case "BOSS": return snd_music_boss
    case "FINAL BOSS": return snd_music_finalboss
    case "CIRCUIT": return snd_music_circuit
    case "CHOCO": return snd_music_choco
    case "MUSIC BOX": return snd_music_musicbox
    case "MINIGAME": return snd_bonusmusic
    case "GRASS": return snd_mapmusic
    case "DESERT": return snd_music_desert
    case "BEACH": return snd_music_beach
    case "GIANT": return snd_music_giant
    case "GROUND": return snd_music_ground
    case "SKY": return snd_music_sky
    case "ICE": return snd_music_ice
    case "PIPE": return snd_music_pipe
    case "DARK": return snd_music_dark
    default: return noone
}
