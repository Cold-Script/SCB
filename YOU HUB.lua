if not game:IsLoaded() then
    game.Loaded:Wait()
end

game:GetService("GuiService"):ClearError()

local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Giangplay/Script/main/Orion_Library_PE_V2.lua")))()
local Window = OrionLib:MakeWindow({IntroText = "YOU HUB | Super Box Siege Defense", IntroIcon = "rbxassetid://7733955740",Name = "YOU HUB | SUPER BOT SIEGE DEFENSE".." | YOU USE CLIENT : ".. identifyexecutor(), HidePremium = false, SaveConfig = false, IntroEnabled = true, ConfigFolder = ""})
if _G.Ex then
  OrionLib:Notify("Script Only 1")
  return
end
_G.Ex = true
local Tab1 = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab1:AddSlider({Name="Hitbox Range",Min=10,Value=35,Max=35,Callback=function(TV)
if _G.EnableHitbox then
while task.wait() do
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    v.HumanoidRootPart.Size = Vector3.new(TV, TV, TV)
    v.HumanoidRootPart.Transparency = 0.85
        end
    end
end
end})
Tab1:AddToggle({Name="Enable Toggle Hitbox",Value=false,Callback=function(CAM)
_G.EnableHitbox = CAM
end})
local Tab2 = Window:MakeTab({
	Name = "Players",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab1:AddSlider({Name="Speed Boost",Min=10,Value=50,Max=50,Callback=function(Speaker)
if _G.EnableWS then
while task.wait() do
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speaker
      end
   end
end})
Tab1:AddToggle({Name="Enable Toggle Speed Boost",Value=false,Callback=function(TV2)
_G.EnableWS = TV2
end})
Tab1:AddSlider({Name="Field Of View",Min=10,Value=120,Max=120,Callback=function(Cam2)
if _G.EnableFOV then
while task.wait() do
workspace.CurrentCamera.FieldOfView = Cam2
      end
   end
end})
Tab1:AddToggle({Name="Enable Toggle FOV",Value=false,Callback=function(Speaker2)
_G.EnableFOV = Speaker2
end})
local Tab3 = Window:MakeTab({
	Name = "Lighting",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab3:AddToggle({Name="No Fog",Value=false,Callback=function(TV3)
   if TV3 then
      game.Lighting.FogEnd = 9e9
   else
      game.Lighting.FogEnd = 150
      end
    end})
Tab3:AddToggle({Name="No Darkness Effect",Value=false,Callback=function(Cam3)
      if Cam3 then
      game.Lighting.OutdoorAmbient = Color3.new(1,1,1)
      else
      game.Lighting.OutdoorAmbient = Color3.new(0,0,0)
      end
    end})
Tab3:AddToggle({Name="Enable Screen Brightness",Value=false,Callback=function(Speaker3)
      if Speaker3 then
        game.Lighting.Brightness = 2
      else
        game.Lighting.Brightness = 0.5
      end
    end})
Tab3:AddToggle({Name="No Shadow",Value=false,Callback=function(TV4)
      if TV4 then
        game.Lighting.GlobalShadows = false
      else
        game.Lighting.GlobalShadows = true
      end
    end})





































