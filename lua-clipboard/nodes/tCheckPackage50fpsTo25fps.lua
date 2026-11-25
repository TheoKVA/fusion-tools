{
	Tools = ordered() {
		PipeRouter1_1 = PipeRouter {
			ViewInfo = PipeRouterInfo { Pos = { -336.184, 44.7105 } },
		},
		tTimeSpeed = TimeSpeed {
			NameSet = true,
			Inputs = {
				SampleSpread = Input { Disabled = true, },
				Input = Input {
					SourceOp = "PipeRouter1_1",
					Source = "Output",
				},
				FreezeFrame = Input { Expression = "0.0", },
				InterpolateBetweenFrames = Input { Value = 0, },
				Speed = Input {
					Value = 2,
					Expression = "iif(ButtonInput == 0, 0.5, 2)",
				}
			},
			ViewInfo = OperatorInfo { Pos = { -243.664, 82.8166 } },
			Colors = { TileColor = { R = 0.474509803921569, G = 0.658823529411765, B = 0.815686274509804 }, },
			UserControls = ordered() { OldControlNest = { LBLC_DropDownButton = true, INPID_InputControl = "LabelControl", LBLC_NumInputs = 4, INP_External = false, ICS_ControlPage = "Controls", LBLCID_HideUpToID = "Direction", LBLC_NestLevel = 1, INP_Passive = true, LINKS_Name = "Old Control", }, FreezeFrame = { ICS_ControlPage = "Controls", }, InterpolateBetweenFrames = { ICS_ControlPage = "Controls", }, Delay = { ICS_ControlPage = "Controls", }, Speed = { ICS_ControlPage = "Controls", }, tempty = { LINKID_DataType = "Number", LBLC_DropDownButton = false, ICS_ControlPage = "Controls", INPID_InputControl = "LabelControl", INP_Passive = true, INP_External = false, LINKS_Name = "", }, ButtonInput = { { MBTNC_AddButton = "25 to 50 fps" }, { MBTNC_AddButton = "50 to 25 fps" }, INP_MaxAllowed = 1000000, INP_Integer = true, INPID_InputControl = "MultiButtonControl", ICS_ControlPage = "Controls", INP_SplineType = "Default", MBTNC_ShowBasicButton = true, INP_MaxScale = 100, INP_Default = 1, INP_MinAllowed = -1000000, INP_MinScale = 0, INP_External = false, LINKID_DataType = "Number", MBTNC_ShowName = false, MBTNC_StretchToFit = false, MBTNC_ShowToolTip = false, LINKS_Name = "Framerate" } }
		},
		tKeyframeStretcher = KeyStretcher {
			Inputs = {
				Keyframes = Input {
					SourceOp = "tTimeSpeed",
					Source = "Output",
				},
				SourceEnd = Input {
					Value = 60,
					Expression = "iif( AnimIN == 0, iif( CTRL_OUT.AnimOUT == 0, LastFrame, StretchEnd), LastFrame)",
				},
				SourceStart = Input { Expression = "iif( AnimIN == 0, iif( CTRL_OUT.AnimIN == 0, 0, StretchStart), 0)", },
				LastFrame = Input { Value = 60, },
				StretchStart = Input { Value = 45, },
				StretchEnd = Input { Value = 50, }
			},
			ViewInfo = OperatorInfo { Pos = { -125.004, 82.8166 } },
			Colors = { TileColor = { R = 0.474509803921569, G = 0.658823529411765, B = 0.815686274509804 }, },
			UserControls = ordered() { OldControlNest = { LBLC_DropDownButton = true, INPID_InputControl = "LabelControl", LBLC_NumInputs = 4, INP_External = false, ICS_ControlPage = "Keyframes", LBLCID_HideUpToID = "Direction", LBLC_NestLevel = 1, INP_Passive = true, LINKS_Name = "Old Control", }, Invert = { ICS_ControlPage = "Keyframes", }, StretchEdges = { ICS_ControlPage = "Keyframes", }, SourceEnd = { ICS_ControlPage = "Keyframes", }, SourceStart = { ICS_ControlPage = "Keyframes", }, Info_Param_1 = { LINKID_DataType = "Number", LBLC_DropDownButton = false, ICS_ControlPage = "Keyframes", INPID_InputControl = "LabelControl", INP_Passive = true, INP_External = false, LINKS_Name = " ", }, LastFrame = { LINKS_Name = "Last Frame", INP_Integer = true, LINKID_DataType = "Number", ICS_ControlPage = "Keyframes", INPID_InputControl = "SliderControl", INP_MinScale = 0, INP_MaxScale = 200, INP_Default = 200, }, StretchStart = { INP_Integer = true, ICS_ControlPage = "Keyframes", }, StretchEnd = { INP_Integer = true, ICS_ControlPage = "Keyframes", }, Info_Param_2 = { LINKID_DataType = "Number", LBLC_DropDownButton = false, ICS_ControlPage = "Keyframes", INPID_InputControl = "LabelControl", INP_Passive = true, INP_External = false, LINKS_Name = " ", }, AnimIN = { { MBTNC_AddButton = "AVEC" }, { MBTNC_AddButton = "SANS" }, INP_Integer = true, INPID_InputControl = "MultiButtonControl", MBTNC_ShowBasicButton = true, INP_SplineType = "Default", INP_Default = 0, ICS_ControlPage = "Keyframes", INP_External = false, LINKID_DataType = "Number", MBTNC_ShowName = false, MBTNC_StretchToFit = false, MBTNC_ShowToolTip = false, LINKS_Name = "With AnimIN ?", }, AnimOUT = { { MBTNC_AddButton = "AVEC" }, { MBTNC_AddButton = "SANS" }, INP_Integer = true, INPID_InputControl = "MultiButtonControl", MBTNC_ShowBasicButton = true, INP_SplineType = "Default", INP_Default = 0, ICS_ControlPage = "Keyframes", INP_External = false, LINKID_DataType = "Number", MBTNC_ShowName = false, MBTNC_StretchToFit = false, MBTNC_ShowToolTip = false, LINKS_Name = "With AnimOUT ?", } }
		},
		tKeyframeStretcher_1 = KeyStretcher {
			Inputs = {
				Keyframes = Input {
					SourceOp = "PipeRouter1_1",
					Source = "Output",
				},
				SourceEnd = Input {
					Value = 150,
					Expression = "iif( AnimIN == 0, iif( CTRL_OUT.AnimOUT == 0, LastFrame, StretchEnd), LastFrame)",
				},
				SourceStart = Input {
					Value = 80,
					Expression = "iif( AnimIN == 0, iif( CTRL_OUT.AnimIN == 0, 0, StretchStart), 0)",
				},
				LastFrame = Input { Value = 120, },
				StretchStart = Input { Value = 89, },
				StretchEnd = Input { Value = 100, }
			},
			ViewInfo = OperatorInfo { Pos = { -124.994, 44.7105 } },
			Colors = { TileColor = { R = 0.474509803921569, G = 0.658823529411765, B = 0.815686274509804 }, },
			UserControls = ordered() { OldControlNest = { LBLC_DropDownButton = true, INPID_InputControl = "LabelControl", LBLC_NumInputs = 4, INP_External = false, ICS_ControlPage = "Keyframes", INP_Passive = true, LBLC_NestLevel = 1, LBLCID_HideUpToID = "Direction", LINKS_Name = "Old Control", }, Invert = { ICS_ControlPage = "Keyframes", }, StretchEdges = { ICS_ControlPage = "Keyframes", }, SourceEnd = { ICS_ControlPage = "Keyframes", }, SourceStart = { ICS_ControlPage = "Keyframes", }, Info_Param_1 = { ICS_ControlPage = "Keyframes", LBLC_DropDownButton = false, LINKID_DataType = "Number", INP_External = false, INP_Passive = true, INPID_InputControl = "LabelControl", LINKS_Name = " ", }, LastFrame = { INP_Default = 200, INP_Integer = true, ICS_ControlPage = "Keyframes", LINKID_DataType = "Number", INP_MinScale = 0, INPID_InputControl = "SliderControl", INP_MaxScale = 200, LINKS_Name = "Last Frame", }, StretchStart = { ICS_ControlPage = "Keyframes", INP_Integer = true, }, StretchEnd = { ICS_ControlPage = "Keyframes", INP_Integer = true, }, Info_Param_2 = { ICS_ControlPage = "Keyframes", LBLC_DropDownButton = false, LINKID_DataType = "Number", INP_External = false, INP_Passive = true, INPID_InputControl = "LabelControl", LINKS_Name = " ", }, AnimIN = { { MBTNC_AddButton = "AVEC" }, { MBTNC_AddButton = "SANS" }, INP_Integer = true, INPID_InputControl = "MultiButtonControl", MBTNC_ShowBasicButton = true, INP_SplineType = "Default", INP_Default = 0, ICS_ControlPage = "Keyframes", INP_External = false, LINKID_DataType = "Number", MBTNC_ShowName = false, MBTNC_StretchToFit = false, MBTNC_ShowToolTip = false, LINKS_Name = "With AnimIN ?", }, AnimOUT = { { MBTNC_AddButton = "AVEC" }, { MBTNC_AddButton = "SANS" }, INP_Integer = true, INPID_InputControl = "MultiButtonControl", MBTNC_ShowBasicButton = true, INP_SplineType = "Default", INP_Default = 0, ICS_ControlPage = "Keyframes", INP_External = false, LINKID_DataType = "Number", MBTNC_ShowName = false, MBTNC_StretchToFit = false, MBTNC_ShowToolTip = false, LINKS_Name = "With AnimOUT ?", } }
		},
		tCheckDurationText1 = TextPlus {
			NameSet = true,
			Inputs = {
				GlobalOut = Input { Value = 199, },
				Width = Input { Value = 1920, },
				Height = Input { Value = 1080, },
				UseFrameFormatSettings = Input { Value = 1, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
				LayoutType = Input { Value = 1, },
				Wrap = Input { Value = 1, },
				LayoutRotation = Input { Value = 1, },
				Red = Input { Value = 0.2, },
				TransformRotation = Input { Value = 1, },
				SelectElement = Input { Value = 3, },
				Select = Input { Value = 3, },
				Enabled5 = Input { Value = 1, },
				Softness1 = Input { Value = 1, },
				StyledText = Input { Expression = "Text(\"Template is currently not starting at frame 0 !\\nRemove this template and put a fresh one back.\")", },
				Font = Input { Value = "Open Sans", },
				Style = Input { Value = "Bold", },
				Size = Input { Value = 0.05, },
				VerticalJustificationNew = Input { Value = 3, },
				HorizontalJustificationNew = Input { Value = 3, },
				ElementShape5 = Input { Value = 2, },
				Level5 = Input { Value = 1, },
				Round5 = Input { Value = 0.101, },
				Red5 = Input { Value = 0, },
				Green5 = Input { Value = 0, },
				Blue5 = Input { Value = 0, },
				Softness5 = Input { Value = 1, }
			},
			ViewInfo = OperatorInfo { Pos = { -5.00415, 116.573 } },
		},
		tCheckDuration_1 = Switch {
			NameSet = true,
			Inputs = {
				NumberOfInputs = Input { Value = 4, },
				Source = Input { Expression = ": --[[ Automatic ]] ; return iif( RenderStart~=0, 1, (iif( MinLength~=0 and (RenderEnd+1)<MinLength, 2, (iif( TargettedLength~=0 and TargettedLength~=(RenderEnd+1), 3, 0 )) )) )", },
				StartRenderScripts = Input { Value = 1, },
				RenderStart = Input { Expression = ": --[[ Automatic ]] ; return comp.RenderStart", },
				RenderEnd = Input { Expression = ": --[[ Automatic ]] ; return comp.RenderEnd", },
				MinLength = Input { Value = 150, },
				Name0 = Input { Value = "OK", },
				Input0 = Input {
					SourceOp = "tKeyframeStretcher_1",
					Source = "Result",
				},
				Name1 = Input { Value = "STARTING NOT 0", },
				Input1 = Input {
					SourceOp = "tCheckDurationText1",
					Source = "Output",
				},
				Name2 = Input { Value = "TOO SHORT", },
				Input2 = Input {
					SourceOp = "tCheckDurationText2",
					Source = "Output",
				},
				Name3 = Input { Value = "NOT PRECISE", },
				Input3 = Input {
					SourceOp = "tCheckDurationText3",
					Source = "Output",
				}
			},
			ViewInfo = OperatorInfo { Pos = { -5.00415, 44.7105 } },
			Colors = { TileColor = { R = 0.372549019607843, G = 0.6, B = 0.125490196078431 }, },
			UserControls = ordered() { RenderStart = { INP_MaxAllowed = 1000000, INP_Integer = false, INPID_InputControl = "SliderControl", INP_MaxScale = 1, INP_MinScale = 0, INP_MinAllowed = -1000000, LINKID_DataType = "Number", ICS_ControlPage = "Controls", INP_SplineType = "Default", LINKS_Name = "RenderStart" }, RenderEnd = { INP_MaxAllowed = 1000000, INP_Integer = false, INPID_InputControl = "SliderControl", INP_MaxScale = 1, INP_MinScale = 0, INP_MinAllowed = -1000000, LINKID_DataType = "Number", ICS_ControlPage = "Controls", INP_SplineType = "Default", LINKS_Name = "RenderEnd" }, InputText_0 = { LINKID_DataType = "Number", LBLC_DropDownButton = false, ICS_ControlPage = "Controls", INPID_InputControl = "LabelControl", INP_Passive = true, INP_External = false, LINKS_Name = " ", }, InputText_1 = { LINKID_DataType = "Number", LBLC_DropDownButton = false, ICS_ControlPage = "Controls", INPID_InputControl = "LabelControl", INP_Passive = true, INP_External = false, LINKS_Name = "INPUTS", }, MinLength = { INP_MaxAllowed = 1000000, INP_Integer = true, INPID_InputControl = "SliderControl", INP_MaxScale = 500, INP_MinScale = 0, INP_MinAllowed = -1000000, LINKID_DataType = "Number", ICS_ControlPage = "Controls", INP_SplineType = "Default", LINKS_Name = "MIN LENGTH ? (in frames)" }, TargettedLength = { INP_MaxAllowed = 1000000, INP_Integer = true, INPID_InputControl = "SliderControl", INP_MaxScale = 500, INP_MinScale = 0, INP_MinAllowed = -1000000, LINKID_DataType = "Number", ICS_ControlPage = "Controls", INP_SplineType = "Default", LINKS_Name = "TARGET LENGTH ? (in frames)" } }
		},
		tCheckDuration = Switch {
			NameSet = true,
			Inputs = {
				NumberOfInputs = Input { Value = 4, },
				Source = Input { Expression = ": --[[ Automatic ]] ; return iif( RenderStart~=0, 1, (iif( MinLength~=0 and (RenderEnd+1)<MinLength, 2, (iif( TargettedLength~=0 and TargettedLength~=(RenderEnd+1), 3, 0 )) )) )", },
				StartRenderScripts = Input { Value = 1, },
				RenderStart = Input { Expression = ": --[[ Automatic ]] ; return comp.RenderStart", },
				RenderEnd = Input {
					Value = 199,
					Expression = ": --[[ Automatic ]] ; return comp.RenderEnd",
				},
				MinLength = Input { Value = 75, },
				Name0 = Input { Value = "OK", },
				Input0 = Input {
					SourceOp = "tKeyframeStretcher",
					Source = "Result",
				},
				Name1 = Input { Value = "STARTING NOT 0", },
				Input1 = Input {
					SourceOp = "tCheckDurationText1",
					Source = "Output",
				},
				Name2 = Input { Value = "TOO SHORT", },
				Input2 = Input {
					SourceOp = "tCheckDurationText2",
					Source = "Output",
				},
				Name3 = Input { Value = "NOT PRECISE", },
				Input3 = Input {
					SourceOp = "tCheckDurationText3",
					Source = "Output",
				}
			},
			ViewInfo = OperatorInfo { Pos = { -5.00415, 82.8166 } },
			Colors = { TileColor = { R = 0.372549019607843, G = 0.6, B = 0.125490196078431 }, },
			UserControls = ordered() { RenderStart = { INP_MaxAllowed = 1000000, INP_Integer = false, INPID_InputControl = "SliderControl", INP_MaxScale = 1, INP_MinScale = 0, INP_MinAllowed = -1000000, LINKID_DataType = "Number", ICS_ControlPage = "Controls", INP_SplineType = "Default", LINKS_Name = "RenderStart" }, RenderEnd = { INP_MaxAllowed = 1000000, INP_Integer = false, INPID_InputControl = "SliderControl", INP_MaxScale = 1, INP_MinScale = 0, INP_MinAllowed = -1000000, LINKID_DataType = "Number", ICS_ControlPage = "Controls", INP_SplineType = "Default", LINKS_Name = "RenderEnd" }, InputText_0 = { ICS_ControlPage = "Controls", LBLC_DropDownButton = false, LINKID_DataType = "Number", INP_External = false, INP_Passive = true, INPID_InputControl = "LabelControl", LINKS_Name = " ", }, InputText_1 = { ICS_ControlPage = "Controls", LBLC_DropDownButton = false, LINKID_DataType = "Number", INP_External = false, INP_Passive = true, INPID_InputControl = "LabelControl", LINKS_Name = "INPUTS", }, MinLength = { INP_MaxAllowed = 1000000, INP_Integer = true, INPID_InputControl = "SliderControl", INP_MaxScale = 500, INP_MinScale = 0, INP_MinAllowed = -1000000, LINKID_DataType = "Number", ICS_ControlPage = "Controls", INP_SplineType = "Default", LINKS_Name = "MIN LENGTH ? (in frames)" }, TargettedLength = { INP_MaxAllowed = 1000000, INP_Integer = true, INPID_InputControl = "SliderControl", INP_MaxScale = 500, INP_MinScale = 0, INP_MinAllowed = -1000000, LINKID_DataType = "Number", ICS_ControlPage = "Controls", INP_SplineType = "Default", LINKS_Name = "TARGET LENGTH ? (in frames)" } }
		},
		tCheckDurationText2 = TextPlus {
			NameSet = true,
			Inputs = {
				GlobalOut = Input { Value = 199, },
				Width = Input { Value = 1920, },
				Height = Input { Value = 1080, },
				UseFrameFormatSettings = Input { Value = 1, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
				LayoutType = Input { Value = 1, },
				Wrap = Input { Value = 1, },
				LayoutRotation = Input { Value = 1, },
				Red = Input { Value = 0.2, },
				TransformRotation = Input { Value = 1, },
				SelectElement = Input { Value = 3, },
				Select = Input { Value = 3, },
				Enabled5 = Input { Value = 1, },
				Softness1 = Input { Value = 1, },
				StyledText = Input { Expression = "Text(\"Template can not be shorter than \" .. tCheckDuration.MinLength .. \" Frames. Check duration using CMD+D.\")", },
				Font = Input { Value = "Open Sans", },
				Style = Input { Value = "Bold", },
				Size = Input { Value = 0.05, },
				VerticalJustificationNew = Input { Value = 3, },
				HorizontalJustificationNew = Input { Value = 3, },
				ElementShape5 = Input { Value = 2, },
				Level5 = Input { Value = 1, },
				Round5 = Input { Value = 0.101, },
				Red5 = Input { Value = 0, },
				Green5 = Input { Value = 0, },
				Blue5 = Input { Value = 0, },
				Softness5 = Input { Value = 1, }
			},
			ViewInfo = OperatorInfo { Pos = { -5.00415, 152.33 } },
		},
		tCheckFramerate = Switch {
			NameSet = true,
			Inputs = {
				NumberOfInputs = Input { Value = 3, },
				Source = Input {
					Value = 1,
					Expression = ": --[[ Automatic ]] ; return iif(fps==25,1, iif(fps==50,2, 0))",
				},
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
				Input1 = Input {
					SourceOp = "tCheckDuration",
					Source = "Output",
				},
				Name2 = Input { Value = "50fps", },
				Input2 = Input {
					SourceOp = "tCheckDuration_1",
					Source = "Output",
				}
			},
			ViewInfo = OperatorInfo { Pos = { 115.666, 44.7105 } },
			Colors = { TileColor = { R = 0.372549019607843, G = 0.6, B = 0.125490196078431 }, },
			UserControls = ordered() { fps = { INP_MaxAllowed = 1000000, INP_Integer = false, INPID_InputControl = "SliderControl", INP_MaxScale = 1, INP_MinScale = 0, INP_MinAllowed = -1000000, LINKID_DataType = "Number", ICS_ControlPage = "Controls", INP_SplineType = "Default", LINKS_Name = "Frames per Seconds (fps)" } }
		},
		tCheckFramerateText = TextPlus {
			NameSet = true,
			Inputs = {
				GlobalOut = Input { Value = 199, },
				Width = Input { Value = 1920, },
				Height = Input { Value = 1080, },
				UseFrameFormatSettings = Input { Value = 1, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
				LayoutType = Input { Value = 1, },
				Wrap = Input { Value = 1, },
				LayoutRotation = Input { Value = 1, },
				Red = Input { Value = 0.2, },
				TransformRotation = Input { Value = 1, },
				SelectElement = Input { Value = 3, },
				Select = Input { Value = 3, },
				Enabled5 = Input { Value = 1, },
				Softness1 = Input { Value = 1, },
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
			ViewInfo = OperatorInfo { Pos = { 115.666, 81.9452 } },
		},
		tCheckDurationText3 = TextPlus {
			NameSet = true,
			Inputs = {
				GlobalOut = Input { Value = 199, },
				Width = Input { Value = 1920, },
				Height = Input { Value = 1080, },
				UseFrameFormatSettings = Input { Value = 1, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
				LayoutType = Input { Value = 1, },
				Wrap = Input { Value = 1, },
				LayoutRotation = Input { Value = 1, },
				Red = Input { Value = 0.2, },
				TransformRotation = Input { Value = 1, },
				SelectElement = Input { Value = 3, },
				Select = Input { Value = 3, },
				Enabled5 = Input { Value = 1, },
				Softness1 = Input { Value = 1, },
				StyledText = Input { Expression = "Text(\"Template should be preciselly \" .. tCheckDuration.TargettedLength .. \" Frames. Set duration using CMD+D.\")", },
				Font = Input { Value = "Open Sans", },
				Style = Input { Value = "Bold", },
				Size = Input { Value = 0.05, },
				VerticalJustificationNew = Input { Value = 3, },
				HorizontalJustificationNew = Input { Value = 3, },
				ElementShape5 = Input { Value = 2, },
				Level5 = Input { Value = 1, },
				Round5 = Input { Value = 0.101, },
				Red5 = Input { Value = 0, },
				Green5 = Input { Value = 0, },
				Blue5 = Input { Value = 0, },
				Softness5 = Input { Value = 1, }
			},
			ViewInfo = OperatorInfo { Pos = { -5.00415, 185.663 } },
		},
		tCheckFormatText = TextPlus {
			NameSet = true,
			Inputs = {
				GlobalOut = Input { Value = 199, },
				Width = Input { Value = 1920, },
				Height = Input { Value = 1080, },
				UseFrameFormatSettings = Input { Value = 1, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
				LayoutType = Input { Value = 1, },
				Wrap = Input { Value = 1, },
				LayoutRotation = Input { Value = 1, },
				Red = Input { Value = 0.2, },
				TransformRotation = Input { Value = 1, },
				SelectElement = Input { Value = 3, },
				Select = Input { Value = 3, },
				Enabled5 = Input { Value = 1, },
				Softness1 = Input { Value = 1, },
				StyledText = Input { Expression = "Text(\"This template does not support the current format: \\n\" .. tCheckFormat_1.w .. \" x \".. tCheckFormat_1.h)", },
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
			ViewInfo = OperatorInfo { Pos = { 248.336, 81.3391 } },
		},
		tCheckFormat_1 = Switch {
			CtrlWZoom = false,
			NameSet = true,
			Inputs = {
				NumberOfInputs = Input { Value = 8, },
				Source = Input {
					Value = 6,
					Expression = ": --[[ Automatic ]] ; return iif(w==1080 and h==1920,1, iif(w==1080 and h==1440,2, iif(w==1080 and h==1350,3, iif(w==1080 and h==1080,4, iif(w==1440 and h==1080,5, iif(w==1920 and h==1080,6, iif(w==3840 and h==2160,7, 0)))))))",
				},
				StartRenderScripts = Input { Value = 1, },
				w = Input {
					Value = 1920,
					Expression = ": --[[ Automatic ]] ; return comp:GetPrefs(\"Comp.FrameFormat.Width\")",
				},
				h = Input {
					Value = 1080,
					Expression = ": --[[ Automatic ]] ; return comp:GetPrefs(\"Comp.FrameFormat.Height\")",
				},
				Name0 = Input { Value = "Unknown", },
				Input0 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				},
				Name1 = Input { Value = "1080 x 1920", },
				Input1 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				},
				Name2 = Input { Value = "1080 x 1440", },
				Input2 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				},
				Name3 = Input { Value = "1080 x 1350", },
				Input3 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				},
				Name4 = Input { Value = "1080 x 1080", },
				Input4 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				},
				Name5 = Input { Value = "1440 x 1080", },
				Input5 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				},
				Name6 = Input { Value = "1920 x 1080", },
				Input6 = Input {
					SourceOp = "tCheckFramerate",
					Source = "Output",
				},
				Name7 = Input { Value = "3840 x 2160", },
				Input7 = Input {
					SourceOp = "tCheckFormatText",
					Source = "Output",
				}
			},
			ViewInfo = OperatorInfo { Pos = { 248.336, 44.7105 } },
			Colors = { TileColor = { R = 0.372549019607843, G = 0.6, B = 0.125490196078431 }, },
			UserControls = ordered() { w = { INP_MaxAllowed = 1000000, INP_Integer = false, INPID_InputControl = "SliderControl", INP_MaxScale = 1, INP_MinScale = 0, INP_MinAllowed = -1000000, LINKID_DataType = "Number", ICS_ControlPage = "Controls", INP_SplineType = "Default", LINKS_Name = "Width (w)" }, h = { INP_MaxAllowed = 1000000, INP_Integer = false, INPID_InputControl = "SliderControl", INP_MaxScale = 1, INP_MinScale = 0, INP_MinAllowed = -1000000, LINKID_DataType = "Number", ICS_ControlPage = "Controls", INP_SplineType = "Default", LINKS_Name = "Height (h)" } }
		}
	}
}