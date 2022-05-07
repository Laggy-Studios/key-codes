local https = game:GetService('HttpService')

local response = https:GetAsync('https://raw.githubusercontent.com/dwyl/english-words/master/words.txt')

local words1 = tostring(response):split('\n')

game.ReplicatedStorage.checkanswer.OnServerEvent:Connect(function(plr,answer)
	
	table.find(words1,answer)
	
	print(words1[table.find(words1,answer)])
	
	game.ReplicatedStorage.checkanswer:FireClient(plr,'Correct!!!')
	
end)
