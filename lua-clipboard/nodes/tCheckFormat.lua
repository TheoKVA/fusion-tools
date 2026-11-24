{
	Tools = ordered() {
		tCheckFormat = Switch {
			CtrlWZoom = false,
			NameSet = true,
			Inputs = {
				NumberOfInputs = Input { Value = 8, },
				Source = Input { Expression = ": --[[ Automatic ]] ; return iif(w==1080 and h==1920,1, iif(w==1080 and h==1440,2, iif(w==1080 and h==1350,3, iif(w==1080 and h==1080,4, iif(w==1440 and h==1080,5, iif(w==1920 and h==1080,6, iif(w==3840 and h==2160,7, 0)))))))", },
				StartRenderScripts = Input { Value = 1, },
				w = Input { Expression = ": --[[ Automatic ]] ; return comp:GetPrefs(\"Comp.FrameFormat.Width\")", },
				h = Input { Expression = ": --[[ Automatic ]] ; return comp:GetPrefs(\"Comp.FrameFormat.Height\")", },
				Name0 = Input { Value = "Unknown", },
				Name1 = Input { Value = "1080 x 1920", },
				Name2 = Input { Value = "1080 x 1440", },
				Name3 = Input { Value = "1080 x 1350", },
				Name4 = Input { Value = "1080 x 1080", },
				Name5 = Input { Value = "1440 x 1080", },
				Name6 = Input { Value = "1920 x 1080", },
				Name7 = Input { Value = "3840 x 2160", },
				Input0 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				},
				Input1 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				},
				Input2 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				},
				Input3 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				},
				Input4 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				},
				Input5 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				},
				Input6 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				},
				Input7 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				},
			},
			ViewInfo = OperatorInfo { Pos = { 648.29, 216.805 } },
			Colors = { TileColor = { R = 0.474509803921569, G = 0.658823529411765, B = 0.815686274509804 }, },
			UserControls = ordered() { w = { INP_MaxAllowed = 1000000, INP_Integer = false, INPID_InputControl = "SliderControl", INP_MaxScale = 1, INP_MinScale = 0, INP_MinAllowed = -1000000, LINKID_DataType = "Number", ICS_ControlPage = "Controls", INP_SplineType = "Default", LINKS_Name = "Width (w)" }, h = { INP_MaxAllowed = 1000000, INP_Integer = false, INPID_InputControl = "SliderControl", INP_MaxScale = 1, INP_MinScale = 0, INP_MinAllowed = -1000000, LINKID_DataType = "Number", ICS_ControlPage = "Controls", INP_SplineType = "Default", LINKS_Name = "Height (h)" } }
		},
		tCheckFormatText = TextPlus {
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
				Red = Input { Value = 0.2, },
				SelectElement = Input { Value = 3, },
				Select = Input { Value = 3, },
				Enabled5 = Input { Value = 1, },
				Softness1 = Input { Value = 1, },
				StyledText = Input {
					Expression = "Text(\"This template does not support the current format: \\n\" .. tCheckFormat.w .. \" x \".. tCheckFormat.h)",
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