--[[
	this is an actual working plugin that is just here.

	i just put this here to showcase the plugin

	dont judge

]]

local toolbar = plugin:CreateToolbar("UA Software")

local Opened = false

local newScriptButton = toolbar:CreateButton("Data Store", "", "rbxassetid://10446630653")

local NewWidgetInfo = DockWidgetPluginGuiInfo.new(
	Enum.InitialDockState.Left,
	false,
	false,
	200,
	300,
	150,
	150
)

local Wiget = plugin:CreateDockWidgetPluginGui("UA Software", NewWidgetInfo)
Wiget.Title = "UA Software"

local UAGui = script.UA_Software_Gui
UAGui.Parent = Wiget

newScriptButton.Click:Connect(function()
	if Opened then
		Wiget.Enabled = false
	else
		Wiget.Enabled = true
	end
end)

