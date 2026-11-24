{
	Tools = ordered() {
		tTimeSpeed = TimeSpeed {
			CtrlWZoom = false,
			NameSet = true,
			Inputs = {
				SampleSpread = Input { Disabled = true, },
				FreezeFrame = Input { Expression = "0.0", },
				InterpolateBetweenFrames = Input { Value = 0, },
				Speed = Input { Expression = "iif(ButtonInput == 0, 0.5, 2)", }
			},
			ViewInfo = OperatorInfo { Pos = { 720.717, 256.646 } },
			UserControls = ordered() {
				-- ===========
				-- == EMPTY ==
				-- ===========
				OldControlNest = { LINKS_Name = "Old Control", INPID_InputControl = "LabelControl", LBLC_DropDownButton = true, LBLC_NumInputs = 4, LBLC_NestLevel = 1, LBLCID_HideUpToID = "Direction", ICS_ControlPage = "Controls", INP_External = false, INP_Passive = true, },
				FreezeFrame = { ICS_ControlPage = "Controls" },
				InterpolateBetweenFrames = { ICS_ControlPage = "Controls" },
				Delay = { ICS_ControlPage = "Controls" },
				Speed = { ICS_ControlPage = "Controls" },
				-- =====================
				tempty = {
					LINKS_Name = "",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Controls",
				},
				-- MULTIBUTTON
				ButtonInput = {
					LINKS_Name = "Framerate",
					LINKID_DataType = "Number",
					INPID_InputControl = "MultiButtonControl",
					INP_Default = 1,
					INP_Integer = true,
					INP_MinScale = 0,
					INP_MaxScale = 100,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					{ MBTNC_AddButton = "25 to 50 fps" },
					{ MBTNC_AddButton = "50 to 25 fps" },
					MBTNC_ShowBasicButton = true,
					MBTNC_ShowToolTip = false,
					MBTNC_ShowName = false,
					MBTNC_StretchToFit = false,
					INP_External = false,
					ICS_ControlPage = "Controls"
				},
			}
		}
	},
	ActiveTool = "tTimeSpeed"
}