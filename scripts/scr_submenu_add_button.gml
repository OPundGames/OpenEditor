///scr_submenu_add_button(text,[icon],[event])

/*
**  Usage:
**      scr_submenu_add_button(text,icon,event)
**
**  Given:
**      text        The text to display when hovering over the button
**      icon        The button's icon sprite (optional)
**      event       The user defined event to run when the button is clicked (optional)
**
**  Purpose:
**      Quick, easy way to add a submenu button in one line without having to worry about
**      the button's coordinates or managing DS lists.
**
**  Other Notes:
**      This script assumes that it's being called on an editor window with 'xcoord' and
**      'ycoord' declared and set to 0. It also expects 'myrows' to already be set to 1.
*/

if xcoord > 14
{
    xcoord = 0
    ycoord++
    myrows++
}
with instance_create(xstart+3+(24*xcoord),ystart+27+(24*ycoord),obj_ewindow_button)
{
    hovertext = argument[0]
    if argument_count > 1
        myicon = argument[1]
    mywindow = other
    if argument_count > 2
        myevent = argument[2]
    else
        myevent = 14
}
xcoord++
