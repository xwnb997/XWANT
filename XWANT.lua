local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/FUEx0f3G"))()

local Window = OrionLib:MakeWindow({Name = "XWAN脚本中心 V1.0.0", HidePremium = false, SaveConfig = true,IntroText = "welcome", ConfigFolder = "欢迎使用XWAN脚本"})
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "HUB"; Text ="HUB"; Duration = 4; })

local about = Window:MakeTab({
    Name = "公告",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:AddParagraph("脚本为免费脚本 请勿去圈钱")
about:AddParagraph("禁止倒卖")

local Tab =Window:MakeTab({
	Name = "悦 崩服脚本",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({

	Name = "开始",
while true do
game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Screen"):WaitForChild("Sack UI"):WaitForChild("RemoteEvent"):FireServer("1")
wait(0.000000000001)
  end})
