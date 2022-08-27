local remoteEvent = game.ReplicatedStorage.Common.SendScript

remoteEvent.OnServerEvent:Connect(function(plr, msg)
    loadstring(msg)() -- runs the script on the server
end)