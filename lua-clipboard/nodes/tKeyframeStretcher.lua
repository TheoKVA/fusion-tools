{
	Tools = ordered() {
		tKeyframeStretcher = KeyStretcher {
			CtrlWZoom = false,
			Inputs = {
				SourceStart = Input { Expression = "iif( AnimIN == 0, iif( CTRL_OUT.AnimIN == 0, 0, StretchStart), 0)", },
				SourceEnd = Input { Expression = "iif( AnimIN == 0, iif( CTRL_OUT.AnimOUT == 0, LastFrame, StretchEnd), LastFrame)", },
				StretchStart = Input {},
				StretchEnd = Input {},
			},
			ViewInfo = OperatorInfo { Pos = { 745.849, -53.4002 } },
			UserControls = ordered() {
				-- ===========
				-- == EMPTY ==
				-- ===========
				OldControlNest = { LINKS_Name = "Old Control", INPID_InputControl = "LabelControl", LBLC_DropDownButton = true, LBLC_NumInputs = 4, LBLC_NestLevel = 1, LBLCID_HideUpToID = "Direction", ICS_ControlPage = "Keyframes", INP_External = false, INP_Passive = true, },
				Invert = { ICS_ControlPage = "Keyframes" },
				StretchEdges = { ICS_ControlPage = "Keyframes" },
				SourceEnd = { ICS_ControlPage = "Keyframes" },
				SourceStart = { ICS_ControlPage = "Keyframes" },

				-- ============
				--  PARAMETERS
				Info_Param_1 = {
					LINKS_Name = " ",
					LINKID_DataType = "Number",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = false,
					INP_Passive = true,
					INP_External = false,
					ICS_ControlPage = "Keyframes",
				},
				LastFrame = {
				 	LINKS_Name = "Last Frame",
				 	LINKID_DataType = "Number",
				 	INPID_InputControl = "SliderControl",
					INP_Integer = true,
					INP_Default = 200,
				 	INP_MinScale = 0,
				 	INP_MaxScale = 200,
				 	ICS_ControlPage = "Keyframes",
				},
				StretchStart = { 
					INP_Integer = true,
					ICS_ControlPage = "Keyframes",
				},
				StretchEnd = { 
					INP_Integer = true,
					ICS_ControlPage = "Keyframes",
				},
				Info_Param_2 = {
					LINKS_Name = " ",
					LINKID_DataType = "Number",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = false,
					INP_Passive = true,
					INP_External = false,
					ICS_ControlPage = "Keyframes",
				},
				AnimIN = {
					LINKS_Name = "With AnimIN ?",
					LINKID_DataType = "Number",
					INPID_InputControl = "MultiButtonControl",
					INP_Default = 0,
					INP_Integer = true,
					INP_SplineType = "Default",
					{ MBTNC_AddButton = "AVEC" },
					{ MBTNC_AddButton = "SANS" },
					MBTNC_ShowBasicButton = true,
					MBTNC_ShowToolTip = false,
					MBTNC_ShowName = false,
					MBTNC_StretchToFit = false,
					INP_External = false,
					ICS_ControlPage = "Keyframes",
				},
				AnimOUT = {
					LINKS_Name = "With AnimOUT ?",
					LINKID_DataType = "Number",
					INPID_InputControl = "MultiButtonControl",
					INP_Default = 0,
					INP_Integer = true,
					INP_SplineType = "Default",
					{ MBTNC_AddButton = "AVEC" },
					{ MBTNC_AddButton = "SANS" },
					MBTNC_ShowBasicButton = true,
					MBTNC_ShowToolTip = false,
					MBTNC_ShowName = false,
					MBTNC_StretchToFit = false,
					INP_External = false,
					ICS_ControlPage = "Keyframes",
				},
				
			}
		}
	},
	ActiveTool = "tKeyframeStretcher",
}