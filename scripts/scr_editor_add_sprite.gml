///scr_editor_add_sprite(sprite,[animation],[xoffset],[yoffset],[alpha],[subimg],[xscale],[yscale])

/*
**  Usage:
**      scr_editor_add_sprite(sprite,[animation],[xoffset],[yoffset],[alpha],[subimg],[xscale],[yscale])
**
**  Given:
**      sprite          The sprite to add
**      animation       Animation for the sprite to use (optional)
**      xoffset         The sprite's X offset (optional)
**      yoffset         The sprite's Y offset (optional)
**      alpha           The sprite's transparency (optional)
**      subimg          The sprite's subimage offset (optional)
**      xscale          The X scale of the sprite (optional)
**      yscale          The Y scale of the sprite (optional)
**
**  Purpose:
**      This script is used as an abstraction to make adding sprites to the
**      editor object/marker previews less tedious, as without this it would
**      take multiple lines of code just for one sprite. This isn't COMPLETELY
**      necessary, but it DOES make adding new objects WAY easier.
**
**  Additional Notes:
**      This script assumes that the calling instance is either
**      obj_editor_place_object OR obj_editor_place_marker. Calling this script
**      with any other object WILL throw an error! Use caution pls. Thank you!
*/

var _sprite_count = array_length_1d(select_sprite);
select_sprite[_sprite_count] = argument[0]
if argument_count > 1
    select_sprite_animation[_sprite_count] = argument[1]
else
    select_sprite_animation[_sprite_count] = 0
if argument_count > 2
    select_sprite_x[_sprite_count] = argument[2]
else
    select_sprite_x[_sprite_count] = 0
if argument_count > 3
    select_sprite_y[_sprite_count] = argument[3]
else
    select_sprite_y[_sprite_count] = 0
if argument_count > 4
    select_sprite_alpha[_sprite_count] = argument[4]
else
    select_sprite_alpha[_sprite_count] = 1
if argument_count > 5
    select_sprite_subimg[_sprite_count] = argument[5]
else
    select_sprite_subimg[_sprite_count] = 0
if argument_count > 6
    select_sprite_xscale[_sprite_count] = argument[6]
else
    select_sprite_xscale[_sprite_count] = 1
if argument_count > 7
    select_sprite_yscale[_sprite_count] = argument[7]
else
    select_sprite_yscale[_sprite_count] = 1
