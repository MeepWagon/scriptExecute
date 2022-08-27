local Players = game:GetService("Players")
local repStor = game:GetService("ReplicatedStorage")

local remoteEvent = game.ReplicatedStorage.Common.SendScript
local plr = game.Players.LocalPlayer

local Roact = require(repStor.Packages.roact)
local RoactUI = require(script.RoactUI)

Roact.mount(RoactUI, Players.LocalPlayer.PlayerGui, "RoactUI")

workspace.Map["Piano Bundle"]:WaitForChild("PianoGui").Parent = plr.PlayerGui

local textBox = plr.PlayerGui:WaitForChild("RoactUI"):WaitForChild("Frame"):WaitForChild("TextBox")

textBox.FocusLost:Connect(function(bool)
	if bool then
		remoteEvent:FireServer(textBox.Text, plr)
		textBox.Text = "Sent"
		task.wait(1.5)
		textBox.Text = "Paste script here!"
		textBox:ReleaseFocus()
	end
end)