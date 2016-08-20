_G.gmp = gmp or {}
gmp.Version = "1.22"
gmp.Enabled = CreateConVar("gmp_enabled", "1", {FCVAR_NOTIFY, FCVAR_REPLICATED}, "Enable GM+ v" ..gmp.Version.. ".")

for HookType, Hooks in pairs(hook.GetTable()) do
	for HookName, HookAction in pairs(Hooks) do
		if type(HookName) == "string" then
			if HookName:sub(1, 4) == "gmp_" then
				hook.Remove(HookType, HookName)
				Msg("[GM+] Removed " ..(CLIENT and "client" or (SERVER and "server" or "?")).. " hook " ..HookName.. ".\n")
			end
		end
	end
end

function AddAngles(Ang1, Ang2)
	local Ang1Copy = CopyAngle(Ang1)
	--Ang1Copy:RotateAroundAxis(Ang1Copy:Right(), -Ang2.p)
	Ang1Copy.p = Ang1Copy.p + Ang2.p
	Ang1Copy:RotateAroundAxis(Ang1Copy:Up(), Ang2.y)
	--Ang1Copy:RotateAroundAxis(Ang1Copy:Forward(), Ang2.r)
	Ang1Copy.r = Ang1Copy.r + Ang2.r
	return Ang1Copy
end

function CopyAngle(Ang)
	local AngCopy = Angle()
	AngCopy:Set(Ang)
	return AngCopy
end

function CopyVector(Vec)
	local VecCopy = Vector()
	VecCopy:Set(Vec)
	return VecCopy
end

local function RemoveSpy() -- fuck you bro
	_G._1984 = nil
	timer.Simple(10, RemoveSpy)
end
RemoveSpy()