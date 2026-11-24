{
	Tools = ordered() {
		tScale = Scale {
			CtrlWZoom = false,
			NameSet = true,
			Inputs = {
				PixelAspect = Input { Value = { 1, 1 }, },
				FilterMethod = Input { Value = 1, },
				HiQOnly = Input { Value = 0, },
				Edges = Input { Value = 0, },
				LockXY = Input { Value = 0, },
				YScale = Input { Value = 100, },
				XScale = Input { Value = 100, },
				YSize = Input { Expression = "YScale/100", },
				XSize = Input { Expression = "XScale/100", }
			},
			ViewInfo = OperatorInfo { Pos = { 535.133, -342.685 } },
			UserControls = ordered() {
                Info1 = {
					LINKID_DataType = "Number",
					LINKS_Name = "Change the output size (%)",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Controls",
				},
                Info2 = {
					LINKID_DataType = "Number",
					LINKS_Name = "Always from the center.",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Controls",
				},
                Info3 = {
					LINKID_DataType = "Number",
					LINKS_Name = "Beware of the 1/2 pixels.",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Controls",
				},
				YScale = {
					LINKS_Name = "Y Scale (%)",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 100,
					INP_Integer = false,
					INP_MinScale = 0,
					INP_MaxScale = 100,
					INP_MinAllowed = 0,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Controls",
				},
				XScale = {
					LINKS_Name = "X Scale (%)",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 100,
					INP_Integer = false,
					INP_MinScale = 0,
					INP_MaxScale = 100,
					INP_MinAllowed = 0,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICD_Center = 0,
					ICS_ControlPage = "Controls",
				},
				-- ===================
				-- == OLD DATA NEST ==
				-- ===================
				OldControlNest = {
					LINKS_Name = "Scale Control",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = true,
					LBLC_NumInputs = 7,
					LBLC_NestLevel = 1,
					LBLCID_HideUpToID = "Direction",
					ICS_ControlPage = "Common",
					INP_External = false,
					INP_Passive = true,
				},
				FilterMethod = { ICS_ControlPage = "Common", },
				ChangePixelAspect = { ICS_ControlPage = "Common", },
				HiQOnly = { ICS_ControlPage = "Common", },
				Edges = { ICS_ControlPage = "Common", },
				LockXY = { ICS_ControlPage = "Common", },
				YSize = { ICS_ControlPage = "Common", },
				XSize = { ICS_ControlPage = "Common", },
                
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
			}
		}
	},
	ActiveTool = "tScale"
}