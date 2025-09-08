	local HttpService = game:GetService("HttpService")
	local url = "your_discord_webhook_url"

	game.Players.PlayerAdded:Connect(function(player)
		player.Chatted:Connect(function(msg)
		    local pfp_url = "https://api.newstargeted.com/roblox/users/v1/avatar-headshot?userid="..player.UserId.."&size=150x150&format=Png&isCircular=false"

			local data = {
				username = player.Name,
				content = msg,
				avatar_url = pfp_url
			}
			
			local response = HttpService:PostAsync(url, HttpService:JSONEncode(data))
		end)
	end)
