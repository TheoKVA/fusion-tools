{
	Tools = ordered() {
		tSize = Transform {
			NameSet = true,
			Inputs = {
				Size = Input { Value = 0.67, },
				ReferenceSize = Input { Value = 1, },
				UseSizeAndAspect = Input { Value = 0, },
				XSize = Input { Expression = "XScale/100", },
				YSize = Input { Expression = "YScale/100", }
			},
			ViewInfo = OperatorInfo { Pos = { 538.504, 359.556 } },
			UserControls = ordered() {
				Info2 = {
					LINKID_DataType = "Number",
					LINKS_Name = "Always from the center.",
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
					LINKS_Name = "Old Control",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = true,
					LBLC_NumInputs = 17,
					LBLC_NestLevel = 1,
					LBLCID_HideUpToID = "Direction",
					ICS_ControlPage = "Controls",
					INP_External = false,
					INP_Passive = true,
				},
				Center = { ICS_ControlPage = "Controls",},
				Pivot = { ICS_ControlPage = "Controls",},
				Angle = { ICS_ControlPage = "Controls",},
				FlipHoriz = { ICS_ControlPage = "Controls",},
				FlipVert = { ICS_ControlPage = "Controls",},
				Edges = { ICS_ControlPage = "Controls",},
				FilterMethod = { ICS_ControlPage = "Controls",},
				InvertTransform = { ICS_ControlPage = "Controls",},
				FlattenTransform = { ICS_ControlPage = "Controls",},
				Width = { ICS_ControlPage = "Controls",},
				Height = { ICS_ControlPage = "Controls",},
				UseFrameFormatSettings = { ICS_ControlPage = "Controls",},
				ReferenceSize = { ICS_ControlPage = "Controls",},
				TransformNest = { ICS_ControlPage = "Controls",},
				UseSizeAndAspect = { ICS_ControlPage = "Controls",},
				XSize = { ICS_ControlPage = "Controls",},
				YSize = { ICS_ControlPage = "Controls",}
			}
		}
	}
}