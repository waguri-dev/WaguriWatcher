--PlayerManager!!

PlayerManager = {}

function PlayerManager:getClientPlayer()
	if game == nil then
		return
	end

	local player = game.Players.LocalPlayer
	if player then
		return player
	else
		return {}
	end
end

function PlayerManager:getClientSpeed()
	local player = self:getClientPlayer()
	if not player.Character then 
		return 0 
	end

	local root = player.Character:FindFirstChild("HumanoidRootPart")
	if not root then 
		return 0 
	end

	return root.Velocity.Magnitude
end

function PlayerManager:getPlayerCount()
	if game == nil then
		return 0
	end

	return #game.Players:GetPlayers()
end


return PlayerManager
