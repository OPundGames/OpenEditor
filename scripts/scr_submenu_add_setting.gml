///scr_submenu_add_setting(setting,icon,text)

/*
**  Usage:
**      scr_submenu_add_setting(setting,icon,text)
**
**  Given:
**      setting         Name of the setting to toggle in level data.
**      icon            Sprite to use as an icon.
**      text            The setting name text displayed to the player.
*/

myrows++
with instance_create(x+319,y+3+(24*myrows),obj_button_toggle)
{
    sprite_index = spr_button_medium
    mysetting = argument0
    toggled = json_get(global.leveldata,global.currentsection,mysetting)
    event_user(2)
}
myicons[array_length_1d(myicons)] = argument1
options[array_length_1d(options)] = argument2
