player_manager.AddValidModel( "CT Urban", "models/player/css/ct_urban.mdl" );
player_manager.AddValidHands( "CT Urban", "models/weapons/c_arms_cstrike_sleeved.mdl", 4, "00000000" )
player_manager.AddValidModel( "CT GSG-9", "models/player/css/ct_gsg9.mdl" );
player_manager.AddValidHands( "CT GSG-9", "models/weapons/c_arms_cstrike_sleeved.mdl", 2, "00000000" )
player_manager.AddValidModel( "CT SAS", "models/player/css/ct_sas.mdl" );
player_manager.AddValidHands( "CT SAS", "models/weapons/c_arms_cstrike_sleeved.mdl", 3, "00000000" )
player_manager.AddValidModel( "CT GIGN", "models/player/css/ct_gign.mdl" );
player_manager.AddValidHands( "CT GIGN", "models/weapons/c_arms_cstrike_sleeved.mdl", 1, "00000000" )

player_manager.AddValidModel( "T Phoenix", "models/player/css/t_phoenix.mdl" );
player_manager.AddValidHands( "T Phoenix", "models/weapons/c_arms_cstrike.mdl", 0, "00000000" )
player_manager.AddValidModel( "T Arctic", "models/player/css/t_arctic.mdl" );
player_manager.AddValidHands( "T Arctic", "models/weapons/c_arms_cstrike_sleeved.mdl", 0, "01000000" )
player_manager.AddValidModel( "T Leet", "models/player/css/t_leet.mdl" );
player_manager.AddValidHands( "T Leet", "models/weapons/c_arms_cstrike_sleeved.mdl", 5, "01000000" )
player_manager.AddValidModel( "T Guerilla", "models/player/css/t_guerilla.mdl" );
player_manager.AddValidHands( "T Guerilla", "models/weapons/c_arms_cstrike.mdl", 0, "00000000" )

list.Set( "PlayerOptionsModel", "CT Urban", "models/player/css/ct_urban.mdl" )
list.Set( "PlayerOptionsAnimations", "CT Urban", { "pose_standing_01", "pose_standing_02" } )
list.Set( "PlayerOptionsModel", "CT GSG-9", "models/player/css/ct_gsg9.mdl" )
list.Set( "PlayerOptionsAnimations", "CT GSG-9", { "pose_standing_01", "pose_standing_02" } )
list.Set( "PlayerOptionsModel", "CT SAS", "models/player/css/ct_sas.mdl" )
list.Set( "PlayerOptionsAnimations", "CT SAS", { "pose_standing_01", "pose_standing_02" } )
list.Set( "PlayerOptionsModel", "CT GIGN", "models/player/css/ct_gign.mdl" )
list.Set( "PlayerOptionsAnimations", "CT GIGN", { "pose_standing_01", "pose_standing_02" } )

list.Set( "PlayerOptionsModel", "T Phoenix", "models/player/css/t_phoenix.mdl" )
list.Set( "PlayerOptionsAnimations", "T Phoenix", { "pose_standing_01", "pose_standing_02" } )
list.Set( "PlayerOptionsModel", "T Arctic", "models/player/css/t_arctic.mdl" )
list.Set( "PlayerOptionsAnimations", "T Arctic", { "pose_standing_01", "pose_standing_02" } )
list.Set( "PlayerOptionsModel", "T Leet", "models/player/css/t_leet.mdl" )
list.Set( "PlayerOptionsAnimations", "T Leet", { "pose_standing_01", "pose_standing_02" } )
list.Set( "PlayerOptionsModel", "T Guerilla", "models/player/css/t_guerilla.mdl" )
list.Set( "PlayerOptionsAnimations", "T Guerilla", { "pose_standing_01", "pose_standing_02" } )
AddCSLuaFile( "css_players_fixed.lua" )