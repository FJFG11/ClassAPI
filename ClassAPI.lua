--[[
 ______     __         ______     ______     ______    	 ______     ______   __    
/\  ___\   /\ \       /\  __ \   /\  ___\   /\  ___\   	/\  __ \   /\  == \ /\ \   
\ \ \____  \ \ \____  \ \  __ \  \ \___  \  \ \___  \  	\ \  __ \  \ \  _-/ \ \ \  
 \ \_____\  \ \_____\  \ \_\ \_\  \/\_____\  \/\_____\   \ \_\ \_\  \ \_\    \ \_\ 
  \/_____/   \/_____/   \/_/\/_/   \/_____/   \/_____/    \/_/\/_/   \/_/     \/_/ 
                                                                                  
 // made my FJFG11
 // classAPI just allows you to get code suggestions when typing in the CodeLine UI

--]]

local classAPI = {
	
	print("[ClassAPI] Loaded"),

	["Players"] = {
		{Name="LocalPlayer", Type="Property"},
		{Name="PlayerAdded", Type="Event"},
		{Name="PlayerRemoving", Type="Event"},
		{Name="GetPlayers", Type="Method"},
		{Name="GetUserIdFromNameAsync", Type="Method"},
		{Name="GetNameFromUserIdAsync", Type="Method"},
	},
	
	["Humanoid"] = {
		{Name="WalkSpeed", Type="Property"},
		{Name="Health", Type="Property"},
		{Name="MaxHealth", Type="Property"},
		{Name="HipHeight", Type="Property"},
		
		{Name="PlatformStand", Type="Property"},
		
		{Name="DisplayName", Type="Property"},
		{Name="Name", Type="Property"},
	},

	["Workspace"] = {
		{Name="CurrentCamera", Type="Property"},
		{Name="Gravity", Type="Property"},
		{Name="Terrain", Type="Property"},
		{Name="StreamingEnabled", Type="Property"},

		{Name="Raycast", Type="Method"},
		{Name="FindPartOnRay", Type="Method"},
		{Name="GetPartsInPart", Type="Method"},
		{Name="GetPartBoundsInBox", Type="Method"},
	},

	["RunService"] = {
		{Name="Heartbeat", Type="Event"},
		{Name="RenderStepped", Type="Event"},
		{Name="Stepped", Type="Event"},
		{Name="IsClient", Type="Method"},
		{Name="IsServer", Type="Method"},
	},

	["TweenService"] = {
		{Name="Create", Type="Method"},
		{Name="GetValue", Type="Method"},
	},

	["UserInputService"] = {
		{Name="MouseBehavior", Type="Property"},
		{Name="MouseIconEnabled", Type="Property"},
		{Name="KeyboardEnabled", Type="Property"},
		{Name="TouchEnabled", Type="Property"},

		{Name="InputBegan", Type="Event"},
		{Name="InputEnded", Type="Event"},
		{Name="InputChanged", Type="Event"},
		{Name="GetMouseLocation", Type="Method"},
		{Name="IsKeyDown", Type="Method"},
	},

	["ReplicatedStorage"] = {
		{Name="FindFirstChild", Type="Method"},
		{Name="WaitForChild", Type="Method"},
		{Name="GetChildren", Type="Method"},
	},

	["Debris"] = {
		{Name="AddItem", Type="Method"},
	},

	["HttpService"] = {
		{Name="GenerateGUID", Type="Method"},
		{Name="JSONEncode", Type="Method"},
		{Name="JSONDecode", Type="Method"},
		{Name="GetAsync", Type="Method"},
		{Name="PostAsync", Type="Method"},
	},

	["CollectionService"] = {
		{Name="AddTag", Type="Method"},
		{Name="RemoveTag", Type="Method"},
		{Name="HasTag", Type="Method"},
		{Name="GetTagged", Type="Method"},
	},

	["ScreenGui"] = {
		{Name="Enabled", Type="Property"},
		{Name="DisplayOrder", Type="Property"},
		{Name="ResetOnSpawn", Type="Property"},
	},

	["Frame"] = {
		{Name="BackgroundColor3", Type="Property"},
		{Name="BackgroundTransparency", Type="Property"},
		{Name="BorderSizePixel", Type="Property"},
		{Name="Size", Type="Property"},
		{Name="Position", Type="Property"},
		{Name="Visible", Type="Property"},
	},

	["TextLabel"] = {
		{Name="Text", Type="Property"},
		{Name="TextColor3", Type="Property"},
		{Name="TextScaled", Type="Property"},
		{Name="Font", Type="Property"},
		{Name="TextSize", Type="Property"},
		{Name="RichText", Type="Property"},
	},

	["TextButton"] = {
		{Name="Text", Type="Property"},
		{Name="MouseButton1Click", Type="Event"},
		{Name="AutoButtonColor", Type="Property"},
	},

	["TextBox"] = {
		{Name="Text", Type="Property"},
		{Name="PlaceholderText", Type="Property"},
		{Name="ClearTextOnFocus", Type="Property"},
		{Name="FocusLost", Type="Event"},
		{Name="Focused", Type="Event"},
	},

	["ImageLabel"] = {
		{Name="Image", Type="Property"},
		{Name="ImageColor3", Type="Property"},
		{Name="ScaleType", Type="Property"},
	},

	["ImageButton"] = {
		{Name="Image", Type="Property"},
		{Name="MouseButton1Click", Type="Event"},
	},

	["UIStroke"] = {
		{Name="Color", Type="Property"},
		{Name="Thickness", Type="Property"},
		{Name="Transparency", Type="Property"},
	},

	["UICorner"] = {
		{Name="CornerRadius", Type="Property"},
	},

	["UIGradient"] = {
		{Name="Color", Type="Property"},
		{Name="Rotation", Type="Property"},
	},

	["Color3"] = {
		{Name="R", Type="Property"},
		{Name="G", Type="Property"},
		{Name="B", Type="Property"},

		{Name="fromRGB", Type="Method"},
		{Name="fromHSV", Type="Method"},
		{Name="new", Type="Method"},
	},

	["UDim2"] = {
		{Name="X", Type="Property"},
		{Name="Y", Type="Property"},

		{Name="new", Type="Method"},
		{Name="fromScale", Type="Method"},
		{Name="fromOffset", Type="Method"},
	},

	["Enum"] = {
		{Name="KeyCode", Type="Enum"},
		{Name="UserInputType", Type="Enum"},
		{Name="Material", Type="Enum"},
		{Name="Font", Type="Enum"},
		{Name="EasingStyle", Type="Enum"},
		{Name="EasingDirection", Type="Enum"},
	},

	["Camera"] = {
		{Name="CFrame", Type="Property"},
		{Name="FieldOfView", Type="Property"},
		{Name="CameraType", Type="Property"},
		{Name="Focus", Type="Property"},

		{Name="ScreenPointToRay", Type="Method"},
		{Name="ViewportPointToRay", Type="Method"},
	},

	["Sound"] = {
		{Name="SoundId", Type="Property"},
		{Name="Volume", Type="Property"},
		{Name="Pitch", Type="Property"},
		{Name="Looped", Type="Property"},
		{Name="Playing", Type="Property"},

		{Name="Play", Type="Method"},
		{Name="Pause", Type="Method"},
		{Name="Stop", Type="Method"},
	},

	["Animation"] = {
		{Name="AnimationId", Type="Property"},
	},

	["Animator"] = {
		{Name="LoadAnimation", Type="Method"},
		{Name="GetPlayingAnimationTracks", Type="Method"},
	},

	["AnimationTrack"] = {
		{Name="Play", Type="Method"},
		{Name="Stop", Type="Method"},
		{Name="AdjustSpeed", Type="Method"},
		{Name="AdjustWeight", Type="Method"},
		{Name="Length", Type="Property"},
		{Name="Looped", Type="Property"},
	},

	["BodyVelocity"] = {
		{Name="Velocity", Type="Property"},
		{Name="MaxForce", Type="Property"},
	},

	["BodyGyro"] = {
		{Name="CFrame", Type="Property"},
		{Name="MaxTorque", Type="Property"},
	},

	["Attachment"] = {
		{Name="WorldPosition", Type="Property"},
		{Name="WorldCFrame", Type="Property"},
	},

	["RaycastParams"] = {
		{Name="FilterType", Type="Property"},
		{Name="FilterDescendantsInstances", Type="Property"},
		{Name="IgnoreWater", Type="Property"},
	},

	["table"] = {
		{Name="insert", Type="Method"},
		{Name="remove", Type="Method"},
		{Name="find", Type="Method"},
		{Name="sort", Type="Method"},
		{Name="concat", Type="Method"},
		{Name="clear", Type="Method"},
	},

	["string"] = {
		{Name="split", Type="Method"},
		{Name="gsub", Type="Method"},
		{Name="find", Type="Method"},
		{Name="sub", Type="Method"},
		{Name="lower", Type="Method"},
		{Name="upper", Type="Method"},
		{Name="format", Type="Method"},
	},

	["math"] = {
		{Name="random", Type="Method"},
		{Name="floor", Type="Method"},
		{Name="ceil", Type="Method"},
		{Name="clamp", Type="Method"},
		{Name="abs", Type="Method"},
		{Name="sin", Type="Method"},
		{Name="cos", Type="Method"},
		{Name="rad", Type="Method"},
		{Name="deg", Type="Method"},
		{Name="pi", Type="Property"},
	},

	["task"] = {
		{Name="wait", Type="Method"},
		{Name="spawn", Type="Method"},
		{Name="delay", Type="Method"},
		{Name="defer", Type="Method"},
	},

	["coroutine"] = {
		{Name="create", Type="Method"},
		{Name="resume", Type="Method"},
		{Name="wrap", Type="Method"},
		{Name="yield", Type="Method"},
	},
	
	["Script"] = {
		{Name="Enabled", Type="Property"},
		{Name="Source", Type="Property"},
	},
	
	["LocalScript"] = {
		{Name="Enabled", Type="Property"},
		{Name="Source", Type="Property"},
	},
}

return classAPI
