local TextLabel = Instance.new("TextLabel")
TextLabel.Text = "PU Gaming - " .. os.date("%H:%M:%S") .. "  Pin: 51 (58 FPS)"
TextLabel.Size = UDim2.new(0, 400, 0, 40)
TextLabel.Position = UDim2.new(0.5, -200, 0, 20)
TextLabel.BackgroundTransparency = 1
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.TextScaled = true
TextLabel.Parent = game:GetService("CoreGui")

-- Rainbow Effect
task.spawn(function()
	while true do
		for h = 0, 1, 0.01 do
			TextLabel.TextColor3 = Color3.fromHSV(h, 1, 1)
			task.wait(0.05)
		end
	end
end)
