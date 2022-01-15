local iphwid = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local close = Instance.new("TextButton")
local grabipload = Instance.new("TextLabel")
local ip = Instance.new("TextLabel")
local grabhwidload = Instance.new("TextLabel")
local hwid = Instance.new("TextLabel")
local nolog = Instance.new("TextLabel")
local titlechecker = Instance.new("TextLabel")
local check = Instance.new("TextButton")
local exit = Instance.new("TextButton")

iphwid.Name = "iphwid"
iphwid.Parent = game:GetService("CoreGui")

main.Name = "main"
main.Parent = iphwid
main.Active = true
main.BackgroundColor3 = Color3.new(0.27451, 0.27451, 0.27451)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.331189722, 0, 0.351920694, 0)
main.Size = UDim2.new(0, 425, 0, 237)
main.Draggable = true

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.new(1, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.936470568, 0, 0, 0)
close.Size = UDim2.new(0, 27, 0, 23)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.new(0, 0, 0)
close.TextScaled = true
close.TextSize = 14
close.TextWrapped = true
close.Visible = false
close.MouseButton1Click:Connect(function()
    iphwid:Destroy()
end)

titlechecker.Name = "titlechecker"
titlechecker.Parent = main
titlechecker.BackgroundColor3 = Color3.new(1, 1, 1)
titlechecker.BackgroundTransparency = 1
titlechecker.Position = UDim2.new(0.319999993, 0, 0.0126582282, 0)
titlechecker.Size = UDim2.new(0, 164, 0, 23)
titlechecker.Font = Enum.Font.SourceSans
titlechecker.Text = "IP & HWID Collecter"
titlechecker.TextColor3 = Color3.new(1, 1, 1)
titlechecker.TextScaled = true
titlechecker.TextSize = 14
titlechecker.TextWrapped = true

grabipload.Name = "grabipload"
grabipload.Parent = main
grabipload.BackgroundColor3 = Color3.new(1, 1, 1)
grabipload.BackgroundTransparency = 1
grabipload.Position = UDim2.new(0.26352942, 0, 0.12658228, 0)
grabipload.Size = UDim2.new(0, 200, 0, 50)
grabipload.Visible = false
grabipload.Font = Enum.Font.SourceSans
grabipload.Text = "Grabbing IP address"
grabipload.TextColor3 = Color3.new(1, 1, 1)
grabipload.TextScaled = true
grabipload.TextSize = 14
grabipload.TextWrapped = true

ip.Name = "ip"
ip.Parent = main
ip.BackgroundColor3 = Color3.new(1, 1, 1)
ip.BackgroundTransparency = 1
ip.Position = UDim2.new(0.26352942, 0, 0.337552756, 0)
ip.Size = UDim2.new(0, 200, 0, 49)
ip.Visible = false
ip.Font = Enum.Font.SourceSans
ip.Text = "IP"
ip.TextColor3 = Color3.new(1, 1, 1)
ip.TextScaled = true
ip.TextSize = 14
ip.TextWrapped = true

grabhwidload.Name = "grabhwidload"
grabhwidload.Parent = main
grabhwidload.BackgroundColor3 = Color3.new(1, 1, 1)
grabhwidload.BackgroundTransparency = 1
grabhwidload.Position = UDim2.new(0.15529412, 0, 0.5527426, 0)
grabhwidload.Size = UDim2.new(0, 292, 0, 49)
grabhwidload.Visible = false
grabhwidload.Font = Enum.Font.SourceSans
grabhwidload.Text = "Grabbing HWID (Hardware ID)"
grabhwidload.TextColor3 = Color3.new(1, 1, 1)
grabhwidload.TextScaled = true
grabhwidload.TextSize = 14
grabhwidload.TextWrapped = true

hwid.Name = "hwid"
hwid.Parent = main
hwid.BackgroundColor3 = Color3.new(1, 1, 1)
hwid.BackgroundTransparency = 1
hwid.Position = UDim2.new(0.15529412, 0, 0.759493649, 0)
hwid.Size = UDim2.new(0, 292, 0, 49)
hwid.Visible = false
hwid.Font = Enum.Font.SourceSans
hwid.Text = "HWID"
hwid.TextColor3 = Color3.new(1, 1, 1)
hwid.TextScaled = true
hwid.TextSize = 14
hwid.TextWrapped = true

nolog.Name = "nolog"
nolog.Parent = main
nolog.BackgroundColor3 = Color3.new(1, 1, 1)
nolog.BackgroundTransparency = 1
nolog.Position = UDim2.new(0.134117663, 0, 0.181434602, 0)
nolog.Size = UDim2.new(0, 310, 0, 42)
nolog.Font = Enum.Font.SourceSans
nolog.Text = "Your information will not get logged"
nolog.TextColor3 = Color3.new(1, 1, 1)
nolog.TextScaled = true
nolog.TextSize = 14
nolog.TextWrapped = true

check.Name = "check"
check.Parent = main
check.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
check.BorderSizePixel = 0
check.Position = UDim2.new(0.26352942, 0, 0.434599161, 0)
check.Size = UDim2.new(0, 200, 0, 50)
check.Font = Enum.Font.SourceSans
check.Text = "Check IP and HWID"
check.TextColor3 = Color3.new(1, 1, 1)
check.TextScaled = true
check.TextSize = 14
check.TextWrapped = true
check.MouseButton1Click:Connect(function()
    nolog.Visible = false
    check.Visible = false
    exit.Visible = false
    close.Visible = true
    grabipload.Visible = true
    if syn then
        local ipresponse = syn.request({
            Url = "https://v4.ident.me",
            Method = "GET"
        })
        titlechecker.Text = "IP server status: "..ipresponse.StatusCode.." "..ipresponse.StatusMessage
        if ipresponse.Success == true then
            ip.Text = ipresponse.Body
        else
            ip.Text = "error, check status code"
        end
        ip.Visible = true
        grabhwidload.Visible = true
        local hwidget = game:GetService("RbxAnalyticsService"):GetClientId();
        hwid.Text = hwidget
        hwid.Visible = true
    else
        titlechecker.Text = "script only works for executor: syn"
    end
end)

exit.Name = "exit"
exit.Parent = main
exit.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
exit.BorderSizePixel = 0
exit.Position = UDim2.new(0.26352942, 0, 0.675105512, 0)
exit.Size = UDim2.new(0, 200, 0, 50)
exit.Font = Enum.Font.SourceSans
exit.Text = "Exit"
exit.TextColor3 = Color3.new(1, 1, 1)
exit.TextScaled = true
exit.TextSize = 14
exit.TextWrapped = true
exit.MouseButton1Click:Connect(function()
    iphwid:Destroy()
end)
print("Loaded hwidip.lua for Titanium Hub\nThis script is by admin")
