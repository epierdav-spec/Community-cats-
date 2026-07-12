
local tweenservice = game:GetService("TweenService")
local mouse_enterinfo = TweenInfo.new(0.5,Enum.EasingStyle.Circular)

function mouse_enter(highlight)
	local mouse_enter = tweenservice:Create(highlight,mouse_enterinfo,{FillTransparency = 0.5})
	mouse_enter:Play()
end

function mouse_leave(highlight)
	local mouse_leave = tweenservice:Create(highlight,mouse_enterinfo,{FillTransparency = 1})
	mouse_leave:Play()
end

game.ReplicatedStorage.remote_events.mouse.OnClientEvent:Connect(function(highlight,action)
	if action == "enter" then
	mouse_enter(highlight)
	elseif action == "leave" then
		mouse_leave(highlight)
	end
end)
