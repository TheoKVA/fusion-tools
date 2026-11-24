{
	Tools = ordered() {
		tCheckBackground = Background {
			NameSet = true,
			Inputs = {
				GlobalOut = Input { Value = 249, },
				Width = Input {
					Value = 1920,
					Expression = "iif(CanvasSizeReference == 1, CanvasWidth, CompWidth)",
				},
				Height = Input {
					Value = 1080,
					Expression = "iif(CanvasSizeReference == 1, CanvasHeight, CompHeight)",
				},
				UseFrameFormatSettings = Input { Expression = "iif(CanvasSizeReference == 1,0,1)", },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
				TopLeftAlpha = Input { Value = 0, },
				CanvasSizeReference = Input { Value = 1, },
				CanvasSizeInputs = Input {
					Value = 1,
					Expression = "iif(CanvasSizeReference == 1,1,0)",
				},
				CompWidth = Input { Expression = "comp:GetPrefs(\"Comp.FrameFormat.Width\")", },
				CompHeight = Input { Expression = "comp:GetPrefs(\"Comp.FrameFormat.Height\")", }
			},
			ViewInfo = OperatorInfo { Pos = { 695.06, 608.093 } },
			UserControls = ordered() { CanvasSizeReference = { { MBTNC_AddButton = "Default" }, { MBTNC_AddButton = "Custom" }, INP_Integer = true, INPID_InputControl = "MultiButtonControl", MBTNC_ShowBasicButton = true, INP_SplineType = "Default", INP_Default = 0, ICS_ControlPage = "Color", INP_External = false, LINKID_DataType = "Number", MBTNC_ShowName = false, MBTNC_StretchToFit = false, MBTNC_ShowToolTip = false, LINKS_Name = "Output Size", }, CanvasSizeInputs = { LBLC_DropDownButton = true, INPID_InputControl = "LabelControl", LBLC_NumInputs = 2, IC_Visible = false, LINKID_DataType = "Number", ICS_ControlPage = "Color", LBLC_NestLevel = 1, INP_Passive = false, LINKS_Name = "CanvasSizeInputs", }, CanvasWidth = { INP_MaxAllowed = 32767, INP_Integer = true, INPID_InputControl = "SliderControl", INP_MaxScale = 4096, INP_Default = 1920, INP_MinScale = 1, INP_MinAllowed = 1, LINKID_DataType = "Number", ICS_ControlPage = "Color", INP_External = false, LINKS_Name = "Width" }, CanvasHeight = { INP_MaxAllowed = 32767, INP_Integer = true, INPID_InputControl = "SliderControl", INP_MaxScale = 4096, INP_Default = 1080, INP_MinScale = 1, INP_MinAllowed = 1, LINKID_DataType = "Number", ICS_ControlPage = "Color", INP_External = false, LINKS_Name = "Height" }, CompWidth = { INPID_InputControl = "SliderControl", INP_MaxScale = 2000, INP_Default = 1920, INP_MinScale = 0, INP_External = false, LINKID_DataType = "Number", IC_Visible = false, ICS_ControlPage = "Color", LINKS_Name = "width (CompWidth)", }, CompHeight = { INPID_InputControl = "SliderControl", INP_MaxScale = 2000, INP_Default = 1080, INP_MinScale = 0, INP_External = false, LINKID_DataType = "Number", IC_Visible = false, ICS_ControlPage = "Color", LINKS_Name = "height (CompHeight)", }, CopyrightEmpty = { ICS_ControlPage = "Color", LBLC_DropDownButton = false, LINKID_DataType = "Number", INP_External = false, INP_Passive = true, INPID_InputControl = "LabelControl", LINKS_Name = "", }, Author = { ICS_ControlPage = "Color", LBLC_DropDownButton = false, LINKID_DataType = "Number", INP_External = false, INP_Passive = true, INPID_InputControl = "LabelControl", LINKS_Name = "Author: Theo Francart", }, Copyright = { ICS_ControlPage = "Color", LBLC_DropDownButton = false, LINKID_DataType = "Number", INP_External = false, INP_Passive = true, INPID_InputControl = "LabelControl", LINKS_Name = "@RTS - Radio Television Suisse", } }
		},
		tCheckBackground_Merge = Merge {
			CtrlWZoom = false,
			Inputs = {
				Background = Input {
					SourceOp = "tCheckBackground",
					Source = "Output",
				},
				PerformDepthMerge = Input { Value = 0, }
			},
			ViewInfo = OperatorInfo { Pos = { 695.06, 560.096 } },
		}
	}
}