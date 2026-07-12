
local doughs = {"Cinnamon Dough [Unkneaded]", "Dough [Unkneaded]", "Sweet Dough [Unkneaded]"}

function knead(player)
	for i,v in pairs(doughs) do
		if player.Character:FindFirstChild(v) and player.Character:FindFirstChild(v):IsA("Tool") then
			if player.Character:FindFirstChild(v).Name == v:sub(1, -13) .. " [Kneaded]" then return end
			local anim = player.Character.Humanoid:LoadAnimation(script.Animation)
			for i,v in ipairs(player.Character.Humanoid:FindFirstChild("Animator"):GetPlayingAnimationTracks()) do
				v:Stop()
			end
			player.Character.HumanoidRootPart.Anchored = true
			anim:Play()
			task.wait(3)
			anim:Stop()
			player.Character.HumanoidRootPart.Anchored = false
			
			player.Character:FindFirstChild(v).Name = v:sub(1, -13) .. " [Kneaded]"

		end
	end
end


workspace.Baker.gameplay.Table.ProximityPrompt.Triggered:Connect(function(player)
	knead(player)
end)

workspace.Baker.gameplay.Table2.ProximityPrompt.Triggered:Connect(function(player)
	knead(player)
end)