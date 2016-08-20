if CLIENT then return end

AddCSLuaFile("autorun/sh_gmplus.lua")
AddCSLuaFile("autorun/client/cl_gmplus.lua")
AddCSLuaFile("gmplus/client/cl_gmplus_dsp.lua")
AddCSLuaFile("gmplus/client/cl_gmplus_dynaview.lua")
AddCSLuaFile("gmplus/client/cl_gmplus_firstperson.lua")
AddCSLuaFile("gmplus/client/cl_gmplus_headshot.lua")
AddCSLuaFile("gmplus/client/cl_gmplus_heartbeat.lua")
AddCSLuaFile("gmplus/client/cl_gmplus_holster.lua")
AddCSLuaFile("gmplus/client/cl_gmplus_hud.lua")
AddCSLuaFile("gmplus/client/cl_gmplus_pp.lua")
AddCSLuaFile("gmplus/client/cl_gmplus_wind.lua")

include("autorun/sh_gmplus.lua")
include("gmplus/server/sv_gmplus_dynaview.lua")
include("gmplus/server/sv_gmplus_headshot.lua")
include("gmplus/server/sv_gmplus_heartbeat.lua")
include("gmplus/server/sv_gmplus_hud.lua")
include("gmplus/server/sv_gmplus_physgun.lua")

MsgAll("GM+ v" ..gmp.Version.. " loaded!\n")