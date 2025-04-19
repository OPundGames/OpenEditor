///scr_init_extensions()

/*
**  Usage:
**      scr_init_extensions()
**
**  Purpose:
**      Initializes the extensions used in Open Editor
*/

//Check program directory for GMSched
if file_exists(working_directory+"gmsched.dll")
{
    gmsched_init()
}
//Otherwise, give an error
else
{
    show_message("gmsched.dll not found.##Please extract all files before playing. Thank you!")
    game_end()
}

//Check program directory for nsfs
if file_exists(working_directory+"nsfs.dll")
{
    //Initialize NSFS extension
    nsfs_init()
    
    //Set the working directory for NSFS
    nsfs_set_directory(working_directory)
}
//Otherwise, give an error
else
{
    show_message("nsfs.dll not found.##Please extract all files before playing. Thank you!")
    game_end()
}
