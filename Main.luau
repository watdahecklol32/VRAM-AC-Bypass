--[[
	How embarassing is this for you!
	Imagine stealing code from adonis's anti cheat and claiming it as your own!
	Then claim it as an unbypassable anti cheat and roblox's best!
	
	Then getting bypassed by the most shittiest bypass ever :)
]]
local replicated_first = cloneref(game:GetService("ReplicatedFirst"));
local actor = replicated_first:FindFirstChildOfClass("Actor");	
local remotes = {};
for _,v in game:GetDescendants() do
	if v:IsA("RemoteEvent") and tostring(v) == "VRAN" or tostring(v) == "ASYNC" then
		table.insert(remotes, v);
	end;
end;
local players = cloneref(game:GetService("Players"));
local player = players.LocalPlayer :: Player;
local char = player.Character;
local humanoid = char.Humanoid;
local namecall; namecall = hookmetamethod(game, "__namecall", newcclosure(@native function(...)
	if getthreadidentity() ~= 2 then return namecall(...); end;
	local args = {...};
	local method = getnamecallmethod();
	local self = args[1];
	table.remove(args, 1);
	if self and type(self) == "userdata" and typeof(self) == "Instance" then
		if self == player and method == "Kick" then 
			return;
		elseif method == "IsA" and type(args[1]) == "string" and string.find(args[1], "Body") or args[1] == "Highlight" then
			return false;
		elseif self == humanoid and method == "GetState" then
			return Enum.HumanoidStateType.Running;
		elseif table.find(remotes, self) and method == "FireServer" and args[1] and args[1] ~= "client" then
			return;
		end;
	end;
	return namecall(...);
end));
hookfunction(player.Kick, newcclosure(@native function()

end));
local hook; hook = hookfunction(task.wait, newcclosure(@native function(...: any): any
	if getthreadidentity() ~= 2 then return hook(...); end;
	local to_wait = ...;
	if to_wait and type(to_wait) == "number" and to_wait == 0.1 then
		return coroutine.yield();
	end;
	return hook(...);
end));
local hook; hook = hookfunction(task.delay, newcclosure(@native function(...: any): any
	if getthreadidentity() ~= 2 then return hook(...); end;
	local wait_time, closure = ...;
	if type(wait_time) == "number" and type(closure) == "function" and wait_time == 3 then -- idc
		return coroutine.yield();
	end;
	return hook(...);
end));
local hook; hook = hookfunction(getrenv().math.sqrt, newcclosure(@native function(...)
	if getthreadidentity() ~= 2 then return hook(...); end;
	return coroutine.yield();
end));
local hook; hook = hookfunction(warn, newcclosure(function(...)
	if getthreadidentity() ~= 2 then return hook(...); end;
	local args = {...};
	for _,v in args do
		if type(v) == "string" and string.lower(v):find("clie") then
			return coroutine.yield();
		end;
	end;
	return hook(...);
end));
run_on_actor(actor, [[
local players = cloneref(game:GetService("Players"));
local player = players.LocalPlayer :: Player;
local char = player.Character;
local humanoid = char.Humanoid :: Humanoid;
local hook; hook = hookfunction(task.wait, newcclosure(@native function(...: any): any
	if getthreadidentity() ~= 2 then return hook(...); end;
	local to_wait = ...;
	if to_wait and type(to_wait) == "number" and to_wait == 0.1 then
		return coroutine.yield();
	end;
	return hook(...);
end));
local hook; hook = hookfunction(task.delay, newcclosure(@native function(...: any): any
	if getthreadidentity() ~= 2 then return hook(...); end;
	local wait_time, closure = ...;
	if type(wait_time) == "number" and type(closure) == "function" and wait_time == 3 then -- idc
		return coroutine.yield();
	end;
	return hook(...);
end));
local hook; hook = hookfunction(getrenv().math.sqrt, newcclosure(@native function(...)
	if getthreadidentity() ~= 2 then return hook(...); end;
	return coroutine.yield();
end));
local hook; hook = hookfunction(warn, newcclosure(function(...)
	if getthreadidentity() ~= 2 then return hook(...); end;
	local args = {...};
	for _,v in args do
		if type(v) == "string" and string.lower(v):find("clie") then
			return coroutine.yield();
		end;
	end;
	return hook(...);
end))
local __index; __index = hookmetamethod(game, "__index", newcclosure(@native function(...)
	if getthreadidentity() ~= 2 then return __index(...); end;
	local self, index = ...;
	if type(self) == "userdata" and typeof(self) == "Instance" then
		if self == humanoid and index == "WalkSpeed" then
			return 15;
		elseif self == humanoid and index == "JumpPower" then
			return 7;
		elseif self == humanoid and index == "MaxHealth" then
			return 100;
		elseif self == humanoid and index == "HumanoidStateType" then
			return Enum.HumanoidStateType.Running;
		end;
	end;
	return __index(...);
end));
local remotes = {};
for _,v in game:GetDescendants() do
	if v:IsA("RemoteEvent") and tostring(v) == "VRAN" or tostring(v) == "ASYNC" then
		table.insert(remotes, v);
	end;
end;
for _,v in getgc(true) do
	if type(v) == "function" and islclosure(v) and #debug.getupvalues(v) < 0 then
		local up_values = debug.getupvalues(v);
		for _,aaa in up_values do
			if table.find(remotes, aa) then
				setrawmetatable(getfenv(v), {});
				task.wait(1);
				hookfunction(v, function() end);
			end;
		end;
	end;
end;
local namecall; namecall = hookmetamethod(game, "__namecall", newcclosure(@native function(...)
	if getthreadidentity() ~= 2 then return namecall(...); end;
	local args = {...};
	local method = getnamecallmethod();
	local self = args[1];
	table.remove(args, 1);
	if self and type(self) == "userdata" and typeof(self) == "Instance" then
		if self == player and method == "Kick" then 
			return;
		elseif method == "IsA" and type(args[1]) == "string" and string.find(args[1], "Body") or args[1] == "Highlight" then
			return false;
		elseif self == humanoid and method == "GetState" then
			return Enum.HumanoidStateType.Running;
		elseif table.find(remotes, self) and method == "FireServer" and args[1] and args[1] ~= "client" then
			return;
		end;
	end;
	return namecall(...);
end));
local hook; hook = hookfunction(warn, newcclosure(function(...)
	local args = {...};
	for _,v in args do
		if type(v) == "string" and string.lower(v):find("clie") then
			return coroutine.yield();
		end;
	end;
	return hook(...);
end))
hookfunction(player.Kick, newcclosure(@native function()
	
end));
]]);
print("Done!");

