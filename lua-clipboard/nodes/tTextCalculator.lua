--[[
	 ┌────────────────┐                      
┌────┼──────────┐   ╭─┼──────────╮           
│    │          │   │ │          │           
│    │    ╔═════╪═══╪═╪══════════╪════╗      
│    └────╫─────┼───┼─┘          │    ║      
│    ╔════╬══╗  │   │      ╔═════╪════╬════╗ 
└────╫────╫──╫──┘   │      ║     │    ║    ║ 
     ║    ║  ║      ╰──────╫─────╯    ║    ║ 
     ║    ╚══╬═════════════╬══════════╝    ║ 
     ║       ║             ║               ║ 
     ║       ║             ╚═══════════════╝ 
     ╚═══════╝                               
]]
{
	Tools = ordered() {
		data_tTextCalculator = GroupOperator {
			NameSet = true,
			Inputs = ordered() {
				fontPxSizeAbs = Input { Expression = "xHeightPx/(RefSize1.Output.DataWindow[4]-RefSize1.Output.DataWindow[2]-2)", },
				anchorPointLAbs = Input { Expression = "(RefSize1.Output.DataWindow[1]+1)/refWidth", },
				anchorPointVerticalAbs = Input { Expression = "-(RefSize1.Output.DataWindow[2]+1)/refWidth", },
				lineSpacingPx = Input { Expression = "refWidth*0.8", },

				CanvasSizeInputs = Input { Expression = "iif(CanvasSizeReference == 1,1,0)", }, -- Show hide
				CompWidth = Input { Expression = 'comp:GetPrefs(\"Comp.FrameFormat.Width\")' },
				CompHeight = Input { Expression = 'comp:GetPrefs(\"Comp.FrameFormat.Height\")' },

				refWidth = Input { Expression = "iif(CanvasSizeReference == 1, CanvasWidth, CompWidth)", },
			},
			ViewInfo = GroupInfo {
				Pos = { 165, 49.5 },
				Flags = {
					AllowPan = false,
					GridSnap = true,
					AutoSnap = true,
					RemoveRouters = true
				},
				Size = { 130.082, 52.7804, 67.0883, 24.2424 },
				Direction = "Horizontal",
				PipeStyle = "Direct",
				Scale = 1,
				Offset = { -165, -139.864 }
			},
			Tools = ordered() {
				RefSize1 = TextPlus {
					--[[
						Reference de la taille de la typo
					]]
					NameSet = true,
					Inputs = {
						GlobalOut = Input { Value = 119, },

						-- Size reference
						Width = Input { 
							Value = 1920,
							Expression = "iif(data_tTextCalculator.CanvasSizeReference == 1, data_tTextCalculator.CanvasWidth, data_tTextCalculator.CompWidth)",
						},
						Height = Input { 
							Value = 1080,
							Expression = "iif(data_tTextCalculator.CanvasSizeReference == 1, data_tTextCalculator.CanvasHeight, data_tTextCalculator.CompHeight)",
						},
						UseFrameFormatSettings = Input { 
							Value = 1,
							Expression = "iif(data_tTextCalculator.CanvasSizeReference == 1,0,1)",
						},

						["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
						Wrap = Input { Value = 1, },
						Center = Input { Value = { 0, 0 }, },
						LayoutRotation = Input { Value = 1, },
						TransformRotation = Input { Value = 1, },
						Softness1 = Input { Value = 1, },
						-- StyledText = Input { Value = "x", },
                        StyledText = Input {
                            SourceOp = "RefSize1StyledText1",
                            Source = "Value",
                        },
						-- On copie via expression la typo, pour déduire la taille de 'x'
                        Font = Input {
                            -- Value = "Open Sans",
                            Expression = "tTextCalculator.Font",
                        },
						Style = Input { 
                            -- Value = "Regular",
                            Expression = "tTextCalculator.Style",
                        },
						Size = Input { Value = 1, },
						VerticalTopCenterBottom = Input { Value = -1, },
						-- VerticalTopCenterBottom = Input { Value = 1, },
						VerticalJustificationNew = Input { Value = 3, },
						HorizontalLeftCenterRight = Input { Value = -1, },
						HorizontalJustificationNew = Input { Value = 3, }
					},
					ViewInfo = OperatorInfo { Pos = { 165, 148.5 } },
				},
                RefSize1StyledText1 = BezierSpline {
                    SplineColor = { Red = 237, Green = 142, Blue = 243 },
                    CtrlWZoom = false,
                    NameSet = true,
                    KeyFrames = {
                        [0] = { 0, RH = { 0.333333333333333, 0.333333333333333 }, Flags = { Linear = true, LockedY = true }, Value = Text {
                                Value = "L"
                            } },
                        [1] = { 1, LH = { 0.666666666666667, 0.666666666666667 }, Flags = { Linear = true, LockedY = true }, Value = Text {
                                Value = "x"
                            } }
                    }
                },
			},
			Colors = { TileColor = { R = 0.474509803921569, G = 0.658823529411765, B = 0.815686274509804 }, },
			UserControls = ordered() {
				-- CONTROLS
				-- =================
				xHeightPx = {
					LINKS_Name = "x height at 1000pt (px)",
					LINKID_DataType = "Number",
					INP_Integer = false,
					INPID_InputControl = "SliderControl",
					INP_MaxScale = 1,
					INP_Default = 521,
					INP_MinScale = 0,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Controls",
				},
				CanvasSizeReference = { -- User input
					LINKS_Name = "Canvas Size",
					LINKID_DataType = "Number",
					INPID_InputControl = "MultiButtonControl",
					INP_Default = 0,
					INP_Integer = true,
					INP_SplineType = "Default",
					{ MBTNC_AddButton = "Auto" },
					{ MBTNC_AddButton = "Custom" },
					MBTNC_ShowBasicButton = true,
					MBTNC_ShowToolTip = false,
					MBTNC_ShowName = false,
					MBTNC_StretchToFit = false,
					INP_External = false,
					ICS_ControlPage = "Controls",
				},
				CanvasSizeInputs = { -- Group
					LINKS_Name = "CanvasSizeInputs",
					LINKID_DataType = "Number",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = true,
					LBLC_NumInputs = 2, -- NUMBER OF ELEMENT IN GROUP
					LBLC_NestLevel = 1,
					INP_Passive = false,
					IC_Visible = false,
					ICS_ControlPage = "Controls",
				},
				CanvasWidth = {
				 	LINKS_Name = "Canvas Width (px)",
				 	LINKID_DataType = "Number",
				 	INPID_InputControl = "SliderControl",
					INP_Default = 1920,
					INP_Integer = true,
					INP_MinScale = 1,
					INP_MaxScale = 4096,
					INP_MinAllowed = 1,
					INP_MaxAllowed = 32767,
					INP_External = false,
				 	ICS_ControlPage = "Controls",
				},
				CanvasHeight = {
					LINKS_Name = "Canvas Height (px)",
				 	LINKID_DataType = "Number",
				 	INPID_InputControl = "SliderControl",
					INP_Default = 1080,
					INP_Integer = true,
					INP_MinScale = 1,
					INP_MaxScale = 4096,
					INP_MinAllowed = 1,
					INP_MaxAllowed = 32767,
					INP_External = false,
				 	ICS_ControlPage = "Controls",
				},
				CompWidth = {
				 	LINKS_Name = "width (CompWidth)",
				 	LINKID_DataType = "Number",
				 	INPID_InputControl = "SliderControl",
					INP_Default = 1920,
				 	INP_MinScale = 0,
				 	INP_MaxScale = 2000,
					INP_External = false,
					IC_Visible = false,
				 	ICS_ControlPage = "Controls",
				},
				CompHeight = {
				 	LINKS_Name = "height (CompHeight)",
				 	LINKID_DataType = "Number",
				 	INPID_InputControl = "SliderControl",
					INP_Default = 1080,
				 	INP_MinScale = 0,
				 	INP_MaxScale = 2000,
					INP_External = false,
					IC_Visible = false,
				 	ICS_ControlPage = "Controls",
				},
				refWidth = { -- Output for expressions
					LINKS_Name = "Comp Width (px)",
					LINKID_DataType = "Number",
					INP_Integer = true,
					INPID_InputControl = "SliderControl",
					INP_MaxScale = 1,
					INP_Default = 1920,
					INP_MinScale = 0,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					IC_Visible = false,
					ICS_ControlPage = "Controls",
				},
				-- DATA
				-- =================
				fontPxSizeAbs = {
					LINKS_Name = "fontPxSizeAbs",
					LINKID_DataType = "Number",
					INP_Integer = false,
					INPID_InputControl = "SliderControl",
					INP_MaxScale = 1,
					INP_Default = 0,
					INP_MinScale = 0,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Data",
				},
				anchorPointLAbs = {
					LINKS_Name = "anchorPointLAbs",
					LINKID_DataType = "Number",
					INP_Integer = false,
					INPID_InputControl = "SliderControl",
					INP_MaxScale = 1,
					INP_Default = 0,
					INP_MinScale = 0,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Data",
				},
				anchorPointVerticalAbs = {
					LINKS_Name = "anchorPointVerticalAbs",
					LINKID_DataType = "Number",
					INP_Integer = false,
					INPID_InputControl = "SliderControl",
					INP_MaxScale = 1,
					INP_Default = 0,
					INP_MinScale = 0,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Data",
				},
				lineSpacingPx = {
					LINKS_Name = "lineSpacingPx",
					LINKID_DataType = "Number",
					INP_Integer = false,
					INPID_InputControl = "SliderControl",
					INP_MaxScale = 1,
					INP_Default = 0,
					INP_MinScale = 0,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Data",
				},
				
				-- ===========
				--  COPYRIGHT
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
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = false,
					INP_Passive = true,
					INP_External = false,
					ICS_ControlPage = "Controls",
				},
				Copyright = {
					LINKS_Name = "@RTS - Radio Television Suisse",
					LINKID_DataType = "Number",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = false,
					INP_Passive = true,
					INP_External = false,
					ICS_ControlPage = "Controls",
				},
			}
		},
		tTextCalculator = TextPlus {
			NameSet = true,
			Inputs = {
				SettingsNest = Input { Value = 0, },
				LayersNest = Input { Value = 0, },
				GlobalOut = Input { Value = 124, },

				-- Size reference
				Width = Input { 
					Value = 1920,
					Expression = "iif(data_tTextCalculator.CanvasSizeReference == 1, data_tTextCalculator.CanvasWidth, data_tTextCalculator.CompWidth)",
				},
				Height = Input { 
					Value = 1080,
					Expression = "iif(data_tTextCalculator.CanvasSizeReference == 1, data_tTextCalculator.CanvasHeight, data_tTextCalculator.CompHeight)",
				},
				UseFrameFormatSettings = Input { 
					Value = 1,
					Expression = "iif(data_tTextCalculator.CanvasSizeReference == 1,0,1)",
				},

				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
				Wrap = Input { Value = 1, },
				Background = Input { Value = 0, },
				TransformRotation = Input { Value = 1, },
				Softness1 = Input { Value = 1, },
				VerticalTopCenterBottom = Input { Value = 1, },    -- [ -1 | 0 | 1 ]
				HorizontalLeftCenterRight = Input { Value = -1, }, -- [ -1 | 0 | 1 ]
				VerticalJustificationNew = Input { Value = 3, },
				HorizontalJustificationNew = Input { Value = 3, },
				CommentsNest = Input { Value = 0, },
				FrameRenderScriptNest = Input { Value = 0, },
                -- FONT
				StyledText = Input { Value = "Lorem ipsum\ndolor sit amet", },
                Font = Input { Value = "RTS Neue", },
				Style = Input { Value = "Regular", },

				-- OUTPUT VALUES
				Size = Input {  -- (Font Size)
					Expression = "SizePx * data_tTextCalculator:GetValue(\"fontPxSizeAbs\",1) / 1000",
				},
				LineSpacing = Input { -- (Leading)
					-- Value = 0.5,
					Expression = "LineSpacingPx / ( (SizePx * data_tTextCalculator:GetValue(\"fontPxSizeAbs\",1) / 1000) * data_tTextCalculator.lineSpacingPx)",
				},
				CharacterSpacing = Input { -- (Letter Spacing)
					-- Value = 1,
					Expression = "((SizePx/100*CharacterSpacingPrct)/(Size*data_tTextCalculator.refWidth))+1",
				},
                CharacterOffset = Input { 
                    -- Value = { 0, 0 },
                    Expression = "Point(iif(AnchorPointAjustmentHorizontalInput == 1, -(data_tTextCalculator:GetValue(\"anchorPointLAbs\",0))*Size, 0), iif(AnchorPointAjustmentVerticalInput == 1, data_tTextCalculator:GetValue(\"anchorPointVerticalAbs\",0)*Size, 0))",
                },

			},
			Colors = { TileColor = { R = 0.474509803921569, G = 0.658823529411765, B = 0.815686274509804 }, },
			ViewInfo = OperatorInfo { Pos = { 165, 82.5 } },
			UserControls = ordered() {
                -- ====================
				-- == TEXT DATA NEST ==
                -- ====================
				TextDataNest = {
					LINKS_Name = "Old Control",
					LINKID_DataType = "Number",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = true,
					LBLC_NumInputs = 16,
					LBLC_NestLevel = 1,
					LBLCID_HideUpToID = "Direction",
					ICS_ControlPage = "Text",
					INP_External = false,
					INP_Passive = true
				},
				VerticalTopCenterBottom = { ICS_ControlPage = "Text" },
				VerticallyJustified = { ICS_ControlPage = "Text" },
				HorizontalLeftCenterRight = { ICS_ControlPage = "Text" },
				HorizontallyJustified = { ICS_ControlPage = "Text" },
				LineDirection = { ICS_ControlPage = "Text" },
				Direction = { ICS_ControlPage = "Text" },
				Strikeout = { ICS_ControlPage = "Text" },
				Underline = { ICS_ControlPage = "Text" },
				Start = { ICS_ControlPage = "Text" },
				End = { ICS_ControlPage = "Text" },
				VerticalJustificationTop = { ICS_ControlPage = "Text" },
				VerticalJustificationCenter = { ICS_ControlPage = "Text" },
				VerticalJustificationBottom = { ICS_ControlPage = "Text" },
				HorizontalJustificationLeft = { ICS_ControlPage = "Text" },
				HorizontalJustificationCenter = { ICS_ControlPage = "Text" },
				HorizontalJustificationRight = { ICS_ControlPage = "Text" },
                -- =================
				-- == TEXT INPUTS ==
                -- =================
				
				Empty_0 = { LINKS_Name = "", LINKID_DataType = "Number", LBLC_DropDownButton = false, INPID_InputControl = "LabelControl", INP_Passive = true, INP_External = false, ICS_ControlPage = "Text",},
				Info_0 = {
					LINKS_Name = "INPUT",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_Passive = true,
					INP_External = false,
					ICS_ControlPage = "Text",
				},
				SizePx = {
					LINKS_Name = "Size (px)",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 50,
					INP_Integer = true,
					INP_MinScale = 0,
					INP_MaxScale = 200,
					INP_MinAllowed = 0,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Text"
				},
				LineSpacingPx = {
					LINKS_Name = "Line Height (px)",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 50,
					INP_Integer = true,
					INP_MinScale = 0,
					INP_MaxScale = 200,
					INP_MinAllowed = 0,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Text"
				},
				CharacterSpacingPrct = {
					LINKS_Name = "Letter Spacing (%)",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 0,
					INP_Integer = false,
					INP_MinScale = -5,
					INP_MaxScale = 5,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Text"
				},
				AnchorPointAjustmentHorizontalInput = {
					LINKS_Name = "Anchor Point",
					LINKID_DataType = "Number",
					INPID_InputControl = "MultiButtonControl",
					INP_Default = 1,
					INP_Integer = true,
					INP_MinScale = 0,
					INP_MaxScale = 100,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					{ MBTNC_AddButton = "None" },
					{ MBTNC_AddButton = "L" },
					MBTNC_ShowBasicButton = true,
					MBTNC_ShowToolTip = false,
					MBTNC_ShowName = false,
					MBTNC_StretchToFit = false,
					INP_External = false,
					ICS_ControlPage = "Text"
				},
				AnchorPointAjustmentVerticalInput = {
					LINKS_Name = "Anchor Point",
					LINKID_DataType = "Number",
					INPID_InputControl = "MultiButtonControl",
					INP_Default = 1,
					INP_Integer = true,
					INP_MinScale = 0,
					INP_MaxScale = 100,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					{ MBTNC_AddButton = "Bottom" },
					{ MBTNC_AddButton = "Top" },
					MBTNC_ShowBasicButton = true,
					MBTNC_ShowToolTip = false,
					MBTNC_ShowName = false,
					MBTNC_StretchToFit = false,
					INP_External = false,
					ICS_ControlPage = "Text"
				},
				
				Empty_1 = { LINKS_Name = "", LINKID_DataType = "Number", LBLC_DropDownButton = false, INPID_InputControl = "LabelControl", INP_Passive = true, INP_External = false, ICS_ControlPage = "Text",},
				Info_1 = {
					LINKS_Name = "OUTPUT (Values to copy-paste)",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_Passive = true,
					INP_External = false,
					ICS_ControlPage = "Text",
				},
				Size = {
					LINKS_Name = "Size",
					ICS_ControlPage = "Text"
				},
				CharacterSpacingClone = {
					LINKS_Name = "Tracking (Character Spacing)",
					ICS_ControlPage = "Text"
				},
				LineSpacingClone = {
					LINKS_Name = "Line Spacing",
					ICS_ControlPage = "Text"
				},
				CharacterOffset = {
					LINKS_Name = "Transform Offset (Alignment adjustment)",
					ICS_ControlPage = "Text"
				},
			}
		}
	},
	ActiveTool = "tTextCalculator"
}