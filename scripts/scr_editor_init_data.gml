///scr_editor_init_data()

/*
**  Usage:
**      scr_editor_init_data()
**
**  Purpose:
**      Initializes certain globals needed for the level editor to function
*/

//The level data (this is what is saved as a 'level name.json' file)
global.leveldata = noone

//Currently loaded section
global.currentsection = ""

//The name of the level file currently open
global.levelname = ""

//Is the level we're in being edited, tested, or played?
global.editorstate = es_edit

//Camera position to load editor into
global.editor_camx = 0
global.editor_camy = 0

//Collision mapping for tiles
scr_editor_init_collision_map()
