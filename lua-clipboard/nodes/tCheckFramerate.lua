{
	Tools = ordered() {
		tCheckFramerate = Switch {
			CtrlWZoom = false,
			NameSet = true,
			Inputs = {
				NumberOfInputs = Input { Value = 3, },
				Source = Input { Expression = ": --[[ Automatic ]] ; return iif(fps==25,1, iif(fps==50,2, 0))", },
				fps = Input {
					Value = 25,
					Expression = ": --[[ Automatic ]] ; return comp:GetPrefs(\"Comp.FrameFormat.Rate\")",
				},
				Name0 = Input { Value = "Unknown", },
				Input0 = Input {
					SourceOp = "tCheckFramerateText",
					Source = "Output",
				},
				Name1 = Input { Value = "25fps", },
				Name2 = Input { Value = "50fps", },
				Input2 = Input {
					SourceOp = "tCheckFramerateText",
					Source = "Output",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 648.29, 216.805 } },
			Colors = { TileColor = { R = 0.372549019607843, G = 0.6, B = 0.125490196078431 }, },
			UserControls = ordered() { 
				fps = {
					INP_MaxAllowed = 1000000, 
					INP_Integer = false, 
					INPID_InputControl = "SliderControl", 
					INP_MaxScale = 1, 
					INP_MinScale = 0, 
					INP_MinAllowed = -1000000, 
					LINKID_DataType = "Number", 
					ICS_ControlPage = "Controls", 
					INP_SplineType = "Default", 
					LINKS_Name = "Frames per Seconds (fps)",
				},
			}
		},
		tCheckFramerateText = TextPlus {
			NameSet = true,
			Inputs = {
				GlobalOut = Input { Value = 124, },
				Width = Input { Value = 1920, },
				Height = Input { Value = 1080, },
				UseFrameFormatSettings = Input { Value = 1, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
				LayoutType = Input { Value = 1, },
				Wrap = Input { Value = 1, },
				LayoutRotation = Input { Value = 1, },
				TransformRotation = Input { Value = 1, },
				SelectElement = Input { Value = 3, },
				Select = Input { Value = 3, },
				Enabled5 = Input { Value = 1, },
				Softness1 = Input { Value = 1, },
				Red = Input { Value = 0.2, },
				StyledText = Input {
					Value = "Unsupported Framerate",
					Expression = "Text(\"This template does not support the current framerate: \" .. tCheckFramerate.fps .. \" fps \")",
				},
				Font = Input { Value = "Open Sans", },
				Style = Input { Value = "Bold", },
				Size = Input { Value = 0.05, },
				VerticalJustificationNew = Input { Value = 3, },
				HorizontalJustificationNew = Input { Value = 3, },
				ElementShape5 = Input { Value = 2, },
				Level5 = Input { Value = 1, },
				Round5 = Input { Value = 0.101, },
				Green5 = Input { Value = 0, },
				Blue5 = Input { Value = 0, },
				Softness5 = Input { Value = 1, }
			},
			ViewInfo = OperatorInfo { Pos = { 648.29, 267.373 } },
		},
	}
}