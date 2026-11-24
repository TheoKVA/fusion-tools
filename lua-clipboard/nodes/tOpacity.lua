{
	Tools = ordered() {
		tOpacity = BrightnessContrast {
			CtrlWZoom = false,
			NameSet = true,
			Inputs = {
				Gain = Input { Expression = "Opacity / 100", },
				Alpha = Input { Value = 1 }
			},
			ViewInfo = OperatorInfo { Pos = { -577.343, 166.601 } },
			Colors = { TileColor = { R = 0.776470588235294, G = 0.627450980392157, B = 0.466666666666667 }, },
			UserControls = ordered() {
				Info = {
					LINKID_DataType = "Number",
					LINKS_Name = "Change the output opactity",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Controls",
				},
				Opacity = { 
					INPID_InputControl = "SliderControl",
					ICS_Name = "Opacity (%)",
					INP_MinScale = 0,
					INP_MaxScale = 100,
					INP_Default = 100,
					LINKID = "Opacity",
					ICS_ControlPage = "Controls",
				},
				-- ===================
				-- == OLD DATA NEST ==
				-- ===================
				OldControlNest = {
					LINKS_Name = "BrightnessContrast Control",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = true,
					LBLC_NumInputs = 15,
					LBLC_NestLevel = 1,
					LBLCID_HideUpToID = "Direction",
					ICS_ControlPage = "Common",
					INP_External = false,
					INP_Passive = true,
				},
				Gain = { ICS_ControlPage = "Common" },
				Lift = { ICS_ControlPage = "Common" },
				Gamma = { ICS_ControlPage = "Common" },
				Contrast = { ICS_ControlPage = "Common" },
				Brightness = { ICS_ControlPage = "Common" },
				Saturation = { ICS_ControlPage = "Common" },
				High = { ICS_ControlPage = "Common" },
				Low = { ICS_ControlPage = "Common" },
				Direction = { ICS_ControlPage = "Common" },
				ClipBlack = { ICS_ControlPage = "Common" },
				ClipWhite = { ICS_ControlPage = "Common" },
				PreDividePostMultiply = { ICS_ControlPage = "Common" },
				Red = { ICS_ControlPage = "Common" },
				Green = { ICS_ControlPage = "Common" },
				Blue = { ICS_ControlPage = "Common" },
				Alpha = { ICS_ControlPage = "Common" },
				
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
	ActiveTool = "tOpacity"
}