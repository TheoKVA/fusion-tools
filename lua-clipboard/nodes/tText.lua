{
	Tools = ordered() {
		tText = TextPlus {
			CtrlWZoom = false,
			Inputs = {
				GlobalOut = Input { Value = 199, },
				Width = Input { Value = 1920, },
				Height = Input { Value = 1080, },
				UseFrameFormatSettings = Input { Value = 0, },
				["Gamut.SLogVersion"] = Input { Value = FuID { "SLog2" }, },
				Wrap = Input { Value = 1, },
				LayoutRotation = Input { Value = 1, },
				TransformRotation = Input { Value = 1, },
				Softness1 = Input { Value = 1, },
				StyledText = Input { Value = "Lorem ipsum", },
				Font = Input { Value = "RTS Neue", },
				Style = Input { Value = "Regular", },
				VerticalJustificationNew = Input { Value = 3, },
				HorizontalJustificationNew = Input { Value = 3, },
				VerticalTopCenterBottom = Input { Value = 1, },
				HorizontalLeftCenterRight = Input { Value = -1, },
			},
			ViewInfo = OperatorInfo { Pos = { 651.88, -192.706 } },
			UserControls = ordered() {
				TextDataNest = {
					LINKS_Name = "Other Controls",
					LINKID_DataType = "Number",
					INPID_InputControl = "LabelControl",
					LBLC_DropDownButton = true,
					LBLC_NumInputs = 6,
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
				Direction = { ICS_ControlPage = "Text" },
				LineDirection = { ICS_ControlPage = "Text" },
				
				title = {
					LINKS_Name = "Output Size",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Text",
				},
				UseFrameFormatSettings  = {
					LINKS_Name = "Auto Resolution",
					ICS_ControlPage = "Text",
				},
				Width  = {
					ICS_ControlPage = "Text",
				},
				Height  = {
					ICS_ControlPage = "Text",
				},
				InfoTitle = {
					LINKS_Name = "/!\\ IMAGE SIZE is set in TEXT TAB /!\\",
					LINKID_DataType = "Number",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Image",
				},

				Empty_1 = { LINKS_Name = "", LINKID_DataType = "Number", LBLC_DropDownButton = false, INPID_InputControl = "LabelControl", INP_Passive = true, INP_External = false, ICS_ControlPage = "Text",},
				Update = {
					LINKS_Name = "Update Size from TextCalculator",
					LINKID_DataType = "Number",
					INPID_InputControl = "ButtonControl",
					INP_Default = 1,
					INP_Integer = false,
					INP_MinScale = 0,
					INP_MaxScale = 1,
					INP_MinAllowed = -1000000,
					INP_MaxAllowed = 1000000,
					INP_SplineType = "Default",
					BTNCS_Execute = [=[
						print('\n' .. '--- Updating Text+ from tTextCalculator ---')

						-- Check if the node tTextCalculator exists, if not exit
						local tTextCalculator = comp:FindTool("tTextCalculator")
						if not tTextCalculator then
							print('no tTextCalculator found')
							return
						end
						
						local Width = tTextCalculator:GetInput("Width")
						if Width then
							print("new Width = ", tTextCalculator:GetInput("Width"))
							tool:SetInput("Width", Width)
						end
						local Height = tTextCalculator:GetInput("Height")
						if Height then
							print("new Height = ", tTextCalculator:GetInput("Height"))
							tool:SetInput("Height", Height)
						end
						local UseFrameFormatSettings = tTextCalculator:GetInput("UseFrameFormatSettings")
						if UseFrameFormatSettings then
							print("new UseFrameFormatSettings = ", tTextCalculator:GetInput("UseFrameFormatSettings"))
							tool:SetInput("UseFrameFormatSettings", UseFrameFormatSettings)
						end

						local Font = tTextCalculator:GetInput("Font")
						if Font then
							print("new Font = ", tTextCalculator:GetInput("Font"))
							tool:SetInput("Font", Font)
						end
						local Style = tTextCalculator:GetInput("Style")
						if Style then
							print("new Style = ", tTextCalculator:GetInput("Style"))
							tool:SetInput("Style", Style)
						end

						local Size = tTextCalculator:GetInput("Size")
						if Size then
							print("new Size = ", tTextCalculator:GetInput("Size"))
							tool:SetInput("Size", Size)
						end

						local CharacterSpacingClone = tTextCalculator:GetInput("CharacterSpacingClone")
						if CharacterSpacingClone then
							print("new Tracking = ", tTextCalculator:GetInput("CharacterSpacingClone"))
							tool:SetInput("CharacterSpacingClone", CharacterSpacingClone)
						end

						local LineSpacingClone = tTextCalculator:GetInput("LineSpacingClone")
						if LineSpacingClone then
							print("new Line Spacing = ", tTextCalculator:GetInput("LineSpacingClone"))
							tool:SetInput("LineSpacingClone", LineSpacingClone)
						end

						local offset = tTextCalculator:GetInput("CharacterOffset")
						if offset then
							print("new Offset X = ", offset[1] or offset.X)
							print("new Offset Y = ", offset[2] or offset.Y)
    						tool:SetInput("CharacterOffset", offset)
						end
					]=],
					ICS_ControlPage = "Text",
					INP_External = false
				}
			}
		}
	}
}