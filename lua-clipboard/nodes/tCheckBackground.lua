{
	Tools = ordered() {
		tCheckBG_Merge = Merge {
			CtrlWZoom = false,
			NameSet = true,
			Inputs = {
				Background = Input {
					SourceOp = "tCheckBG",
					Source = "Output",
				},
				PerformDepthMerge = Input { Value = 0, }
			},
			ViewInfo = OperatorInfo { Pos = { 1310.11, 313.843 } },
			UserControls = ordered() {
				Info_Param_1 = {
					ICS_ControlPage = "Merge",
					LBLC_DropDownButton = false,
					LINKID_DataType = "Number",
					INP_External = false,
					INP_Passive = true,
					INPID_InputControl = "LabelControl",
					LINKS_Name = "Simple Merge, Green on Yellow",
				},
				Info_Param_2 = {
					ICS_ControlPage = "Merge",
					LBLC_DropDownButton = false,
					LINKID_DataType = "Number",
					INP_External = false,
					INP_Passive = true,
					INPID_InputControl = "LabelControl",
					LINKS_Name = " ",
				},
				OldControlNest = { LBLC_DropDownButton = true, INPID_InputControl = "LabelControl", LBLC_NumInputs = 22, INP_External = false, INP_Passive = true, ICS_ControlPage = "Merge", LBLC_NestLevel = 1, LBLCID_HideUpToID = "Direction", LINKS_Name = "Old Control", },
				Center = { ICS_ControlPage = "Merge", },
				Size = { ICS_ControlPage = "Merge", },
				Angle = { ICS_ControlPage = "Merge", },
				FlipHoriz = { ICS_ControlPage = "Merge", },
				FlipVert = { ICS_ControlPage = "Merge", },
				ApplyMode = { ICS_ControlPage = "Merge", },
				Operator = { ICS_ControlPage = "Merge", },
				SubtractiveAdditive = { ICS_ControlPage = "Merge", },
				Gain = { ICS_ControlPage = "Merge", },
				BurnIn = { ICS_ControlPage = "Merge", },
				BlendClone = { ICS_ControlPage = "Merge", },
				ClampCoverage = { ICS_ControlPage = "Merge", },
				Edges = { ICS_ControlPage = "Merge", },
				FilterMethod = { ICS_ControlPage = "Merge", },
				InvertTransform = { ICS_ControlPage = "Merge", },
				FlattenTransform = { ICS_ControlPage = "Merge", },
				Width = { ICS_ControlPage = "Merge", },
				Height = { ICS_ControlPage = "Merge", },
				UseFrameFormatSettings = { ICS_ControlPage = "Merge", },
				CommentsNest = { ICS_ControlPage = "Merge", },
				ReferenceSize = { ICS_ControlPage = "Merge", },
				Merge = { ICS_ControlPage = "Merge", }
			}
		},
		tCheckBG = Background {
			NameSet = true,
			Inputs = {
				GlobalOut = Input { Value = 399, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
				TopLeftAlpha = Input { Value = 0, },
				Width = Input { Value = 1920, },
				Height = Input { Value = 1080, }
			},
			ViewInfo = OperatorInfo { Pos = { 1310.11, 351.372 } },
			UserControls = ordered() {
				title = {
					ICS_ControlPage = "Color",
					LBLC_DropDownButton = false,
					LINKID_DataType = "Number",
					INP_External = false,
					INP_Passive = true,
					INPID_InputControl = "LabelControl",
					LINKS_Name = "Output Size",
				},
				UseFrameFormatSettings = {
					ICS_ControlPage = "Color",
				},
				Width = {
					ICS_ControlPage = "Color",
				},
				Height = {
					ICS_ControlPage = "Color",
				},
				InfoTitle = {
					ICS_ControlPage = "Image",
					LBLC_DropDownButton = false,
					LINKID_DataType = "Number",
					INP_External = false,
					INP_Passive = true,
					INPID_InputControl = "LabelControl",
					LINKS_Name = "/!\\ IMAGE SIZEE is set in COLOR TAB /!\\",
				},
				CopyrightEmpty = {
					ICS_ControlPage = "Color",
					LBLC_DropDownButton = false,
					LINKID_DataType = "Number",
					INP_External = false,
					INP_Passive = true,
					INPID_InputControl = "LabelControl",
					LINKS_Name = "",
				},
				Author = {
					ICS_ControlPage = "Color",
					LBLC_DropDownButton = false,
					LINKID_DataType = "Number",
					INP_External = false,
					INP_Passive = true,
					INPID_InputControl = "LabelControl",
					LINKS_Name = "Author: Theo Francart",
				},
				Copyright = {
					ICS_ControlPage = "Color",
					LBLC_DropDownButton = false,
					LINKID_DataType = "Number",
					INP_External = false,
					INP_Passive = true,
					INPID_InputControl = "LabelControl",
					LINKS_Name = "@RTS - Radio Television Suisse",
				}
			}
		}
	}
}