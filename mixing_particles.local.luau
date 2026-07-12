
game.ReplicatedStorage.remote_events.mixing_particles.OnClientEvent:Connect(function(particles,item)
	print("dont forget to do particles")
	if item == "Dough" then
		particles.Color = ColorSequence.new(Color3.fromRGB(150, 140, 104))
		particles.Enabled = true
		task.wait(3)
		particles.Enabled = false
	end
end)