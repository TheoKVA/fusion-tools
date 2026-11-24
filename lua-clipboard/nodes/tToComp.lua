{
	Tools = ordered() {
		tToComp = GroupOperator {
			CtrlWZoom = false,
			NameSet = true,
			Inputs = ordered() {
				Input1 = InstanceInput {
					SourceOp = "tToCompMerge",
					Source = "Foreground",
				},
				CanvasSizeInputs = Input { Expression = "iif(CanvasSizeReference == 1,1,0)", },
				CompWidth = Input { Expression = 'comp:GetPrefs(\"Comp.FrameFormat.Width\")' },
				CompHeight = Input { Expression = 'comp:GetPrefs(\"Comp.FrameFormat.Height\")' },
			},
			Outputs = {
				Output1 = InstanceOutput {
					SourceOp = "tToCompMerge",
					Source = "Output",
				}
			},
			ViewInfo = GroupInfo {
				Pos = { -0.634153, -353.357 },
				Flags = {
					AllowPan = false,
					ConnectedSnap = true,
					AutoSnap = true,
					RemoveRouters = true
				},
				Size = { 126, 112.956, 63, 24.2424 },
				Direction = "Horizontal",
				PipeStyle = "Direct",
				Scale = 1,
				Offset = { -29.5357, 355.136 }
			},
			Tools = ordered() {
				tToCompMerge = Merge {
					Inputs = {
						Background = Input {
							SourceOp = "tToCompBackground",
							Source = "Output",
						},
						PerformDepthMerge = Input { Value = 0, },
						Center = Input { Expression = "iif(tToComp.PositionReference == 1, Point( tToComp.PositionX/iif(tToComp.CanvasSizeReference == 1, tToComp.CanvasWidth, tToComp.CompWidth), 1 - tToComp.PositionY/iif(tToComp.CanvasSizeReference == 1, tToComp.CanvasHeight, tToComp.CompHeight)), Point(tToComp.PositionX, tToComp.PositionY))", },
					},
					ViewInfo = OperatorInfo { Pos = { 29.5357, -346.5 } },
				},
				tToCompBackground = Background {
					Inputs = {
						GlobalOut = Input { Value = 249, },
						Width = Input { Value = 1920, },
						Height = Input { Value = 1080, },
						UseFrameFormatSettings = Input { Value = 1, },
						["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
						TopLeftAlpha = Input { Value = 0, },

						
						Width = Input { Expression = "iif(tToComp.CanvasSizeReference == 1, tToComp.CanvasWidth, tToComp.CompWidth)", },
						Height = Input { Expression = "iif(tToComp.CanvasSizeReference == 1, tToComp.CanvasHeight, tToComp.CompHeight)", },
						UseFrameFormatSettings = Input { Expression = "iif(tToComp.CanvasSizeReference == 1,0,1)", },
					},
					ViewInfo = OperatorInfo { Pos = { 29.5357, -299.908 } },
				}
			},
			Colors = { TileColor = { R = 0.690196078431373, G = 0.690196078431373, B = 0.690196078431373 }, },
			UserControls = ordered() {
				Context = {
					LINKS_Name = "Context",
					LINKID_DataType = "Text",
					INPID_InputControl = "TextEditControl",
					TEC_Lines = 3,
					TEC_Wrap = true,
					TEC_ReadOnly = false,
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Controls",
				},
                ContextInfo = {
					LINKS_Name = "",
					LINKID_DataType = "Number",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = false,
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Controls",
				},
				-- =======
				--  SIZE
				CanvasSizeReference = {
					LINKS_Name = "Output Size",
					LINKID_DataType = "Number",
					INPID_InputControl = "MultiButtonControl",
					INP_Default = 0,
					INP_Integer = true,
					INP_SplineType = "Default",
					{ MBTNC_AddButton = "Default" },
					{ MBTNC_AddButton = "Custom" },
					MBTNC_ShowBasicButton = true,
					MBTNC_ShowToolTip = false,
					MBTNC_ShowName = false,
					MBTNC_StretchToFit = false,
					INP_External = false,
					ICS_ControlPage = "Controls",
				},
				CanvasSizeInputs = {
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
				 	LINKS_Name = "Width",
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
					LINKS_Name = "Height",
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

				-- =======
				--  INPUT
				empty_0 = {
					LINKS_Name = "",
					LINKID_DataType = "Number",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = false,
					INP_Passive = true,
					INP_External = false,
					ICS_ControlPage = "Controls",
				},
				Info_Param_2 = {
					LINKS_Name = "Position",
					LINKID_DataType = "Number",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = false,
					INP_Passive = true,
					INP_External = false,
					ICS_ControlPage = "Controls",
				},
				PositionReference = {
					LINKS_Name = "Coordinates",
					LINKID_DataType = "Number",
					INPID_InputControl = "MultiButtonControl",
					INP_Default = 0,
					INP_Integer = true,
					INP_SplineType = "Default",
					{ MBTNC_AddButton = "FUSION (abs)" },
					{ MBTNC_AddButton = "AE (px)" },
					MBTNC_ShowBasicButton = true,
					MBTNC_ShowToolTip = false,
					MBTNC_ShowName = false,
					MBTNC_StretchToFit = false,
					INP_External = false,
					ICS_ControlPage = "Controls",
				},
				PositionX = {
				 	LINKS_Name = "Position X",
				 	LINKID_DataType = "Number",
				 	INPID_InputControl = "SliderControl",
					INP_Default = 0.5,
				 	INP_MinScale = -2000,
				 	INP_MaxScale = 2000,
				 	ICS_ControlPage = "Controls",
				},
				PositionY = {
					LINKS_Name = "Position Y",
				 	LINKID_DataType = "Number",
				 	INPID_InputControl = "SliderControl",
					INP_Default = 0.5,
				 	INP_MinScale = -2000,
				 	INP_MaxScale = 2000,
				 	ICS_ControlPage = "Controls",
				},
				
				-- =====================
				-- =====================
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
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Controls",
				},
				Copyright = {
					LINKS_Name = "@RTS - Radio Television Suisse",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Controls",
				},
			},
		}
	},
	ActiveTool = "tToComp"
}