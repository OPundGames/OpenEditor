///scr_return()

/*
**  Usage:
**      scr_return()
**
**  Purpose:
**      Sends Mario back to the editor/title screen, or to the game over screen if he is out of lives.
*/

//If Mario didn't die..
if global.died = 0
{
    //If in challenge mode
    if global.editorstate = es_challenge
    {
            
        //Clear the level data from memory
        ds_map_destroy(global.leveldata)
        
        //Go to challenge mode room
        room_goto(rm_challenge)
        
    }
    
    //If in play mode
    else if global.editorstate = es_play
    {
            
        //Clear the level data from memory
        ds_map_destroy(global.leveldata)
    
        //Go to the level select screen
        room_goto(rm_select)
    
    }
        
    //If in play testing mode
    else
    {
        
        //Go to edit mode
        global.editorstate = es_edit
        
        //Sync camera position with position in play mode
        global.editor_camx = view_xview[0]
        global.editor_camy = view_yview[0]
        
        //Reset editor room
        room_goto(rm_editor)
        
    }
}

//If Mario died...
else
{
    
    //Heal Mario
    global.healthmeter = 3
    
    //Show Mario Start! text
    global.mariostart = 0
    
    //Go to the gameover screen if Mario ran out of lives
    if lives < 1
        room_goto(rm_gameover)
    
    //Otherwise, restart the level
    else
        room_goto(rm_editor)
}
