
local items = {"Dough [Kneaded]", "Unbaked Apple Pie", "Unbaked Cinnamon Rolls","Unbaked Cupcakes","Unbaked Scones","Uncooked Pancakes" , "Cake Batter"  }
local user = nil

function cook(player, oven)
	for i,v in pairs(items) do
		if player.Character:FindFirstChild(v) and player.Character:FindFirstChild(v):IsA("Tool") then
			if player.Character:FindFirstChild(v).Name == "Dough [Unkneaded]" then
				return
			end
			oven.Attachment.ProximityPrompt.Enabled = false
			player.Character:FindFirstChild(v):Destroy()
			oven.Uncooked:FindFirstChild(v).Transparency = 0
			for i,v in pairs(oven.Uncooked:FindFirstChild(v):GetChildren()) do
				v.Transparency = 0
			end
			task.wait(5)
			oven.Attachment.ProximityPrompt.ActionText = "Take food out of oven"
			oven.Uncooked:FindFirstChild(v).Transparency = 1
			for i,v in pairs(oven.Uncooked:FindFirstChild(v):GetChildren()) do
				v.Transparency = 1
			end
			oven.Cooked:FindFirstChild(v).Transparency = 0
			for i,v in pairs(oven.Cooked:FindFirstChild(v):GetChildren()) do
				v.Transparency = 0
			end
			oven.Attachment.ProximityPrompt.Enabled = true
			return {player, v}
		end
	end
end


workspace.Baker.gameplay.Oven.Attachment.ProximityPrompt.Triggered:Connect(function(player)

	if user == nil then
			user = cook(player, workspace.Baker.gameplay.Oven)
	elseif player == user[1] then
		if user[2] == "Dough [Kneaded]" then
			local give_item = game.ReplicatedStorage.Baker_items.Bread:Clone()
			give_item.Parent = player.Backpack
			
			workspace.Baker.gameplay.Oven.Cooked:FindFirstChild(user[2]).Transparency = 1
			for i,v in pairs(workspace.Baker.gameplay.Oven.Cooked:FindFirstChild(user[2]):GetChildren()) do
				v.Transparency = 1
			end
		elseif user[2] == "Unbaked Apple Pie" then
			local give_item = game.ReplicatedStorage.Baker_items["Apple Pie"]:Clone()
			give_item.Parent = player.Backpack

			workspace.Baker.gameplay.Oven.Cooked:FindFirstChild(user[2]).Transparency = 1
			for i,v in pairs(workspace.Baker.gameplay.Oven.Cooked:FindFirstChild(user[2]):GetChildren()) do
				v.Transparency = 1
			end
		elseif user[2] == "Unbaked Cinnamon Rolls" then
			local give_item = game.ReplicatedStorage.Baker_items["Unfinished Cinnamon Rolls"]:Clone()
			give_item.Parent = player.Backpack

			workspace.Baker.gameplay.Oven.Cooked:FindFirstChild(user[2]).Transparency = 1
			for i,v in pairs(workspace.Baker.gameplay.Oven.Cooked:FindFirstChild(user[2]):GetChildren()) do
				v.Transparency = 1
			end
		elseif user[2] == "Unbaked Cupcakes" then
			local give_item = game.ReplicatedStorage.Baker_items["Cupcakes"]:Clone()
			give_item.Parent = player.Backpack

			workspace.Baker.gameplay.Oven.Cooked:FindFirstChild(user[2]).Transparency = 1
			for i,v in pairs(workspace.Baker.gameplay.Oven.Cooked:FindFirstChild(user[2]):GetChildren()) do
				v.Transparency = 1
			end
		elseif user[2] == "Unbaked Scones" then
			local give_item = game.ReplicatedStorage.Baker_items["Scones"]:Clone()
			give_item.Parent = player.Backpack

			workspace.Baker.gameplay.Oven.Cooked:FindFirstChild(user[2]).Transparency = 1
			for i,v in pairs(workspace.Baker.gameplay.Oven.Cooked:FindFirstChild(user[2]):GetChildren()) do
				v.Transparency = 1
			end
		elseif user[2] == "Uncooked Pancakes" then
			local give_item = game.ReplicatedStorage.Baker_items["Unfinished Pancakes"]:Clone()
			give_item.Parent = player.Backpack

			workspace.Baker.gameplay.Oven.Cooked:FindFirstChild(user[2]).Transparency = 1
			for i,v in pairs(workspace.Baker.gameplay.Oven.Cooked:FindFirstChild(user[2]):GetChildren()) do
				v.Transparency = 1
			end
		elseif user[2] == "Cake Batter" then
			local give_item = game.ReplicatedStorage.Baker_items["Unfinished Cake"]:Clone()
			give_item.Parent = player.Backpack

			workspace.Baker.gameplay.Oven.Cooked:FindFirstChild(user[2]).Transparency = 1
			for i,v in pairs(workspace.Baker.gameplay.Oven.Cooked:FindFirstChild(user[2]):GetChildren()) do
				v.Transparency = 1
			end
			
		end
		workspace.Baker.gameplay.Oven.Attachment.ProximityPrompt.ActionText = "Hold out food to cook it"
		user = nil
	end
end)

