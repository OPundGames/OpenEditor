///scr_gen_objects_play(section)

/*
**  Usage:
**      scr_gen_objects_play(section)
**
**  Given:
**      section     Section to generate the play mode objects from.
*/

for(var i = json_iterate(global.leveldata,argument0,"OBJECTS",ds_type_map); json_has_next(i); json_next(i))
{
    if not ((i[JSONITER.VALUE] = "MARIO"
    or i[JSONITER.VALUE] = "WARP MARIO"
    or i[JSONITER.VALUE] = "JUMP MARIO"
    or i[JSONITER.VALUE] = "VINE MARIO")
    and (instance_exists(obj_mario)
    or instance_exists(obj_warpmario)
    or instance_exists(obj_jumpspawn)
    or instance_exists(obj_vinespawn)))
    {
        var _x = 16*real(string_copy(i[JSONITER.KEY],0,string_pos(",",i[JSONITER.KEY]))),
            _y = 16*real(string_copy(i[JSONITER.KEY],string_pos(",",i[JSONITER.KEY])+1,string_length(i[JSONITER.KEY])-(string_pos(",",i[JSONITER.KEY]))));
        switch(i[JSONITER.VALUE])
        {
            case "MARIO":
                instance_create(_x+8,_y,obj_mario)
                break
            case "WARP MARIO":
                instance_create(_x,_y,obj_warpmario)
                break
            case "JUMP MARIO":
                instance_create(_x+8,_y,obj_jumpspawn)
                break
            case "VINE MARIO":
                instance_create(_x+8,_y,obj_vinespawn)
                break
            case "CHECKPOINT":
                instance_create(_x,_y,obj_checkpoint)
                break
            case "FLAGPOLE":
                instance_create(_x,_y,obj_flagpole)
                break
            case "END CASTLE":
                instance_create(_x,_y,obj_incastle)
                break
            case "AUTOSCROLLER":
                instance_create(_x,_y,obj_autoscroll)
                break
            case "COIN":
                instance_create(_x,_y,obj_coin)
                break
            case "P-COIN":
                instance_create(_x,_y,obj_pcoin)
                break
            case "BUBBLE COIN":
                instance_create(_x,_y,obj_bubble_coin)
                break
            case "BUBBLE ITEM":
                instance_create(_x,_y,obj_bubble_item)
                break
            case "ICE COIN":
                instance_create(_x,_y,obj_icecoin)
                break
            case "ICE MUNCHER":
                instance_create(_x,_y,obj_icemuncher)
                break
            case "SPRING":
                instance_create(_x,_y,obj_spring)
                break
            case "HIDDEN SPRING":
                instance_create(_x,_y,obj_spring_hidden)
                break
            case "TIMED SPRING":
                instance_create(_x,_y,obj_spring_timed)
                break
            case "SUPER SPRING":
                instance_create(_x,_y,obj_spring_super)
                break
            case "PROPELLER BLOCK":
                instance_create(_x,_y,obj_propellerblock)
                break
            case "3UP MOON":
                instance_create(_x,_y,obj_3upmoon)
                break
            case "KEY":
                instance_create(_x,_y,obj_key)
                break
            case "P-SWITCH":
                instance_create(_x,_y,obj_pswitch)
                break
            case "E-SWITCH":
                instance_create(_x,_y,obj_eswitch)
                break
            case "RED E-SWITCH":
                instance_create(_x,_y,obj_eswitch_red)
                break
            case "P-PLATFORM":
                instance_create(_x,_y,obj_pplatform)
                break
            case "QUICKSAND":
                instance_create(_x,_y,obj_quicksand)
                break
            case "TOP BLOWPIPE":
                instance_create(_x,_y,obj_blowpipe_top)
                break
            case "BOTTOM BLOWPIPE":
                instance_create(_x,_y,obj_blowpipe_bottom)
                break
            case "LEFT BLOWPIPE":
                instance_create(_x,_y,obj_blowpipe_left)
                break
            case "RIGHT BLOWPIPE":
                instance_create(_x,_y,obj_blowpipe_right)
                break
            case "RIGHT WALL TRIANGLE":
                instance_create(_x,_y,obj_walltriangle_r)
                break
            case "INVERTED RIGHT WALL TRIANGLE":
                instance_create(_x,_y,obj_walltriangle_ir)
                break
            case "LEFT WALL TRIANGLE":
                instance_create(_x,_y,obj_walltriangle_l)
                break
            case "INVERTED LEFT WALL TRIANGLE":
                instance_create(_x,_y,obj_walltriangle_il)
                break
            case "TOP FLIPPERS":
                instance_create(_x,_y,obj_flippers_top)
                break
            case "BOTTOM FLIPPERS":
                instance_create(_x,_y,obj_flippers_bottom)
                break
            case "LEFT FLIPPERS":
                instance_create(_x,_y,obj_flippers_left)
                break
            case "RIGHT FLIPPERS":
                instance_create(_x,_y,obj_flippers_right)
                break
            case "FALLING SPIKE":
                instance_create(_x,_y,obj_fallingspike)
                break
            case "MOVING PLATFORM":
                instance_create(_x,_y,obj_platform_moving)
                break
            case "TOUCH-START MOVING PLATFORM":
                instance_create(_x,_y,obj_platform_touch)
                break
            case "FALLING PLATFORM":
                instance_create(_x,_y,obj_platform_falling)
                break
            case "DONUT":
                instance_create(_x,_y,obj_donut)
                break
            case "RED DONUT":
                instance_create(_x,_y,obj_donut_red)
                break
            case "SPINNING PLATFORM":
                instance_create(_x,_y,obj_platformspin)
                break
            case "TIMED PLATFORM":
                instance_create(_x,_y,obj_platformtimed)
                break
            case "ARROW PLATFORM":
                instance_create(_x,_y,obj_arrowplatform)
                break
            case "MOVING PIPE":
                instance_create(_x,_y,obj_movingpipe)
                break
            case "PARABEETLE":
                instance_create(_x,_y,obj_parabeetle)
                break
            case "BLOCK TRAIN":
                instance_create(_x,_y,obj_blocktrain)
                break
            case "BOUNCER":
                instance_create(_x,_y,obj_bouncer)
                break
            case "H EXPAND PLATFORM":
                instance_create(_x,_y,obj_expandplatform_h)
                break
            case "V EXPAND PLATFORM":
                instance_create(_x,_y,obj_expandplatform_v)
                break
            case "HV EXPAND PLATFORM":
                instance_create(_x,_y,obj_expandplatform_hv)
                break
            case "LEFT CONVEYOR BELT":
                instance_create(_x,_y,obj_conveyor_left)
                break
            case "RIGHT CONVEYOR BELT":
                instance_create(_x,_y,obj_conveyor_right)
                break
            case "MOVING ROPE":
                instance_create(_x,_y,obj_movingrope)
                break
            case "TOUCH-START MOVING ROPE":
                instance_create(_x,_y,obj_movingrope_touch)
                break
            case "MOVING SAW":
                instance_create(_x,_y,obj_movingsaw)
                break
            case "SKULL RAFT":
                instance_create(_x,_y,obj_skullraft)
                break
            case "SMALL TURNIP":
                instance_create(_x,_y,obj_veggie_small)
                break
            case "LARGE TURNIP":
                instance_create(_x,_y,obj_veggie_large)
                break
            case "COIN TURNIP":
                instance_create(_x,_y,obj_veggie_coin)
                break
            case "MULTI-COIN TURNIP":
                instance_create(_x,_y,obj_veggie_multicoin)
                break
            case "SHROOM TURNIP":
                with instance_create(_x,_y,obj_veggie_sprout) sprout = cs_big
                break
            case "1UP TURNIP":
                with instance_create(_x,_y,obj_veggie_sprout) sprout = cs_1up
                break
            case "POISON TURNIP":
                with instance_create(_x,_y,obj_veggie_sprout) sprout = cs_poison
                break
            case "STAR TURNIP":
                with instance_create(_x,_y,obj_veggie_sprout) sprout = cs_star
                break
            case "BOMB TURNIP":
                instance_create(_x,_y,obj_veggie_bomb)
                break
            case "SHELL TUTNIP":
                instance_create(_x,_y,obj_veggie_shell)
                break
            case "POW BLOCK":
                instance_create(_x,_y,obj_powblock)
                break
            case "STACKABLE BLOCK":
                instance_create(_x,_y,obj_mblock)
                break
            case "SHROOM BLOCK":
                instance_create(_x,_y,obj_pullmush)
                break
            case "DIG SAND":
                instance_create(_x,_y,obj_digsand)
                break
            case "WATER TOP":
                instance_create(_x,_y,obj_watertop)
                break
            case "WATER TOP 2":
                with instance_create(_x,_y,obj_watertop) sprite_index = spr_watertop2
                break
            case "WATERFALL":
                instance_create(_x,_y,obj_wfall)
                break
            case "VINE":
                instance_create(_x,_y,obj_vine)
                break
            case "MUNCHER":
                instance_create(_x,_y,obj_muncher)
                break
            case "MUNCHER 2":
                with instance_create(_x,_y,obj_muncher) sprite_index = spr_muncher_b
                break
            case "JELECTRO":
                instance_create(_x,_y,obj_jelectro)
                break
            case "LAVA":
                instance_create(_x,_y,obj_lava)
                break
            case "LAVA RIGHT SLOPE":
                instance_create(_x,_y,obj_lava_r)
                break
            case "LAVA LEFT SLOPE":
                instance_create(_x,_y,obj_lava_l)
                break
            case "LAVA RIGHT STEEP SLOPE":
                instance_create(_x,_y,obj_lava_sr)
                break
            case "LAVA LEFT STEEP SLOPE":
                instance_create(_x,_y,obj_lava_sl)
                break
            case "TOAD HOUSE":
                instance_create(_x,_y,obj_toadhouse)
                break
            case "TOAD HOUSE 2":
                with instance_create(_x,_y,obj_toadhouse) image_index = 1
                break
            case "TOAD HOUSE 3":
                with instance_create(_x,_y,obj_toadhouse) image_index = 2
                break
            case "LUIGI NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_luigi
                    mugshot = spr_mugshot_luigi
                }
                break
            case "WARIO NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_wario
                    mugshot = spr_mugshot_wario
                }
                break
            case "WALUIGI NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_waluigi
                    mugshot = spr_mugshot_waluigi
                }
                break
            case "PEACH NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_peach
                    mugshot = spr_mugshot_peach
                }
                break
            case "DAISY NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_daisy
                    mugshot = spr_mugshot_daisy
                }
                break
            case "ROSALINA NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_rosalina
                    mugshot = spr_mugshot_rosalina
                }
                break
            case "PEACHETTE NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_peachette
                    mugshot = spr_mugshot_peachette
                }
                break
            case "BOWSETTE NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_bowsette
                    mugshot = spr_mugshot_bowsette
                }
                break
            case "RED TOAD NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_toad_red
                    mugshot = spr_mugshot_toad_red
                }
                break
            case "BLUE TOAD NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_toad_blue
                    mugshot = spr_mugshot_toad_blue
                }
                break
            case "YELLOW TOAD NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_toad_yellow
                    mugshot = spr_mugshot_toad_yellow
                }
                break
            case "GREEN TOAD NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_toad_green
                    mugshot = spr_mugshot_toad_green
                }
                break
            case "PINK TOADETTE NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_toadette_pink
                    mugshot = spr_mugshot_toadette_pink
                }
                break
            case "PURPLE TOADETTE NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_toadette_purple
                    mugshot = spr_mugshot_toadette_purple
                }
                break
            case "CYAN TOADETTE NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_toadette_cyan
                    mugshot = spr_mugshot_toadette_cyan
                }
                break
            case "ORANGE TOADETTE NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_toadette_orange
                    mugshot = spr_mugshot_toadette_orange
                }
                break
            case "TOADSWORTH NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_toadsworth
                    mugshot = spr_mugshot_toadsworth
                }
                break
            case "BOWSER NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = spr_npc_bowser
                    mugshot = spr_mugshot_bowser
                }
                break
            case "NONE NPC":
                with instance_create(_x+8,_y,obj_npc)
                {
                    sprite_index = noone
                    mugshot = spr_mugshot_none
                }
                break
            case "QUESTION BLOCK":
                instance_create(_x,_y,obj_block)
                break
            case "MULTICOIN BLOCK":
                instance_create(_x,_y,obj_block_multicoin)
                break
            case "MULTICOIN SHROOM BLOCK":
                instance_create(_x,_y,obj_block_multicoin_shroom)
                break
            case "COIN CHAIN BLOCK":
                instance_create(_x,_y,obj_block_coinchain)
                break
            case "HIDDEN BLOCK":
                instance_create(_x,_y,obj_block_hidden)
                break
            case "TRIPLE BLOCK":
                instance_create(_x,_y,obj_block_triple)
                break
            case "TRIPLE HIDDEN BLOCK":
                instance_create(_x,_y,obj_block_triple_hidden)
                break
            case "LARGE BLOCK":
                instance_create(_x,_y,obj_block_large)
                break
            case "SPIKED BLOCK":
                instance_create(_x,_y,obj_block_spiked)
                break
            case "WINGED BLOCK":
                instance_create(_x,_y,obj_block_winged)
                break
            case "BUMP BLOCK":
                instance_create(_x,_y,obj_bump)
                break
            case "BRICK":
                instance_create(_x,_y,obj_brick)
                break
            case "BLUE BRICK":
                instance_create(_x,_y,obj_bluebrick)
                break
            case "RED BRICK":
                instance_create(_x,_y,obj_redbrick)
                break
            case "GREEN BRICK":
                instance_create(_x,_y,obj_greenbrick)
                break
            case "BOMB BRICK":
                instance_create(_x,_y,obj_bombbrick)
                break
            case "FLIP BLOCK":
                instance_create(_x,_y,obj_flipblock)
                break
            case "NOTE BLOCK":
                instance_create(_x,_y,obj_noteblock)
                break
            case "HIDDEN NOTE BLOCK":
                instance_create(_x,_y,obj_noteblock_hidden)
                break
            case "YELLOW NOTE BLOCK":
                instance_create(_x,_y,obj_noteblock_yellow)
                break
            case "HIDDEN YELLOW NOTE BLOCK":
                instance_create(_x,_y,obj_yellownoteblock_hidden)
                break
            case "WARP NOTE BLOCK":
                instance_create(_x,_y,obj_noteblock_warp)
                break
            case "HIDDEN WARP NOTE BLOCK":
                instance_create(_x,_y,obj_warpnoteblock_hidden)
                break
            case "MESSAGE BLOCK":
                instance_create(_x,_y,obj_messageblock)
                break
            case "BLUE POW BLOCK":
                instance_create(_x,_y,obj_block_pow)
                break
            case "ROULETTE BLOCK":
                instance_create(_x,_y,obj_block_view)
                break
            case "ON OFF BLOCK":
                instance_create(_x,_y,obj_onoffblock)
                break
            case "ON OFF PLATFORM":
                instance_create(_x,_y,obj_onoffplatform)
                break
            case "GRAY FLOWER BLOCK":
                instance_create(_x,_y,obj_flowerblock)
                break
            case "GRAY HAMMER BLOCK":
                instance_create(_x,_y,obj_hammerblock)
                break
            case "GRAY BOOMERANG BLOCK":
                instance_create(_x,_y,obj_boomerangblock)
                break
            case "GRAY LEAF BLOCK":
                instance_create(_x,_y,obj_leafblock)
                break
            case "GRAY STAR BLOCK":
                instance_create(_x,_y,obj_starblock)
                break
            case "GRAY BOMB BLOCK":
                instance_create(_x,_y,obj_bombblock)
                break
            case "GRAY SHELL BLOCK":
                instance_create(_x,_y,obj_shellblock)
                break
            case "GRAY SWITCH BLOCK":
                instance_create(_x,_y,obj_switchblock)
                break
            case "GRAY SHOE BLOCK":
                instance_create(_x,_y,obj_kuriboblock)
                break
            case "GRAY FEMALE BLOCK":
                instance_create(_x,_y,obj_femaleblock)
                break
            case "GOOMBA":
                instance_create(_x,_y,obj_goomba)
                break
            case "PARAGOOMBA":
                instance_create(_x,_y,obj_paragoomba)
                break
            case "BUBBLE GOOMBA":
                instance_create(_x,_y,obj_bubblegoomba)
                break
            case "SHOE GOOMBA":
                instance_create(_x,_y,obj_shoegoomba)
                break
            case "BRICK GOOMBA":
                instance_create(_x,_y,obj_brickgoomba)
                break
            case "GALOOMBA":
                instance_create(_x+8,_y,obj_galoomba)
                break
            case "PARACHUTE GALOOMBA":
                instance_create(_x+8,_y,obj_galoomba_parachute)
                break
            case "KOOPA":
                instance_create(_x+8,_y,obj_koopa)
                break
            case "RED KOOPA":
                instance_create(_x+8,_y,obj_koopa_red)
                break
            case "HYPER KOOPA":
                instance_create(_x+8,_y,obj_koopa_hyper)
                break
            case "PARAKOOPA":
                instance_create(_x+8,_y,obj_parakoopa)
                break
            case "RED PARAKOOPA":
                instance_create(_x+8,_y,obj_parakoopa_red)
                break
            case "HYPER PARAKOOPA":
                instance_create(_x+8,_y,obj_parakoopa_hyper)
                break
            case "JUMPING KOOPA":
                instance_create(_x+8,_y,obj_jumpingkoopa)
                break
            case "REX":
                instance_create(_x+8,_y,obj_rex)
                break
            case "SPIKE":
                instance_create(_x+8,_y,obj_spike)
                break
            case "PURPLE HOOPSTER":
                instance_create(_x,_y,obj_hoopster)
                break
            case "RED NINJI":
                instance_create(_x+8,_y,obj_ninji_red)
                break
            case "WIGGLER":
                instance_create(_x+8,_y,obj_wiggler)
                break
            case "CHEEP CHEEP":
                instance_create(_x+8,_y,obj_cheepcheep)
                break
            case "GREEN CHEEP CHEEP":
                with instance_create(_x+8,_y,obj_cheepcheep) sprite_index = spr_greencheep
                break
            case "SPIKED CHEEP CHEEP":
                instance_create(_x+8,_y,obj_spikedcheep)
                break
            case "URCHIN":
                instance_create(_x,_y,obj_urchin)
                break
            case "TORPEDO TED":
                instance_create(_x,_y,obj_torpedolaunch)
                break
            case "RIP VAN FISH":
                instance_create(_x+8,_y,obj_ripvanfish)
                break
            case "PORCUPUFFER":
                instance_create(_x,_y,obj_porcupuffer)
                break
            case "LAVA LOTUS":
                instance_create(_x,_y,obj_lavalotus)
                break
            case "FISHBONE":
                instance_create(_x+7,_y,obj_fishbone)
                break
            case "BLOOPER":
                instance_create(_x,_y,obj_blooper)
                break
            case "NIPPER":
                instance_create(_x+8,_y,obj_nipper)
                break
            case "MONTY MOLE":
                instance_create(_x,_y,obj_montymole)
                break
            case "VULCANO LOTUS":
                instance_create(_x,_y,obj_vulcanolotus)
                break
            case "DINO TORCH":
                instance_create(_x+8,_y,obj_dinotorch)
                break
            case "FIRE SNAKE":
                instance_create(_x,_y,obj_firesnake)
                break
            case "POKEY":
                instance_create(_x+8,_y,obj_pokey)
                break
            case "HAMMER BRO":
                instance_create(_x+8,_y,obj_hammerbro)
                break
            case "FIRE BRO":
                instance_create(_x+8,_y,obj_firebro)
                break
            case "BOOMERANG BRO":
                instance_create(_x+8,_y,obj_boomerangbro)
                break
            case "SLEDGE BRO":
                instance_create(_x,_y,obj_sledgebro)
                break
            case "SUMO BRO":
                instance_create(_x,_y,obj_sumobro)
                break
            case "AMAZING FLYING HAMMER BRO":
                instance_create(_x,_y,obj_flyingbro)
                break
            case "CHARGING CHUCK":
                instance_create(_x,_y,obj_chargingchuck)
                break
            case "BUZZY BEETLE":
                instance_create(_x+8,_y,obj_buzzybeetle)
                break
            case "SPINY":
                instance_create(_x+8,_y,obj_spiny)
                break
            case "CEILING BUZZY BEETLE":
                instance_create(_x+8,_y,obj_buzzy_ceiling)
                break
            case "CEILING SPINY":
                instance_create(_x+8,_y,obj_spiny_ceiling)
                break
            case "PIRANHA PLANT":
                instance_create(_x,_y,obj_piranhaplant)
                break
            case "DOWN PIRANHA PLANT":
                instance_create(_x,_y,obj_piranhaplant_down)
                break
            case "RIGHT PIRANHA PLANT":
                instance_create(_x,_y,obj_piranhaplant_right)
                break
            case "LEFT PIRANHA PLANT":
                instance_create(_x,_y,obj_piranhaplant_left)
                break
            case "RED PIRANHA PLANT":
                instance_create(_x,_y,obj_piranhaplant_red)
                break
            case "DOWN RED PIRANHA PLANT":
                instance_create(_x,_y,obj_piranhaplant_down_red)
                break
            case "RIGHT RED PIRANHA PLANT":
                instance_create(_x,_y,obj_piranhaplant_right_red)
                break
            case "LEFT RED PIRANHA PLANT":
                instance_create(_x,_y,obj_piranhaplant_left_red)
                break
            case "SHORT PIRANHA PLANT":
                instance_create(_x,_y,obj_piranhaplant_short)
                break
            case "DOWN SHORT PIRANHA PLANT":
                instance_create(_x,_y,obj_piranhaplant_down_short)
                break
            case "JUMP PIRANHA PLANT":
                instance_create(_x,_y,obj_jumppiranha)
                break
            case "RED JUMP PIRANHA PLANT":
                instance_create(_x,_y,obj_jumppiranha_red)
                break
            case "FIRE PIRANHA PLANT":
                instance_create(_x,_y,obj_firepiranha)
                break
            case "DOWN FIRE PIRANHA PLANT":
                instance_create(_x,_y,obj_firepiranha_down)
                break
            case "RIGHT FIRE PIRANHA PLANT":
                instance_create(_x,_y,obj_firepiranha_right)
                break
            case "LEFT FIRE PIRANHA PLANT":
                instance_create(_x,_y,obj_firepiranha_left)
                break
            case "RED FIRE PIRANHA PLANT":
                instance_create(_x,_y,obj_firepiranha)
                break
            case "DOWN RED FIRE PIRANHA PLANT":
                instance_create(_x,_y,obj_firepiranha_down)
                break
            case "RIGHT RED FIRE PIRANHA PLANT":
                instance_create(_x,_y,obj_firepiranha_right)
                break
            case "LEFT RED FIRE PIRANHA PLANT":
                instance_create(_x,_y,obj_firepiranha_left)
                break
            case "BALL PIRANHA PLANT":
                instance_create(_x,_y,obj_ballpiranha)
                break
            case "PTOOIE":
                instance_create(_x,_y,obj_ptooie)
                break
            case "SWOOPER":
                instance_create(_x+8,_y,obj_swooper)
                break
            case "BUSTER BEETLE":
                instance_create(_x+8,_y,obj_busterbeetle)
                break
            case "NOKOBON":
                instance_create(_x+8,_y,obj_nokobon)
                break
            case "SPIKETOP":
                instance_create(_x+8,_y,obj_spiketop)
                break
            case "BLARGG":
                instance_create(_x+8,_y,obj_blargg)
                break
            case "SHY GUY":
                instance_create(_x+8,_y,obj_shyguy)
                break
            case "BLUE SHY GUY":
                instance_create(_x+8,_y,obj_shyguy_b)
                break
            case "SNIFIT":
                instance_create(_x+8,_y,obj_snifit)
                break
            case "BLUE SNIFIT":
                instance_create(_x+8,_y,obj_snifit_b)
                break
            case "BIG SHY GUY":
                instance_create(_x,_y,obj_shyguybig)
                break
            case "BIG BLUE SHY GUY":
                instance_create(_x,_y,obj_shyguybig_b)
                break
            case "BOMB GUY":
                instance_create(_x+8,_y,obj_bombguy)
                break
            case "NINJI":
                instance_create(_x+8,_y,obj_ninji)
                break
            case "TWEETER":
                instance_create(_x+8,_y,obj_tweeter)
                break
            case "GRAY SNIFIT":
                instance_create(_x+8,_y,obj_snifit_g)
                break
            case "HOOPSTER":
                instance_create(_x+8,_y,obj_redhoopster)
                break
            case "FLURRY":
                instance_create(_x+8,_y,obj_flurry)
                break
            case "GREEN POKEY":
                instance_create(_x+8,_y,obj_pokey_green)
                break
            case "RED PANSER":
                instance_create(_x,_y,obj_panser_red)
                break
            case "GREEN PANSER":
                instance_create(_x,_y,obj_panser_green)
                break
            case "BLUE PANSER":
                instance_create(_x,_y,obj_panser_blue)
                break
            case "PORCUPO":
                instance_create(_x+8,_y,obj_porcupo)
                break
            case "DRY BONES":
                instance_create(_x+8,_y,obj_drybones)
                break
            case "BONY BEETLE":
                instance_create(_x+8,_y,obj_bonybeetle)
                break
            case "PODOBOO":
                instance_create(_x,_y,obj_podoboo)
                break
            case "THWOMP":
                instance_create(_x,_y,obj_thwomp)
                break
            case "THWIMP":
                instance_create(_x,_y,obj_thwimp)
                break
            case "NET KOOPA":
                instance_create(_x,_y,obj_netkoopa)
                break
            case "RED NET KOOPA":
                instance_create(_x,_y,obj_netkoopa_red)
                break
            case "HYPER NET KOOPA":
                instance_create(_x,_y,obj_netkoopa_hyper)
                break
            case "NET SPARK":
                instance_create(_x,_y,obj_netspark)
                break
            case "LITTLE SPARK":
                instance_create(_x,_y,obj_littlespark)
                break
            case "FAST SPARK":
                instance_create(_x,_y,obj_fastspark)
                break
            case "GIANT SPARK":
                instance_create(_x,_y,obj_giantspark)
                break
            case "PHANTO":
                instance_create(_x,_y,obj_phanto)
                break
            case "ROTODISC":
                scr_cc_rotation(instance_create(_x,_y,obj_rotodisc))
                break
            case "FIREBAR":
                scr_cc_rotation(instance_create(_x+8,_y,obj_firebar))
                break
            case "LARGE FIREBAR":
                scr_cc_rotation(instance_create(_x+8,_y,obj_firebar_large))
                break
            case "GRINDER":
                instance_create(_x,_y,obj_grinder)
                break
            case "LINE GRINDER":
                instance_create(_x,_y,obj_grinder)
                break
            case "BALL & CHAIN":
                scr_cc_rotation(instance_create(_x,_y,obj_ballnchain))
                break
            case "BOUNCE PODOBOO":
                instance_create(_x,_y,obj_podoboo_bounce)
                break
            case "GIANT SPIKE":
                instance_create(_x,_y,obj_giantspike)
                break
            case "BOWSER STATUE":
                instance_create(_x,_y,obj_bowserstatue)
                break
            case "GOLD BOWSER STATUE":
                instance_create(_x+8,_y,obj_bowserstatue_gold)
                break
            case "MECHAKOOPA":
                instance_create(_x+8,_y,obj_mechakoopa)
                break
            case "CHAIN CHOMP":
                instance_create(_x,_y,obj_chainchomp)
                break
            case "FIRE CHOMP":
                instance_create(_x,_y,obj_firechomp)
                break
            case "BOO":
                instance_create(_x,_y,obj_boo)
                break
            case "BIG BOO":
                instance_create(_x,_y,obj_bigboo)
                break
            case "STRETCH BOO":
                instance_create(_x+8,_y,obj_stretchboo)
                break
            case "BLOCK BOO":
                instance_create(_x,_y,obj_blockboo)
                break
            case "EERIE":
                instance_create(_x+8,_y,obj_eerie)
                break
            case "BOO CIRCLE":
                scr_cc_rotation(instance_create(_x,_y,obj_boocircle))
                break
            case "BOO SNAKE":
                instance_create(_x,_y,obj_boosnake)
                break
            case "BOBOMB":
                instance_create(_x+8,_y,obj_bobomb)
                break
            case "PARACHUTE BOBOMB":
                instance_create(_x+8,_y,obj_bobomb_parachute)
                break
            case "BULLET BILL":
                instance_create(_x,_y,obj_bulletbill)
                break
            case "SIDE BULLET BILL":
                instance_create(_x,_y,obj_bulletbill_side)
                break
            case "HOMING BULLET BILL":
                instance_create(_x,_y,obj_bulletbill_homing)
                break
            case "BANZAI BILL":
                instance_create(_x,_y,obj_banzaibill)
                break
            case "DIAGONAL CANNON":
                instance_create(_x,_y,obj_diacannon)
                break
            case "BOBOMB CANNON":
                instance_create(_x,_y,obj_bombcannon)
                break
            case "SIDE CANNON":
                instance_create(_x,_y,obj_sidecannon)
                break
            case "QUAD CANNON":
                instance_create(_x,_y,obj_sidecannon)
                break
            case "LARGE CANNONBALL":
                instance_create(_x,_y,obj_largecannon)
                break
            case "RIGHT ENGINE":
                instance_create(_x,_y,obj_engine2)
                break
            case "LEFT ENGINE":
                instance_create(_x,_y,obj_engine)
                break
            case "UP ENGINE":
                instance_create(_x,_y,obj_vengine)
                break
            case "DOWN ENGINE":
                instance_create(_x,_y,obj_vengine2)
                break
            case "ROCKY WRENCH":
                instance_create(_x,_y,obj_rockywrench)
                break
            case "BULLET GENERATOR":
                instance_create(_x,_y,obj_bulletgenerator)
                break
            case "STORM GENERATOR":
                instance_create(_x,_y,obj_stormgenerator)
                break
            case "CHEEP CHEEP GENERATOR":
                instance_create(_x+8,_y,obj_cheepgenerator)
                break
            case "LAKITU":
                instance_create(_x,_y,obj_lakitu)
                break
            case "BALL LAKITU":
                instance_create(_x,_y,obj_lakitu_ball)
                break
            case "ANGRY SUN":
                instance_create(_x,_y,obj_angrysun)
                break
            case "MAGIKOOPA":
                instance_create(_x+8,_y,obj_magikoopa)
                break
            case "BOOM BOOM":
                with instance_create(_x,_y,obj_boomboom) alarm[10] = 1
                break
            case "LARRY KOOPA":
                with instance_create(_x,_y,obj_larry) alarm[10] = 1
                break
            case "MORTON KOOPA":
                with instance_create(_x,_y,obj_morton) alarm[10] = 1
                break
            case "WENDY KOOPA":
                with instance_create(_x,_y,obj_wendy) alarm[10] = 1
                break
            case "IGGY KOOPA":
                with instance_create(_x,_y,obj_iggy) alarm[10] = 1
                break
            case "ROY KOOPA":
                with instance_create(_x,_y,obj_roy) alarm[10] = 1
                break
            case "LEMMY KOOPA":
                with instance_create(_x,_y,obj_lemmy) alarm[10] = 1
                break
            case "LUDWIG KOOPA":
                with instance_create(_x,_y,obj_ludwig) alarm[10] = 1
                break
            case "BIRDO":
                with instance_create(_x+8,_y,obj_birdo) alarm[10] = 1
                break
            case "MOUSER":
                with instance_create(_x,_y,obj_mouser) alarm[10] = 1
                break
            case "REZNOR":
                instance_create(_x,_y,obj_reznor)
                break
            case "BOWSER":
                instance_create(_x,_y,obj_classicbowser)
                break
            case "AXE":
                instance_create(_x,_y,obj_axe)
                break
            case "COLLAPSING BRIDGE":
                instance_create(_x,_y,obj_bridge)
                break
            case "END BOSS":
                instance_create(_x,_y,obj_endboss)
                break
        }
    }
}
