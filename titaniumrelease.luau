-- Starter GUI

local titanium = Instance.new("ScreenGui")
titanium.Name = "titanium"
titanium.Parent = game:GetService("CoreGui")
local success, fail = pcall(function()
-- Beginning

warn("Starting Titanium Hub")

-- Loading Elements

local loadingframe = Instance.new("Frame")
local cancelloadbutton = Instance.new("TextButton")
local loadframeround = Instance.new("UICorner")
local loadstatus = Instance.new("Frame")
local loadstatusround = Instance.new("UICorner")
local loadgive = Instance.new("TextLabel")

loadingframe.Name = "loadingframe"
loadingframe.Parent = titanium
loadingframe.AnchorPoint = Vector2.new(0.5, 0.5)
loadingframe.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
loadingframe.BorderSizePixel = 0
loadingframe.Position = UDim2.new(0.5, 0, 0.5, 0)
loadingframe.Size = UDim2.new(0, 331, 0, 161)

cancelloadbutton.Name = "cancelloadbutton"
cancelloadbutton.Parent = loadingframe
cancelloadbutton.BackgroundColor3 = Color3.new(0.32549, 0.32549, 0.32549)
cancelloadbutton.BorderSizePixel = 0
cancelloadbutton.Position = UDim2.new(0.321408927, 0, 0.763975143, 0)
cancelloadbutton.Size = UDim2.new(0, 118, 0, 38)
cancelloadbutton.Font = Enum.Font.TitilliumWeb
cancelloadbutton.Text = "Cancel"
cancelloadbutton.TextColor3 = Color3.new(1, 1, 1)
cancelloadbutton.TextScaled = true
cancelloadbutton.TextSize = 14
cancelloadbutton.TextWrapped = true
cancelloadbutton.MouseButton1Click:Connect(function()
    titanium:Destroy()
    return
end)

loadframeround.Name = "loadframeround"
loadframeround.Parent = loadingframe
loadframeround.CornerRadius = UDim.new(0, 12)

loadstatus.Name = "loadstatus"
loadstatus.Parent = loadingframe
loadstatus.BackgroundColor3 = Color3.new(0, 1, 0)
loadstatus.BorderSizePixel = 0
loadstatus.Position = UDim2.new(0.0211480372, 0, 0.701863348, 0)
loadstatus.Size = UDim2.new(0, 5, 0, 10)

loadstatusround.Name = "loadstatusround"
loadstatusround.Parent = loadstatus
loadstatusround.CornerRadius = UDim.new(0, 8)

loadgive.Name = "loadgive"
loadgive.Parent = loadingframe
loadgive.BackgroundColor3 = Color3.new(1, 1, 1)
loadgive.BackgroundTransparency = 1
loadgive.Position = UDim2.new(0.256797582, 0, 0.149068326, 0)
loadgive.Size = UDim2.new(0, 161, 0, 57)
loadgive.Font = Enum.Font.Roboto
loadgive.Text = "Hold on"
loadgive.TextColor3 = Color3.new(1, 1, 1)
loadgive.TextScaled = true
loadgive.TextSize = 14
loadgive.TextWrapped = true

loadgive.Text = "Testing connection"

if syn then
    local content = syn.request({
        Url = "https://jaceg37.github.io/titanium/",
        Method = "GET"
    })

    if content.StatusCode ~= 200 then
        loadgive.Text = "Website is offline"
        loadstatus.BackgroundColor3 = Color3.new(255, 0, 0)
        loadstatus:TweenSize(UDim2.new(0, 316, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.5)
        cancelloadbutton.Text = "OK"
        return
    end
    loadgive.Text = "Welcome"
    loadstatus:TweenSize(UDim2.new(0, 316, 0, 10), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.25)
    cancelloadbutton:Destroy()
    wait(1.25)
    loadingframe:Destroy()
end

-- All Elements

local mainframe = Instance.new("Frame")
local close = Instance.new("TextButton")
local closeround = Instance.new("UICorner")
local min = Instance.new("TextButton")
local minround = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local mainround = Instance.new("UICorner")
local menutopbar = Instance.new("TextButton")
local customscript = Instance.new("TextBox")
local open = Instance.new("TextButton")
local scriptgo = Instance.new("TextButton")
local scripthub = Instance.new("Frame")
local refreshscripthub = Instance.new("TextButton")
local unfinishedla = Instance.new("TextLabel")
local scrhubround = Instance.new("UICorner")
local infoscripthub = Instance.new("TextButton")

open.Name = "open"
open.Parent = titanium
open.BackgroundColor3 = Color3.new(0.32549, 0.32549, 0.32549)
open.BorderSizePixel = 0
open.Position = UDim2.new(0, 0, 0.729863703, 0)
open.Size = UDim2.new(0, 200, 0, 50)
open.Font = Enum.Font.PermanentMarker
open.Text = "Titanium"
open.TextColor3 = Color3.new(1, 1, 1)
open.TextScaled = true
open.TextSize = 14
open.TextWrapped = true
open.Visible = false
open.Draggable = true
open.MouseButton1Click:Connect(function()
    mainframe.Visible = not mainframe.Visible
    open.Visible = not open.Visible
end)


mainframe.Name = "mainframe"
mainframe.Parent = titanium
mainframe.Active = true
mainframe.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
mainframe.Position = UDim2.new(0.323151112, 0, 0.319702595, 0)
mainframe.Selectable = true
mainframe.Size = UDim2.new(0, 440, 0, 290)
mainframe.Draggable = true

close.Name = "close"
close.Parent = mainframe
close.BackgroundColor3 = Color3.new(0.67451, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.94, 0, 0.014, 0)
close.Size = UDim2.new(0, 19, 0, 19)
close.Font = Enum.Font.GothamSemibold
close.Text = "X"
close.TextColor3 = Color3.new(255, 255, 255)
close.TextScaled = true
close.TextSize = 15
close.TextWrapped = true
close.TextTransparency = 1
close.AutoButtonColor = false
close.MouseEnter:Connect(function()
    close.TextTransparency = 0
end)

close.MouseButton1Down:Connect(function()
    close.AutoButtonColor = true
end)

close.MouseButton1Click:Connect(function()
    titanium:Destroy()
end)

close.MouseLeave:Connect(function()
    close.AutoButtonColor = false
    close.TextTransparency = 1
end)

closeround.Name = "closeround"
closeround.Parent = close
closeround.CornerRadius = UDim.new(0, 12)

min.Name = "min"
min.Parent = mainframe
min.BackgroundColor3 = Color3.new(255, 0, 0)
min.BorderSizePixel = 0
min.Position = UDim2.new(0.886, 0, 0.014, 0)
min.Size = UDim2.new(0, 19, 0, 19)
min.Font = Enum.Font.Bangers
min.Text = "_"
min.TextColor3 = Color3.new(255, 255, 255)
min.TextSize = 15
min.TextTransparency = 1
min.MouseEnter:Connect(function()
    min.TextTransparency = 0
end)

min.MouseButton1Click:Connect(function()
    mainframe.Visible = not mainframe.Visible
    open.Visible = not open.Visible
end)

min.MouseLeave:Connect(function()
    min.TextTransparency = 1
end)

minround.Name = "minround"
minround.Parent = min
minround.CornerRadius = UDim.new(0, 12)

menutopbar.Name = "menutopbar"
menutopbar.Parent = mainframe
menutopbar.BackgroundColor3 = Color3.new(0.282353, 0.282353, 0.282353)
menutopbar.BorderSizePixel = 0
menutopbar.Position = UDim2.new(0.0208874978, 0, -0.000170424581, 0)
menutopbar.Size = UDim2.new(0, 51, 0, 22)
menutopbar.Font = Enum.Font.SourceSans
menutopbar.Text = "Menu"
menutopbar.TextColor3 = Color3.new(1, 1, 1)
menutopbar.TextScaled = true
menutopbar.TextSize = 14
menutopbar.TextWrapped = true

title.Name = "title"
title.Parent = mainframe
title.BackgroundColor3 = Color3.new(1, 0.666667, 0)
title.BackgroundTransparency = 1
title.Position = UDim2.new(0.350000024, 0, 0.0137931034, 0)
title.Size = UDim2.new(0, 132, 0, 34)
title.Font = Enum.Font.PermanentMarker
title.Text = "titanium"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true

mainround.Name = "mainround"
mainround.Parent = mainframe
mainround.CornerRadius = UDim.new(0, 10)

customscript.Name = "customscript"
customscript.Parent = mainframe
customscript.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
customscript.BorderSizePixel = 0
customscript.Position = UDim2.new(0.0522727259, 0, 0.868965507, 0)
customscript.Size = UDim2.new(0, 361, 0, 24)
customscript.ClearTextOnFocus = false
customscript.Font = Enum.Font.Nunito
customscript.PlaceholderText = "Custom script"
customscript.Text = ""
customscript.TextColor3 = Color3.new(1, 1, 1)
customscript.TextSize = 20
customscript.TextWrapped = true
customscript.TextXAlignment = Enum.TextXAlignment.Center

scriptgo.Name = "scriptgo"
scriptgo.Parent = mainframe
scriptgo.BackgroundColor3 = Color3.new(0.32549, 0.32549, 0.32549)
scriptgo.BorderSizePixel = 0
scriptgo.Position = UDim2.new(0.886363626, 0, 0.868965507, 0)
scriptgo.Size = UDim2.new(0, 43, 0, 24)
scriptgo.Font = Enum.Font.RobotoMono
scriptgo.Text = "Go"
scriptgo.TextColor3 = Color3.new(1, 1, 1)
scriptgo.TextScaled = true
scriptgo.TextSize = 14
scriptgo.TextWrapped = true
scriptgo.MouseButton1Click:Connect(function()
    local scripttext = customscript.Text
    customscript.Text = ""
    customscript.PlaceholderText = "Connecting"
    local didcon, errorcon = pcall(function()
        loadstring(game:HttpGet("https://jaceg37.github.io/titanium/scripts/"..scripttext..".lua"))()
    end)

    if not didcon then
        customscript.PlaceholderText = string.lower(tostring(errorcon))
        wait(2)
    end
    customscript.PlaceholderText = "Custom script"
end)

scripthub.Name = "scripthub"
scripthub.Parent = mainframe
scripthub.BackgroundColor3 = Color3.new(0.247059, 0.247059, 0.247059)
scripthub.BorderSizePixel = 0
scripthub.Position = UDim2.new(0.03, 0, 0.131, 0)
scripthub.Size = UDim2.new(0, 420, 0, 200)

refreshscripthub.Name = "refreshscripthub"
refreshscripthub.Parent = scripthub
refreshscripthub.BackgroundColor3 = Color3.new(0.282353, 0.282353, 0.282353)
refreshscripthub.BorderSizePixel = 0
refreshscripthub.Position = UDim2.new(0.534, 0, 0.817, 0)
refreshscripthub.Size = UDim2.new(0, 97, 0, 28)
refreshscripthub.Font = Enum.Font.SourceSans
refreshscripthub.Text = "Refresh"
refreshscripthub.TextColor3 = Color3.new(1, 1, 1)
refreshscripthub.TextScaled = true
refreshscripthub.TextSize = 14
refreshscripthub.TextWrapped = true
refreshscripthub.MouseButton1Click:Connect(function()
    popup("Functionality isn't available yet")
end)

infoscripthub.Name = "infoscripthub"
infoscripthub.Parent = scripthub
infoscripthub.BackgroundColor3 = Color3.new(0.282353, 0.282353, 0.282353)
infoscripthub.BorderSizePixel = 0
infoscripthub.Position = UDim2.new(0.269588798, 0, 0.817, 0)
infoscripthub.Size = UDim2.new(0, 97, 0, 28)
infoscripthub.Font = Enum.Font.SourceSans
infoscripthub.Text = "Info"
infoscripthub.TextColor3 = Color3.new(1, 1, 1)
infoscripthub.TextScaled = true
infoscripthub.TextSize = 14
infoscripthub.TextWrapped = true
infoscripthub.MouseButton1Click:Connect(function()
    createBrowser("https://jaceg37.github.io/titanium/scripts/scriptfind.txt")
end)

unfinishedla.Name = "unfinishedla"
unfinishedla.Parent = scripthub
unfinishedla.BackgroundColor3 = Color3.new(1, 1, 1)
unfinishedla.BackgroundTransparency = 1
unfinishedla.Position = UDim2.new(0.0238095243, 0, 0.151685387, 0)
unfinishedla.Size = UDim2.new(0, 410, 0, 100)
unfinishedla.Font = Enum.Font.Nunito
unfinishedla.Text = "This box is intended for automatically loading scripts from our servers. That functionality is still in development. However, you can type in the script name or ID and the script will load here. More information once we actually implement this feature.\nClick Info to find scripts."
unfinishedla.TextColor3 = Color3.new(1, 1, 1)
unfinishedla.TextScaled = true
unfinishedla.TextSize = 14
unfinishedla.TextWrapped = true

scrhubround.Name = "scrhubround"
scrhubround.Parent = scripthub

-- Functions

function popup(string)
    local popupframe = Instance.new("Frame")
    local popuptext = Instance.new("TextLabel")

    popupframe.Name = "popupframe"
    popupframe.Active = true
    popupframe.Parent = mainframe
    popupframe.BackgroundColor3 = Color3.new(0.203922, 0.203922, 0.203922)
    popupframe.BorderSizePixel = 0
    popupframe.Position = UDim2.new(0.172727272, 0, 0.248275861, 0)
    popupframe.Size = UDim2.new(0, 303, 0, 109)
    popupframe.Visible = false
    popupframe.ZIndex = 2

    popuptext.Name = "popuptext"
    popuptext.Parent = popupframe
    popuptext.BackgroundColor3 = Color3.new(1, 1, 1)
    popuptext.BackgroundTransparency = 1
    popuptext.Size = UDim2.new(0, 303, 0, 109)
    popuptext.Font = Enum.Font.SourceSans
    popuptext.Text = "popup"
    popuptext.TextColor3 = Color3.new(1, 1, 1)
    popuptext.TextScaled = true
    popuptext.TextSize = 14
    popuptext.TextWrapped = true
    popuptext.ZIndex = 2

    popuptext.Text = string
    popupframe.Visible = true
    wait(2)
    popupframe.Visible = false
end

function createBrowser(geturl)
    local webbrowser = Instance.new("Frame")
    local contentsweb = Instance.new("TextBox")
    local webstatus = Instance.new("TextBox")
    local closebrowser = Instance.new("TextButton")
    local closeround = Instance.new("UICorner")
    local refreshbrowser = Instance.new("TextButton")

    webbrowser.Name = "webbrowser"
    webbrowser.Parent = titanium
    webbrowser.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
    webbrowser.BorderSizePixel = 0
    webbrowser.Position = mainframe.Position
    webbrowser.Size = UDim2.new(0, 338, 0, 322)
    webbrowser.Active = true
    webbrowser.Draggable = true

    contentsweb.Name = "contentsweb"
    contentsweb.Parent = webbrowser
    contentsweb.BackgroundColor3 = Color3.new(1, 1, 1)
    contentsweb.BackgroundTransparency = 1
    contentsweb.Position = UDim2.new(0, 0, 0.127329201, 0)
    contentsweb.Size = UDim2.new(0, 338, 0, 281)
    contentsweb.Font = Enum.Font.Code
    contentsweb.TextColor3 = Color3.new(1, 1, 1)
    contentsweb.TextSize = 14
    contentsweb.TextXAlignment = Enum.TextXAlignment.Left
    contentsweb.TextYAlignment = Enum.TextYAlignment.Top
    contentsweb.TextWrapped = true
    contentsweb.TextEditable = false
    contentsweb.ClearTextOnFocus = false

    webstatus.Name = "webstatus"
    webstatus.Parent = webbrowser
    webstatus.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
    webstatus.BorderSizePixel = 0
    webstatus.Position = UDim2.new(0, 0, 0.0807453394, 0)
    webstatus.Size = UDim2.new(0, 338, 0, 15)
    webstatus.ClearTextOnFocus = false
    webstatus.Font = Enum.Font.Code
    webstatus.Text = "Connecting"
    webstatus.TextColor3 = Color3.new(1, 1, 1)
    webstatus.TextSize = 14
    webstatus.TextXAlignment = Enum.TextXAlignment.Left
    webstatus.TextWrapped = true
    webstatus.TextEditable = false

    closebrowser.Name = "closebrowser"
    closebrowser.Parent = webbrowser
    closebrowser.BackgroundColor3 = Color3.new(0.67451, 0, 0)
    closebrowser.BorderSizePixel = 0
    closebrowser.Position = UDim2.new(0.940462708, 0, 0.0137931034, 0)
    closebrowser.Size = UDim2.new(0, 19, 0, 19)
    closebrowser.Font = Enum.Font.GothamSemibold
    closebrowser.Text = "X"
    closebrowser.TextColor3 = Color3.new(1, 1, 1)
    closebrowser.TextSize = 15
    closebrowser.TextTransparency = 1
    closebrowser.TextWrapped = true

    closeround.Name = "closeround"
    closeround.Parent = closebrowser
    closeround.CornerRadius = UDim.new(0, 12)

    closeround.Name = "closeround"
    closeround.Parent = closebrowser
    closeround.CornerRadius = UDim.new(0, 12)
    closebrowser.MouseButton1Click:Connect(function()
        webbrowser:Destroy()
    end)

    refreshbrowser.Name = "refreshbrowser"
    refreshbrowser.Parent = webbrowser
    refreshbrowser.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
    refreshbrowser.BackgroundTransparency = 0.5
    refreshbrowser.BorderSizePixel = 0
    refreshbrowser.Position = UDim2.new(0.642011821, 0, 0.903726697, 0)
    refreshbrowser.Size = UDim2.new(0, 121, 0, 31)
    refreshbrowser.Font = Enum.Font.Gotham
    refreshbrowser.Text = "Refresh"
    refreshbrowser.TextColor3 = Color3.new(1, 1, 1)
    refreshbrowser.TextScaled = true
    refreshbrowser.TextSize = 14
    refreshbrowser.TextWrapped = true
    refreshbrowser.MouseButton1Click:Connect(function()
        contentsweb.Text = ""
        webstatus.Text = "Connecting"
        if syn then
            local content = syn.request({
                Url = geturl,
                Method = "GET"
            })
            webstatus.Text = content.StatusCode.." "..content.StatusMessage
            if not content.StatusCode == 200 then
                contentsweb.Text = "Failed"
            end
            contentsweb.Text = content.Body
        else
            webstatus.Text = "Not Synapse X"
            contentsweb.Text = "Failed"
        end
    end)
    
    if syn then
        local content = syn.request({
            Url = geturl,
            Method = "GET"
        })
        webstatus.Text = content.StatusCode.." "..content.StatusMessage
        if not content.StatusCode == 200 then
            contentsweb.Text = "Failed"
        end
        contentsweb.Text = content.Body
    end
end

function createContents(title, string)
    local contentviewer = Instance.new("Frame")
    local contents = Instance.new("TextLabel")
    local titlecontents = Instance.new("TextBox")
    local closecontents = Instance.new("TextButton")

    contentviewer.Name = "contentviewer"
    contentviewer.Parent = titanium
    contentviewer.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
    contentviewer.BorderSizePixel = 0
    contentviewer.Position = UDim2.new(0.0699356943, 0, 0.0210656747, 0)
    contentviewer.Size = UDim2.new(0, 338, 0, 322)
    contentviewer.Active = true
    contentviewer.Draggable = true

    contents.Name = "contents"
    contents.Parent = contentviewer
    contents.BackgroundColor3 = Color3.new(1, 1, 1)
    contents.BackgroundTransparency = 1
    contents.Position = UDim2.new(0, 0, 0.127329201, 0)
    contents.Size = UDim2.new(0, 338, 0, 281)
    contents.Font = Enum.Font.Code
    contents.Text = "contents"
    contents.TextColor3 = Color3.new(1, 1, 1)
    contents.TextSize = 14
    contents.TextXAlignment = Enum.TextXAlignment.Left
    contents.TextYAlignment = Enum.TextYAlignment.Top
    contents.TextWrapped = true

    titlecontents.Name = "titlecontents"
    titlecontents.Parent = contentviewer
    titlecontents.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
    titlecontents.BorderSizePixel = 0
    titlecontents.Position = UDim2.new(0, 0, 0.0807453394, 0)
    titlecontents.Size = UDim2.new(0, 338, 0, 15)
    titlecontents.ClearTextOnFocus = false
    titlecontents.Font = Enum.Font.Code
    titlecontents.Text = tostring(title)
    titlecontents.TextColor3 = Color3.new(1, 1, 1)
    titlecontents.TextSize = 14
    titlecontents.TextXAlignment = Enum.TextXAlignment.Left
    titlecontents.TextWrapped = true
    titlecontents.TextEditable = false

    closecontents.Name = "closebrowser"
    closecontents.Parent = webbrowser
    closecontents.BackgroundColor3 = Color3.new(0.258824, 0.258824, 0.258824)
    closecontents.BorderSizePixel = 0
    closecontents.Position = UDim2.new(0.908284009, 0, 0, 0)
    closecontents.Size = UDim2.new(0, 31, 0, 26)
    closecontents.Font = Enum.Font.Ubuntu
    closecontents.Text = "X"
    closecontents.TextColor3 = Color3.new(1, 1, 1)
    closecontents.TextScaled = true
    closecontents.TextSize = 14
    closecontents.TextWrapped = true
    closecontents.MouseButton1Click:Connect(function()
        webbrowser:Destroy()
    end)

    contents.Text = game:HttpGet(webstatus.Text)
end

if not syn then
    popup("Since you are not using Synapse X, more bugs will appear. If you spot any, make sure to report it on the Discord server.")
end
end)

if not success then
    warn(tostring(fail))

    warn("An error occured on Jace's Script Hub.")

    local ErrorOnExploitGui = Instance.new("ScreenGui")
    local LogBg = Instance.new("Frame")
    local title = Instance.new("TextLabel")
    local log = Instance.new("TextBox")
    local close = Instance.new("TextButton")
    local Error = Instance.new("Frame")
    local bg = Instance.new("Frame")
    local happen = Instance.new("TextLabel")
    local log_2 = Instance.new("TextButton")
    local ok = Instance.new("TextButton")
    local title_2 = Instance.new("TextLabel")
    local UserInputService = game:GetService("UserInputService")
    local dragging
    local dragInput
    local dragStart
    local startPos
    local img = Instance.new("ImageLabel")
    local close_2 = Instance.new("TextButton")
    local min = Instance.new("TextButton")

    ErrorOnExploitGui.Name = "ErrorOnExploitGui"
    ErrorOnExploitGui.Parent = game:GetService("CoreGui")
    ErrorOnExploitGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ErrorOnExploitGui.ResetOnSpawn = false

    LogBg.Name = "LogBg"
    LogBg.Parent = ErrorOnExploitGui
    LogBg.Active = true
    LogBg.AnchorPoint = Vector2.new(0.5, 0.5)
    LogBg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    LogBg.BorderSizePixel = 0
    LogBg.Position = UDim2.new(0.458923489, 0, 0.499761105, 0)
    LogBg.Size = UDim2.new(0, 367, 0, 380)
    LogBg.Visible = false

    title.Name = "title"
    title.Parent = LogBg
    title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    title.BackgroundTransparency = 1.000
    title.Size = UDim2.new(0, 367, 0, 41)
    title.Font = Enum.Font.SourceSans
    title.Text = "Log"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextScaled = true
    title.TextSize = 14.000
    title.TextWrapped = true

    log.Name = "log"
    log.Parent = LogBg
    log.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    log.Position = UDim2.new(0.068119891, 0, 0.107894741, 0)
    log.Size = UDim2.new(0, 319, 0, 261)
    log.ClearTextOnFocus = false
    log.Font = Enum.Font.Code
    log.MultiLine = true
    log.PlaceholderText = "Log"
    log.Text = tostring(fail)
    log.TextColor3 = Color3.fromRGB(0, 0, 0)
    log.TextSize = 12.000
    log.TextWrapped = true
    log.TextXAlignment = Enum.TextXAlignment.Left
    log.TextYAlignment = Enum.TextYAlignment.Top
    log.TextEditable = false

    close.Name = "close"
    close.Parent = LogBg
    close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    close.BorderSizePixel = 0
    close.Position = UDim2.new(0.0708446875, 0, 0.83157897, 0)
    close.Size = UDim2.new(0, 318, 0, 50)
    close.Font = Enum.Font.SourceSansBold
    close.Text = "Close"
    close.TextColor3 = Color3.fromRGB(0, 0, 0)
    close.TextScaled = true
    close.TextSize = 14.000
    close.TextWrapped = true
    close.MouseButton1Click:Connect(function()
        ErrorOnExploitGui:Destroy()
    end)

    Error.Name = "Error"
    Error.Parent = ErrorOnExploitGui
    Error.Active = true
    Error.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Error.BorderSizePixel = 0
    Error.Position = UDim2.new(0.216005668, 0, 0.215297446, 0)
    Error.Size = UDim2.new(0, 477, 0, 17)
    local function update(input)
        local delta = input.Position - dragStart
        Error.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    Error.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = Error.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    Error.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    bg.Name = "bg"
    bg.Parent = Error
    bg.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
    bg.BorderSizePixel = 0
    bg.Position = UDim2.new(0, 0, 1, 0)
    bg.Size = UDim2.new(0, 477, 0, 229)

    happen.Name = "happen"
    happen.Parent = bg
    happen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    happen.BackgroundTransparency = 1.000
    happen.Size = UDim2.new(0, 477, 0, 153)
    happen.Font = Enum.Font.Code
    happen.Text = "An error occured or something is preventing you to continue."
    happen.TextColor3 = Color3.fromRGB(255, 255, 255)
    happen.TextScaled = true
    happen.TextSize = 14.000
    happen.TextWrapped = true

    log_2.Name = "log"
    log_2.Parent = bg
    log_2.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
    log_2.BorderSizePixel = 0
    log_2.Position = UDim2.new(0.0649895146, 0, 0.694323123, 0)
    log_2.Size = UDim2.new(0, 201, 0, 50)
    log_2.Font = Enum.Font.Code
    log_2.Text = "What happened?"
    log_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    log_2.TextScaled = true
    log_2.TextSize = 14.000
    log_2.TextWrapped = true
    log_2.MouseButton1Click:Connect(function()
        Error.Visible = false
        LogBg.Visible = true
        print("Revealed log")
    end)

    local function update(input)
        local delta = input.Position - dragStart
        LogBg.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    LogBg.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = LogBg.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    LogBg.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    ok.Name = "ok"
    ok.Parent = bg
    ok.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
    ok.BorderSizePixel = 0
    ok.Position = UDim2.new(0.509433985, 0, 0.694323123, 0)
    ok.Size = UDim2.new(0, 201, 0, 50)
    ok.Font = Enum.Font.Code
    ok.Text = "Okay"
    ok.TextColor3 = Color3.fromRGB(0, 0, 0)
    ok.TextScaled = true
    ok.TextSize = 14.000
    ok.TextWrapped = true
    ok.MouseButton1Click:Connect(function()
        ErrorOnExploitGui:Destroy()
    end)

    title_2.Name = "title"
    title_2.Parent = Error
    title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    title_2.BackgroundTransparency = 1.000
    title_2.Position = UDim2.new(0.0503144711, 0, 0, 0)
    title_2.Size = UDim2.new(0, 30, 0, 17)
    title_2.Font = Enum.Font.Code
    title_2.Text = "Error"
    title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    title_2.TextScaled = true
    title_2.TextSize = 14.000
    title_2.TextWrapped = true
    title_2.TextXAlignment = Enum.TextXAlignment.Left

    img.Name = "img"
    img.Parent = Error
    img.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    img.BackgroundTransparency = 1.000
    img.Size = UDim2.new(0, 24, 0, 17)
    img.Image = "http://www.roblox.com/asset/?id=612002242"

    close_2.Name = "close"
    close_2.Parent = Error
    close_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    close_2.BorderSizePixel = 0
    close_2.Position = UDim2.new(0.930817604, 0, 0, 0)
    close_2.Size = UDim2.new(0, 33, 0, 17)
    close_2.Font = Enum.Font.GothamBlack
    close_2.Text = "X"
    close_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    close_2.TextScaled = true
    close_2.TextSize = 14.000
    close_2.TextWrapped = true

    close_2.MouseButton1Click:Connect(function()
        ErrorOnExploitGui:Destroy()
    end)

    min.Name = "min"
    min.Parent = Error
    min.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    min.BorderSizePixel = 0
    min.Position = UDim2.new(0.861635208, 0, 0, 0)
    min.Size = UDim2.new(0, 33, 0, 17)
    min.Font = Enum.Font.GothamBlack
    min.Text = "-"
    min.TextColor3 = Color3.fromRGB(0, 0, 0)
    min.TextScaled = true
    min.TextSize = 14.000
    min.TextWrapped = true
    min.MouseButton1Click:Connect(function()
        if bg.Visible == true then
            bg.Visible = false
            Error.Position = UDim2.new(0, 0, 0.976, 0)
        else
            bg.Visible = true
            Error.Position = UDim2.new(0.18, 0, 0.305, 0)
        end
    end)

    warn("Loaded error.")
    game:GetService("CoreGui").titanium:Destroy()
end
