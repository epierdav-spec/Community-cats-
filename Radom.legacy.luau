
game.ReplicatedStorage.remote_events.Exit_unachor.OnServerEvent:Connect(function(player)
	player.Character.HumanoidRootPart.Anchored = false
end)