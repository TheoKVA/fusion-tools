{
	Tools = ordered() {
		tRectangle = RectangleMask {
			CtrlWZoom = false,
			Inputs = {
				-- Usual Informations
				Filter = Input { Value = FuID { "Fast Gaussian" }, },
				ShowViewControls = Input { Value = 0, }, -- Hidden controls
				Solid = Input { Value = 1, }, -- Filled by default
				MaskWidth = Input { Value = 1920, },
				MaskHeight = Input { Value = 1080, },
				PixelAspect = Input { Value = { 1, 1 }, },
				UseFrameFormatSettings = Input { Value = 1, },
				ClippingMode = Input { Value = FuID { "None" }, },
				OutputSize = Input { Value = FuID { "Custom" }, },

				Center = Input { 
					Value = { 0.5, 0.5 },
					Expression = "PositionInput + Point(-WidthAbsolute/2+WidthAbsolute*(1-AnchorPoint.X), -HeightAbsolute/2+HeightAbsolute*(1-AnchorPoint.Y))",
				},
				Width = Input { 
					Value = 0,
					Expression = "WidthAbsolute-BorderWidthAbsolute*(BorderPositionInput-1)",
				},
				Height = Input { 
					Value = 0,
					Expression = "HeightAbsolute-BorderHeightAbsolute*(BorderPositionInput-1)",
				},
				CornerRadius = Input { 
					Value = 0,
					Expression = "iif( math.min(WidthPx, HeightPx) == 0, 0, RadiusPx / math.min(WidthPx, HeightPx) * 2 )",
				},
				BorderWidth = Input { Expression = "BorderWidthAbsolute", },
				WidthAbsolute = Input { Expression = "WidthPx/MaskWidth", },
				HeightAbsolute = Input { Expression = "HeightPx/MaskHeight", },
				BorderWidthAbsolute = Input { Expression = "min(WidthAbsolute, BorderWidthPx/MaskWidth)", },
				BorderHeightAbsolute = Input { Expression = "min(HeightAbsolute, BorderWidthPx/MaskHeight)", },
			},
			ViewInfo = OperatorInfo { Pos = { -453.588, -21.1822 } },
			UserControls = ordered() {
				
				-- ===== CONTROLS =====
				WidthPx = {
					LINKS_Name = "Width (px)",
					INPID_InputControl = "SliderControl",
					LINKID_DataType = "Number",
					INP_MaxScale = 2000,
					INP_MinScale = 0,
					INP_Default = 100,
					IC_Steps = 1,
					INP_Integer = true,
					INP_MaxAllowed = 1000000,
					INP_MinAllowed = 0,
					INP_SplineType = "Default",
					ICS_ControlPage = "Controls",
				},
				HeightPx = {
					LINKS_Name = "Height (px)",
					INPID_InputControl = "SliderControl",
					LINKID_DataType = "Number",
					INP_MaxScale = 2000,
					INP_MinScale = 0,
					INP_Default = 100,
					IC_Steps = 1,
					INP_Integer = true,
					INP_MaxAllowed = 1000000,
					INP_MinAllowed = 0,
					INP_SplineType = "Default",
					ICS_ControlPage = "Controls",
				},
				AnchorPoint = {
					INPID_InputControl = "OffsetControl",
					LINKID_DataType = "Point",
					LINKS_Name = "Anchor Point",
					INP_DefaultX = 0,
					INP_DefaultY = 0,
					ICS_ControlPage = "Controls",
				},
				
				Info_2 = {
					LINKS_Name = "[0,0] is bottom left, [1,1] is top right",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_Passive = true,
					INP_External = false,
					ICS_ControlPage = "Controls",
				},

				PositionInput = {
					INPID_InputControl = "OffsetControl",
					LINKID_DataType = "Point",
					LINKS_Name = "Position (abs)",
					INP_DefaultX = 0.5,
					INP_DefaultY = 0.5,
					ICS_ControlPage = "Controls",
				},

				RadiusPx = {
					LINKS_Name = "Radius (px)",
					INPID_InputControl = "SliderControl",
					LINKID_DataType = "Number",
					INP_MaxScale = 100,
					INP_MinScale = 0,
					INP_Default = 0,
					IC_Steps = 1,
					INP_Integer = true,
					INP_MaxAllowed = 1000000,
					INP_MinAllowed = 0,
					INP_SplineType = "Default",
					ICS_ControlPage = "Controls"
				},
				BorderWidthPx = {
					-- 0.2 absolu c’est toujours vis a vis de la width,
					LINKS_Name = "Border Width (px)",
					INPID_InputControl = "SliderControl",
					LINKID_DataType = "Number",
					INP_MaxScale = 100,
					INP_MinScale = 0,
					INP_Default = 0,
					IC_Steps = 1,
					INP_Integer = true,
					INP_MaxAllowed = 1000000,
					INP_MinAllowed = 0,
					INP_SplineType = "Default",
					ICS_ControlPage = "Controls"
				},
				BorderPositionInput = {
					LINKS_Name = "Border Position",
					LINKID_DataType = "Number",
					INPID_InputControl = "MultiButtonControl",
					INP_Default = 1,
					INP_Integer = true,
					INP_MinScale = 0,
					INP_MaxScale = 100,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					{ MBTNC_AddButton = "Outside" },
					{ MBTNC_AddButton = "Center" },
					{ MBTNC_AddButton = "Inside" },
					MBTNC_ShowBasicButton = true,
					MBTNC_ShowToolTip = false,
					MBTNC_ShowName = false,
					MBTNC_StretchToFit = false,
					INP_External = false,
					ICS_ControlPage = "Controls"
				},

				Empty_title = {
					LINKS_Name = "",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Controls",
				},
				title = {
					LINKS_Name = "Output Size",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Controls",
				},
				UseFrameFormatSettings  = {
					LINKS_Name = "Auto Resolution",
					ICS_ControlPage = "Controls",
				},
				MaskWidth  = {
					ICS_ControlPage = "Controls",
				},
				MaskHeight  = {
					ICS_ControlPage = "Controls",
				},
				InfoTitle = {
					LINKS_Name = "/!\\ IMAGE SIZE is set in CONTROLS TAB /!\\",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Image",
				},
				

                
				-- =====================
				-- =====================
				Empty_0 = {
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
				-- Invert = { ICS_ControlPage = "Controls" },
				-- Solid = { ICS_ControlPage = "Controls" },
				-- JoinStyle = { ICS_ControlPage = "Controls" },
				-- CapStyle = { ICS_ControlPage = "Controls" },

				-- ================
				-- ===== DATA =====
				-- ================
				Center = { ICS_ControlPage = "Data" },

				-- ===========
				-- == OLD ==
				-- ===========
				OldControlNest = { LINKS_Name = "Old Control", INPID_InputControl = "LabelControl", LBLC_DropDownButton = true, LBLC_NumInputs = 9, LBLC_NestLevel = 1, LBLCID_HideUpToID = "Direction", ICS_ControlPage = "Data", INP_External = false, INP_Passive = true, },
				ShowViewControls = { ICS_ControlPage = "Data" },
				Level = { ICS_ControlPage = "Data" },
				Filter = { ICS_ControlPage = "Data" },
				SoftEdge = { ICS_ControlPage = "Data" },
				BorderWidth = { ICS_ControlPage = "Data" },
				-- WritePosition = { ICS_ControlPage = "Data" },
				-- WriteLength = { ICS_ControlPage = "Data" },
				Width = { ICS_ControlPage = "Data" },
				Height = { ICS_ControlPage = "Data" },
				Angle = { ICS_ControlPage = "Data" },
				CornerRadius = { ICS_ControlPage = "Data" },
				BorderWidth = { ICS_ControlPage = "Data" },

				WidthAbsolute = {
					LINKS_Name = "Width (Absolute)",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 0,
					INP_Integer = false,
					INP_MinScale = 0,
					INP_MaxScale = 1,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Data", -- 'Common' c'est les settings
				},
				HeightAbsolute = {
					LINKS_Name = "Height (Absolute)",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 0,
					INP_Integer = false,
					INP_MinScale = 0,
					INP_MaxScale = 1,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Data",
				},
				BorderWidthAbsolute = {
					LINKS_Name = "Border Width (Absolute)",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 0,
					INP_Integer = false,
					INP_MinScale = 0,
					INP_MaxScale = 1,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Data",
				},
				BorderHeightAbsolute = {
					LINKS_Name = "Border Height (Absolute)",
					LINKID_DataType = "Number",
					INPID_InputControl = "SliderControl",
					INP_Default = 0,
					INP_Integer = false,
					INP_MinScale = 0,
					INP_MaxScale = 1,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					ICS_ControlPage = "Data",
				},
			}
		}
	},
	ActiveTool = "tRectangle"
}