
script.Parent.ProximityPrompt.PromptButtonHoldBegan:Connect(function(player)
	game.ReplicatedStorage.remote_events.mouse:FireClient(player, script.Parent.Highlight, "enter")
end)

script.Parent.ProximityPrompt.PromptButtonHoldEnded:Connect(function(player)
	game.ReplicatedStorage.remote_events.mouse:FireClient(player, script.Parent.Highlight, "leave")
end)