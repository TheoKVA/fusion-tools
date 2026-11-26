{
	Tools = ordered() {
		tBackground = Background {
			CtrlWZoom = false,
			NameSet = true,
			Inputs = {
				GlobalOut = Input { Value = 249, },
				Width = Input { Value = 1920, },
				Height = Input { Value = 1080, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
				TopLeftRed = Input { Value = 0, },
				TopLeftGreen = Input { Value = 0, },
				TopLeftBlue = Input { Value = 0, },
			},
			ViewInfo = OperatorInfo { Pos = { -122.165, -309.642 } },
			UserControls = ordered() {
				title = {
					LINKS_Name = "Output Size",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Color",
				},
				UseFrameFormatSettings  = {
					ICS_ControlPage = "Color",
				},
				Width  = {
					ICS_ControlPage = "Color",
				},
				Height  = {
					ICS_ControlPage = "Color",
				},
				InfoTitle = {
					LINKS_Name = "/!\\ IMAGE SIZE is set in COLOR TAB /!\\",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Image",
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
					ICS_ControlPage = "Color",
				},
				Author = {
					LINKS_Name = "Author: Theo Francart",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Color",
				},
				Copyright = {
					LINKS_Name = "@RTS - Radio Television Suisse",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Color",
				},
			}
		}
	},
	ActiveTool = "tBackground"
}