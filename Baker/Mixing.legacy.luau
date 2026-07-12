
workspace.Baker.gameplay.Mixing.ProximityPrompt.Triggered:Connect(function(player)
	game.ReplicatedStorage.remote_events.GUI_request:FireClient(player,"mixing")
	player.Character.HumanoidRootPart.Anchored = true
end)

workspace.Baker.gameplay.Mixing2.ProximityPrompt.Triggered:Connect(function(player)
	game.ReplicatedStorage.remote_events.GUI_request:FireClient(player,"mixing")
	player.Character.HumanoidRootPart.Anchored = true
end)

function mixing(recipie,output,player,particleem)
	for i,v in pairs(recipie) do
		if player.Backpack:FindFirstChild(v) then
			if player.Backpack:FindFirstChild(v):IsA("Tool") then
			
			end
		elseif 	player.Character:FindFirstChild(v) then
			if player.Character:FindFirstChild(v):IsA("Tool") then

			end
		else
			game.ReplicatedStorage.remote_events.Failed_mixing:FireClient(player)
			return
		end
	end
	
	for i,v in pairs(recipie) do
		if player.Backpack:FindFirstChild(v) then
			if player.Backpack:FindFirstChild(v):IsA("Tool") then
				player.Backpack:FindFirstChild(v):Destroy()
			end
		elseif 	player.Character:FindFirstChild(v) then
			if player.Character:FindFirstChild(v):IsA("Tool") then
				player.Character:FindFirstChild(v):Destroy()
			end
		else
			return
		end
	end

	
local anim = player.Character.Humanoid:LoadAnimation(script.Animation)
	for i,v in ipairs(player.Character.Humanoid:FindFirstChild("Animator"):GetPlayingAnimationTracks()) do
		v:Stop()
	end
	player.Character.HumanoidRootPart.Anchored = true
anim:Play()
game.ReplicatedStorage.remote_events.mixing_particles:FireClient(player,particleem,output)
task.wait(3)
anim:Stop()
	player.Character.HumanoidRootPart.Anchored = false

	local give_item = game.ReplicatedStorage.Baker_items:FindFirstChild(output):Clone()
	give_item.Parent = player.Backpack

end



game.ReplicatedStorage.remote_events.mixing_request.OnServerEvent:Connect(function(player,items)
	if items == "Dough" then
		mixing({"Flour","Water","Yeast"},"Dough [Unkneaded]",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	elseif items == "Apple_Filling" then
		mixing({"Juicy Apple","Sugar"},"Sweet Apple Filling",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	elseif items == "Apple_pie" then
		mixing({"Sweet Apple Filling","Sweet Dough [Kneaded]"},"Unbaked Apple Pie",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	elseif items == "Cake_batter" then
		mixing({"Sweet Dough [Kneaded]","Butter"},"Cake Batter",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	elseif items == "Cinnamon_Dough" then
		mixing({"Sweet Dough [Kneaded]","Cinnamon"},"Unbaked Cinnamon Rolls",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	elseif items == "Cinnamon_Glaze" then
		mixing({"Milk","Sugar"},"Cinnamon Glaze",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	elseif items == "Cake" then
		mixing({"Unfinished Cake","Butter Cream"},"Cake!",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	elseif items == "Scones" then
		mixing({"Sweet Dough [Kneaded]"},"Unbaked Scones",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	elseif items == "Fish_Burger" then
		mixing({"Bread","Fish"},"Fish Burger",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	elseif items == "Cupcakes" then
		mixing({"Sweet Dough [Kneaded]","Vinilla Extract"},"Unbaked Cupcakes",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	elseif items == "Sweet_Dough" then
		mixing({"Milk","Sugar","Flour"},"Sweet Dough [Unkneaded]",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	elseif items == "butter_cream" then
		mixing({"Butter","Sugar", "Vinilla Extract"},"Butter Cream",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	elseif items == "Uncooked_Pancakes" then
		mixing({"Sweet Dough [Kneaded]", "Butter"},"Uncooked Pancakes",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	elseif items == "Cinnamon_rolls" then
		mixing({"Unfinished Cinnamon Rolls","Cinnamon Glaze"},"Cinnamon Rolls",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	elseif items == "Pancakes" then
		mixing({"Unfinished Pancakes", "Maple Syrup"},"Pancakes",player,game.Workspace.Baker.gameplay.Mixing.Part.ParticleEmitter)
	end
end)