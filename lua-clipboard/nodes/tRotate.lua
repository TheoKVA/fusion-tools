{
	Tools = ordered() {
		tRotate = Transform {
			CtrlWZoom = false,
			Inputs = {
				InputRotation = Input { Value = 45, },
				Pivot = Input { 
					Expression = "Point( iif(InputReference==1, (InputX/self.Input.Width), InputX ), iif(InputReference==1, (1-InputY/self.Input.Height), InputY ) )",
				},
				Angle = Input {
					Expression = "-InputRotation"
				}
			},
			ViewInfo = OperatorInfo { Pos = { 228.853, 183.918 } },
			UserControls = ordered() {
				-- =======
				--  INPUT
				InputReference = {
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
				InputX = {
				 	LINKS_Name = "Anchor Point X",
				 	LINKID_DataType = "Number",
				 	INPID_InputControl = "SliderControl",
					INP_Default = 0.5,
				 	INP_MinScale = -2000,
				 	INP_MaxScale = 2000,
				 	ICS_ControlPage = "Controls",
				},
				InputY = {
					LINKS_Name = "Anchor Point Y",
				 	LINKID_DataType = "Number",
				 	INPID_InputControl = "SliderControl",
					INP_Default = 0.5,
				 	INP_MinScale = -2000,
				 	INP_MaxScale = 2000,
				 	ICS_ControlPage = "Controls",
				},
				Info_Param_1 = {
					LINKS_Name = " ",
					LINKID_DataType = "Number",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = false,
					INP_Passive = true,
					INP_External = false,
					ICS_ControlPage = "Controls",
				},
				InputRotation = {
					LINKS_Name = "Rotation",
				 	LINKID_DataType = "Number",
				 	INPID_InputControl = "ScrewControl",
					INP_Default = 0,
				 	INP_MinScale = 0,
				 	INP_MaxScale = 180,
				 	ICS_ControlPage = "Controls",
				},
				
				
                -- ===========
				-- == EMPTY ==
				-- ===========
				OldControlNest = { LINKS_Name = "Old Control", INPID_InputControl = "LabelControl", LBLC_DropDownButton = true, LBLC_NumInputs = 17, LBLC_NestLevel = 1, LBLCID_HideUpToID = "Direction", ICS_ControlPage = "Common", INP_External = false, INP_Passive = true, },
                TransformNest = { ICS_ControlPage = "Common" },
				Center = { ICS_ControlPage = "Common" },
				Pivot = { ICS_ControlPage = "Common" },
				UseSizeAndAspect = { ICS_ControlPage = "Common" },
				Size = { ICS_ControlPage = "Common" },
				Aspect = { ICS_ControlPage = "Common" },
				Angle = { ICS_ControlPage = "Common" },
				FlipHoriz = { ICS_ControlPage = "Common" },
				FlipVert = { ICS_ControlPage = "Common" },
				Edges = { ICS_ControlPage = "Common" },
				FilterMethod = { ICS_ControlPage = "Common" },
				InvertTransform = { ICS_ControlPage = "Common" },
				FlattenTransform = { ICS_ControlPage = "Common" },
                ReferenceSize = { ICS_ControlPage = "Common" },
				Width = { ICS_ControlPage = "Common" },
				Height = { ICS_ControlPage = "Common" },
                UseFrameFormatSettings = { ICS_ControlPage = "Common" },
			}
		}
	},
	ActiveTool = "tEmpty"
}