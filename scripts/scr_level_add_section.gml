///scr_level_add_section(name)

/*
**  Usage:
**      scr_level_add_section(name)
**
**  Given:
**      name    Name of the new section being added.
*/

//Default level data
json_set_nested(global.leveldata,argument0,JsonStruct(JsonMap(
    "TILES", JsonMap(),
    "TILES_BG", JsonMap(),
    "OBJECTS", JsonMap(),
    "MODIFIERS", JsonMap(),
    "MARKERS", JsonMap(),
    "WIDTH", 192,
    "HEIGHT", 27,
    "BACKGROUND", "CLASSIC",
    "MUSIC", "LAND",
    "KEEP_POWERUP", 0,
    "DAREDEVIL", 0,
    "RAIN", 0,
    "SNOW", 0,
    "CLASSIC_SCROLL", 0
)))
