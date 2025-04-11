--Tower of hell (godmode script) MADE BY MemorySofts
if TDI_LOADED then warn('already loaded') return end
getgenv().TDI_LOADED = true

-- Send Notification
game.StarterGui:SetCore("SendNotification", {
    Title = "MemorySofts";
    Text = "Скрипт загружен!"; 
    Icon = "ImageURL"; -- замените ImageURL ссылкой на ваш логотип
    Duration = 5;
})

for i, v in game.Players.LocalPlayer.Character:GetChildren() do
    if v.ClassName == 'Part' then
        local fb = v:FindFirstChild('TouchInterest')
        if fb then
            fb:Destroy()
        end
    end
end
warn('godmode is ready. if u reset, dont re-execute, it will reload automaticly')

game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
    if notautofarm then return end
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
    for i, v in char:GetChildren() do
        if v.ClassName == 'Part' then
            local fb = v:FindFirstChild('TouchInterest')
            if fb then
                fb:Destroy()
            end
        end
    end
    warn('godmode is auto reloaded')
end)
