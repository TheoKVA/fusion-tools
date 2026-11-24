{
	Tools = ordered() {
		tShadow = Shadow {
			CtrlWZoom = false,
			Inputs = {
				ShadowOffset = Input { 
                    Value = { 0.5, 0.5 },
					Expression = "Point(0.5, 0.5) + Point(OffsetX/CompWidth, -OffsetY/CompHeight)",
                },
				Softness = Input { 
                    Value = 0.01,
					Expression = "BlurPx / CompWidth",
                },
				CanvasSizeInputs = Input { Expression = "iif(CanvasSizeReference == 1,1,0)", }, -- Show hide
                CompWidth = Input { Expression = "iif(CanvasSizeReference == 1, CanvasWidth, comp:GetPrefs(\"Comp.FrameFormat.Width\"))", },
                CompHeight = Input { Expression = "iif(CanvasSizeReference == 1, CanvasHeight, comp:GetPrefs(\"Comp.FrameFormat.Height\"))", },

			},
			ViewInfo = OperatorInfo { Pos = { 280.296, -129.183 } },
			UserControls = ordered() {
                
                InfoEmpty = {
					LINKS_Name = "",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Controls",
				},

                -- Canvas Size
                -- =====================
                CanvasSizeReference = { -- User input
					LINKS_Name = "Canvas Size",
					LINKID_DataType = "Number",
					INPID_InputControl = "MultiButtonControl",
					INP_Default = 0,
					INP_Integer = true,
					INP_SplineType = "Default",
					{ MBTNC_AddButton = "Auto" },
					{ MBTNC_AddButton = "Custom" },
					MBTNC_ShowBasicButton = true,
					MBTNC_ShowToolTip = false,
					MBTNC_ShowName = false,
					MBTNC_StretchToFit = false,
					INP_External = false,
					ICS_ControlPage = "Controls",
				},
				CanvasSizeInputs = { -- Group
					LINKS_Name = "CanvasSizeInputs",
					LINKID_DataType = "Number",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = true,
					LBLC_NumInputs = 2, -- NUMBER OF ELEMENT IN GROUP
					LBLC_NestLevel = 1,
					INP_Passive = false,
					IC_Visible = false,
					ICS_ControlPage = "Controls",
				},
				CanvasWidth = {
				 	LINKS_Name = "Canvas Width (px)",
				 	LINKID_DataType = "Number",
				 	INPID_InputControl = "SliderControl",
					INP_Default = 1920,
					INP_Integer = true,
					INP_MinScale = 1,
					INP_MaxScale = 4096,
					INP_MinAllowed = 1,
					INP_MaxAllowed = 32767,
					INP_External = false,
				 	ICS_ControlPage = "Controls",
				},
				CanvasHeight = {
					LINKS_Name = "Canvas Height (px)",
				 	LINKID_DataType = "Number",
				 	INPID_InputControl = "SliderControl",
					INP_Default = 1080,
					INP_Integer = true,
					INP_MinScale = 1,
					INP_MaxScale = 4096,
					INP_MinAllowed = 1,
					INP_MaxAllowed = 32767,
					INP_External = false,
				 	ICS_ControlPage = "Controls",
				},
				CompWidth = {
				 	LINKS_Name = "width (CompWidth)",
				 	LINKID_DataType = "Number",
				 	INPID_InputControl = "SliderControl",
					INP_Default = 1920,
				 	INP_MinScale = 0,
				 	INP_MaxScale = 2000,
					INP_External = false,
					IC_Visible = false,
				 	ICS_ControlPage = "Controls",
				},
				CompHeight = {
				 	LINKS_Name = "height (CompHeight)",
				 	LINKID_DataType = "Number",
				 	INPID_InputControl = "SliderControl",
					INP_Default = 1080,
				 	INP_MinScale = 0,
				 	INP_MaxScale = 2000,
					INP_External = false,
					IC_Visible = false,
				 	ICS_ControlPage = "Controls",
				},

                -- Input
                -- =====================
				OffsetX = {
					LINKS_Name = "Offset X (px)",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 0,
					INP_Integer = false,
					INP_MinScale = 0,
					INP_MaxScale = 1080,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Controls",
				},
                OffsetY = {
					LINKS_Name = "Offset Y (px)",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 0,
					INP_Integer = false,
					INP_MinScale = 0,
					INP_MaxScale = 1080,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Controls",
				},
                BlurPx = {
					LINKS_Name = "Blur (px)",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 0,
					INP_Integer = false,
					INP_MinScale = 0,
					INP_MaxScale = 100,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Controls",
				},

                -- ===========
				--  COPYRIGHT
				CopyrightEmpty = {
					LINKS_Name = "",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Controls",
				},
				Author = {
					LINKS_Name = "Author: Theo Francart",
					LINKID_DataType = "Number",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = false,
					INP_Passive = true,
					INP_External = false,
					ICS_ControlPage = "Controls",
				},
				Copyright = {
					LINKS_Name = "@RTS - Radio Television Suisse",
					LINKID_DataType = "Number",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = false,
					INP_Passive = true,
					INP_External = false,
					ICS_ControlPage = "Controls",
				},

                -- ===========
				-- == HIDDEN ==
				-- ===========
				ShadowOffset = {
					LINKS_Name = "Shadow Offset (auto)",
					LINKID_DataType = "Point",
					INPID_InputControl = "OffsetControl",
					INPID_PreviewControl = "CrosshairControl",
					CHC_Style = "NormalCross",
					ICS_ControlPage = "Data",
				},
				Softness = {
					LINKS_Name = "Softness (auto)",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 0,
					INP_Integer = false,
					INP_MinScale = 0,
					INP_MaxScale = 0.1,
					INP_MinAllowed = 0,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Data",
				},
                LightPosition = { ICS_ControlPage = "Data", },
				LightDistance = { ICS_ControlPage = "Data" },
				MinimumDepthMapLightDistance = { ICS_ControlPage = "Data" },
				ZMapChannel = { ICS_ControlPage = "Data" },
				-- OutputMode = { ICS_ControlPage = "Data" },
			}
		}
	},
}