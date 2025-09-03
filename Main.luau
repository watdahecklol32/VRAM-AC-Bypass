--[[
	How embarassing is this for you!
	Imagine stealing code from adonis's anti cheat and claiming it as your own!
	Then claim it as an unbypassable anti cheat and roblox's best!
	
	Then getting bypassed by the most shittiest bypass ever :)
]]
-- Author: WATDAHECKLOL32
-- Date:   9/2/25
local game = cloneref(game);
local replicated_first = cloneref(game:GetService("ReplicatedFirst")) :: ReplicatedFirst;
local actor = cloneref(replicated_first:FindFirstChildOfClass("Actor")) :: Actor;

local players = cloneref(game:GetService("Players")) :: Players;
local player = players.LocalPlayer :: Player;


local char: Model & {[string]: any} = player.Character or player.CharacterAdded:Wait();
local humanoid_root_part: Part = char.HumanoidRootPart;
local bad: {[number]: RemoteEvent} = {};
for _: unknown, v: Instance in game:GetDescendants() do
	if v:IsA("RemoteEvent") and tostring(v) == "VRAN" or tostring(v) == "ASYNC" then
		table.insert(bad, v);
	end;
end;
run_on_actor(actor, [[
local game = cloneref(game);
local replicated_first = cloneref(game:GetService("ReplicatedFirst")) :: ReplicatedFirst;
local actor = cloneref(replicated_first:FindFirstChildOfClass("Actor")) :: Actor;

local players = cloneref(game:GetService("Players")) :: Players;
local player = players.LocalPlayer :: Player;


local char: Model & {[string]: any} = player.Character or player.CharacterAdded:Wait();
local humanoid_root_part: Part = char.HumanoidRootPart;
hookfunction(task.delay, newcclosure(function(...)
	return coroutine.yield();
end));
hookfunction(xpcall, newcclosure(@native function(...: any): any
	return coroutine.yield();
end));
local bad: {[number]: RemoteEvent} = {};
for _: unknown, v: Instance in game:GetDescendants() do
	if v:IsA("RemoteEvent") and tostring(v) == "VRAN" or tostring(v) == "ASYNC" then
		table.insert(bad, v);
	end;
end;
local newindex; newindex = hookmetamethod(game, "__newindex", newcclosure(@native function(...: any): ()
	if getthreadidentity() ~= 2 then  newindex(...); end;
	local self, index, value = ...;
	if type(self) == "userdata" and type(index) == "string" and typeof(value) == "CFrame" and compareinstances(self, humanoid_root_part) and index == "CFrame" then
		return ;
	end;
	newindex(...);
end));
hookfunction(task.spawn, newcclosure(function(...)
	return coroutine.yield();
end));
hookfunction(task.wait, newcclosure(function(...)
	return coroutine.yield();
end));
local namecall; namecall = hookmetamethod(game, "__namecall", newcclosure(@native function(...: any): any
	if getthreadidentity() ~= 2 then return namecall(...); end;
	local args: {any} = {...};
	local self: Instance = args[1];
	table.remove(args, 1);
	local method: string = getnamecallmethod();
	if type(self) == "userdata" and typeof(self) == "Instance" then
		if method == "FireServer" and table.find(bad, self) and compareinstances(self, bad[table.find(bad, self)]) and args[1] and args[1] ~= "client"  then
			warn("disallowed fireserver: ");
			for i,v in args do
				if type(v) == "table" or type(v) == "userdata" and getrawmetatable(v) and rawget(getrawmetatable(v), "__tostring") and type(rawget(getrawmetatable(v), "__tostring")) == "function" and islclosure(rawget(getrawmetatable(v), "__tostring")) then -- nice one :3
					hookmetamethod(v, "__tostring", newlclosure(function()
						return "";
					end));
				end;
				print(i,v);
			end;
			return;
		elseif method == "Kick" and compareinstances(self, player) then 
			return;
		elseif method == "InvokeServer" and self.ClassName == "RemoteFunction" then
			return;
		end;
	end;
	return namecall(...);
end));
local hook; hook = hookfunction(player.Kick, newcclosure(@native function(...): ()
	if getthreadidentity() ~= 2 then return hook(...); end;
	local args = {...};
	local self = args[1];
	if type(self) == "userdata" and typeof(self) == "Instance" and compareinstances(self, player) then return; end;
	return hook(...);
end));
for _: unknown ,v: any in bad do
	local hook; hook = hookfunction(v.FireServer, newcclosure(@native function(...): ()
		if getthreadidentity() ~= 2 then return hook(...); end;
		local args = {...};
		local self = args[1];
		if type(self) == "userdata" and typeof(self) == "Instance" and self.ClassName == "RemoteEvent" and compareinstances(self, v) then return; end;
		return hook(...);
	end));
end;
]]);
local namecall; namecall = hookmetamethod(game, "__namecall", newcclosure(@native function(...: any): any
	if getthreadidentity() ~= 2 then return namecall(...); end;
	local args: {any} = {...};
	local self: Instance = args[1];
	table.remove(args, 1);
	local method: string = getnamecallmethod();
	if type(self) == "userdata" and typeof(self) == "Instance" then
		if method == "FireServer" and table.find(bad, self) and compareinstances(self, bad[table.find(bad, self)]) and args[1] and args[1] ~= "client"  then
			warn("disallowed fireserver: ");
			for i,v in args do
				if type(v) == "table" or type(v) == "userdata" and getrawmetatable(v) and rawget(getrawmetatable(v), "__tostring") and type(rawget(getrawmetatable(v), "__tostring")) == "function" and islclosure(rawget(getrawmetatable(v), "__tostring")) then -- nice one :3
					hookmetamethod(v, "__tostring", newlclosure(function()
						return "";
					end));
				end;
				print(i,v);
			end;
			return coroutine.yield();
		elseif method == "Kick" and compareinstances(self, player) then 
			return coroutine.yield();
		end;
	end;
	return namecall(...);
end));
local hook; hook = hookfunction(player.Kick, newcclosure(@native function(...): ()
	if getthreadidentity() ~= 2 then return hook(...); end;
	local args = {...};
	local self = args[1];
	if type(self) == "userdata" and typeof(self) == "Instance" and compareinstances(self, player) then return; end;
	return hook(...);
end));
for _: unknown ,v: any in bad do
	local hook; hook = hookfunction(v.FireServer, newcclosure(@native function(...): ()
		if getthreadidentity() ~= 2 then return hook(...); end;
		local args = {...};
		local self = args[1];
		if type(self) == "userdata" and typeof(self) == "Instance" and self.ClassName == "RemoteEvent" and compareinstances(self, v) then return; end;
		return hook(...);
	end));
end;
warn("Bypass complete!");
