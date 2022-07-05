--thanks to robloxscripts.com for having a lot of the coding i need

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("thanos hub v2.1", "Ocean")


local movement = Window:NewTab("movement")

local combat = Window:NewTab("combat")

local render = Window:NewTab("render")

local credits = Window:NewTab("credits")

local private = Window:NewTab("private")

local movementsection = movement:NewSection("movement")

local combatsection = combat:NewSection("combat")

local rendersection = render:NewSection("render")

local creditssection = credits:NewSection("credits")

local unsuppored = private:NewSection("if you see nothing here, its bc unsupported game")



 if game.PlaceId == 286090429 then	

local arsenalSection = private:NewSection("arsenal")

arsenalSection:NewButton("autofarm", "autofarms with ai", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Thanosdagamer/arsenal/main/ai.lua"))()
end)
   

end


if game.PlaceId == 292439477 then
	local phantomforces = private:NewSection("phantom forces")
	
phantomforces:NewButton("firerate op", "makes ur firerate absolutely insane", function()
    

getgenv().Set = 999999999999;
loadstring(game:HttpGet("https://ehub.fun/uploads/firerate13.lua"))()


end)
end
movementsection:NewSlider("speed", "changes speed", 100, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)



movementsection:NewSlider("gravity", "change ur gravity",500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game:GetService("Workspace").Gravity = s
end)

combatsection:NewButton("aimbot", "rightclick to lock screen on people who arent on team", function()
    G.AimbotInput = "RightClick"
        _G.AimbotEasing = 0.000000000000001
        _G.TeamCheck = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-aimbot/main/script.lua"))()
end)
if game.PlaceId == 29243947 then

	phantomforcees:NewButton("hitbox extender", "extends hitboxes a lot", function()
		Size = 8 -- Setting higher than 8 or so will screw with the server hit detection and prevent your guns from damaging people. 8 is still easy to "rage" with. I recommend 2-5 if you want to look legit.
Transparency = 0.5 -- Leave it at 0.5 if you want the heads to be visible. Set to 1 to make them invisible.
game:GetService("RunService").Stepped:Connect(function()
for i,v in next, workspace.Players:GetDescendants() do
if v:FindFirstChild("Head") and not v:FindFirstChildWhichIsA("MeshPart") then
sethiddenproperty(v.Head, "Massless", true)
v.Head.CanCollide = false
v.Head.Transparency = Transparency
if v.Head.Size ~= Vector3.new(Size, Size, Size) and v.Head.Mesh.Scale ~= Vector3.new(Size, Size, Size) then
v.Head.Size = Vector3.new(Size, Size, Size)
v.Head.Mesh.Scale = Vector3.new(Size, Size, Size)
end
if v.Head.Parent.Parent.Name == "Bright blue" then
v.Head.BrickColor = BrickColor.new("Bright blue")
end
if v.Head.Parent.Parent.Name == "Bright orange" then
v.Head.BrickColor = BrickColor.new("Bright orange")
end
end
end
end)

while wait() do
for i,v in next, workspace.Ignore.DeadBody:GetChildren() do
v:Destroy()
end
end
	end)

end

combatsection:NewButton("silent aim", "auto aim no screen lock", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Thanosdagamer/silentaimscript/main/silentaim.lua"))()
end)



rendersection:NewButton("esp", "easily see players", function()
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
	_G.EnemyColor = Color3.fromRGB(255, 0, 0)
	_G.UseTeamColor = false
	loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-esp/main/esp.lua"))()
end)

creditssection:NewLabel("me (thanosdagamer#6469)")

creditssection:NewLabel("someone i wont mention cuz they asked")