workspace.Baker.gameplay.Oven2.Attachment.ProximityPrompt.Triggered:Connect(function(player)

	if user == nil then
		user = cook(player, workspace.Baker.gameplay.Oven2)
	elseif player == user[1] then
		if user[2] == "Dough [Kneaded]" then
			local give_item = game.ReplicatedStorage.Baker_items.Bread:Clone()
			give_item.Parent = player.Backpack

			workspace.Baker.gameplay.Oven2.Cooked:FindFirstChild(user[2]).Transparency = 1
			for i,v in pairs(workspace.Baker.gameplay.Oven2.Cooked:FindFirstChild(user[2]):GetChildren()) do
				v.Transparency = 1
			end
		elseif user[2] == "Unbaked Apple Pie" then
			local give_item = game.ReplicatedStorage.Baker_items["Apple Pie"]:Clone()
			give_item.Parent = player.Backpack

			workspace.Baker.gameplay.Oven2.Cooked:FindFirstChild(user[2]).Transparency = 1
			for i,v in pairs(workspace.Baker.gameplay.Oven2.Cooked:FindFirstChild(user[2]):GetChildren()) do
				v.Transparency = 1
			end
		elseif user[2] == "Unbaked Cinnamon Rolls" then
			local give_item = game.ReplicatedStorage.Baker_items["Unfinished Cinnamon Rolls"]:Clone()
			give_item.Parent = player.Backpack

			workspace.Baker.gameplay.Oven2.Cooked:FindFirstChild(user[2]).Transparency = 1
			for i,v in pairs(workspace.Baker.gameplay.Oven2.Cooked:FindFirstChild(user[2]):GetChildren()) do
				v.Transparency = 1
			end
		elseif user[2] == "Unbaked Cupcakes" then
			local give_item = game.ReplicatedStorage.Baker_items["Cupcakes"]:Clone()
			give_item.Parent = player.Backpack

			workspace.Baker.gameplay.Oven2.Cooked:FindFirstChild(user[2]).Transparency = 1
			for i,v in pairs(workspace.Baker.gameplay.Oven2.Cooked:FindFirstChild(user[2]):GetChildren()) do
				v.Transparency = 1
			end
		elseif user[2] == "Unbaked Scones" then
			local give_item = game.ReplicatedStorage.Baker_items["Scones"]:Clone()
			give_item.Parent = player.Backpack

			workspace.Baker.gameplay.Oven2.Cooked:FindFirstChild(user[2]).Transparency = 1
			for i,v in pairs(workspace.Baker.gameplay.Oven2.Cooked:FindFirstChild(user[2]):GetChildren()) do
				v.Transparency = 1
			end
		elseif user[2] == "Uncooked Pancakes" then
			local give_item = game.ReplicatedStorage.Baker_items["Unfinished Pancakes"]:Clone()
			give_item.Parent = player.Backpack

			workspace.Baker.gameplay.Oven2.Cooked:FindFirstChild(user[2]).Transparency = 1
			for i,v in pairs(workspace.Baker.gameplay.Oven2.Cooked:FindFirstChild(user[2]):GetChildren()) do
				v.Transparency = 1
			end
		elseif user[2] == "Cake Batter" then
			local give_item = game.ReplicatedStorage.Baker_items["Unfinished Cake"]:Clone()
			give_item.Parent = player.Backpack

			workspace.Baker.gameplay.Oven2.Cooked:FindFirstChild(user[2]).Transparency = 1
			for i,v in pairs(workspace.Baker.gameplay.Oven2.Cooked:FindFirstChild(user[2]):GetChildren()) do
				v.Transparency = 1
			end

		end
		workspace.Baker.gameplay.Oven2.Attachment.ProximityPrompt.ActionText = "Hold out food to cook it"
		user = nil
	end
end)