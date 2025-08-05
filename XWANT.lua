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
	Name = "被遗弃",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local about = Window:MakeTab({
    Name = "被遗弃功能",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


Tab:AddButton({
	Name = "自动修机",
Callback = function(enabled)
        local debounce = {}
        local generatorFolder = game.Workspace.Map.Ingame.Map
        
        while enabled do
            task.wait()
            
            for _, generator in pairs(generatorFolder:GetChildren()) do
                if generator.Name == "Generator" then
                    if not debounce[generator] then
                        local remotes = generator:FindFirstChild("Remotes")
                        local re = remotes and remotes:FindFirstChild("RE")
                        
                        if re then
                            debounce[generator] = true
                            re:FireServer()
                            
                            task.delay(_G.AutoGeneratorDelay or 1.5, function()
                                debounce[generator] = nil
                            end)
                        end
                    end
                end
            end
        end
    end
})
