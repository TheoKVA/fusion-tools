{
	Tools = ordered() {
		tSize = Merge {
			CtrlWZoom = false,
			NameSet = true,
			Inputs = {
				PerformDepthMerge = Input { Value = 0, },
			},
			ViewInfo = OperatorInfo { Pos = { 1024.75, 322.933 } },
			UserControls = ordered() {
				Info2 = {
					LINKID_DataType = "Number",
					LINKS_Name = "Always from the center.",
					LBLC_DropDownButton = false,
					INPID_InputControl = "LabelControl",
					INP_External = false,
					INP_Passive = true,
					ICS_ControlPage = "Merge",
				},
				Size = { ICS_ControlPage = "Merge" },

				-- ===========
				-- == EMPTY ==
				-- ===========
				ApplyBlank1 = { ICS_ControlPage = "Merge" },
				OldControlNest = { LINKS_Name = "Old Control", INPID_InputControl = "LabelControl", LBLC_DropDownButton = true, LBLC_NumInputs = 22, LBLC_NestLevel = 1, LBLCID_HideUpToID = "Direction", ICS_ControlPage = "Merge", INP_External = false, INP_Passive = true, },
				Center = { ICS_ControlPage = "Merge" },
				Angle = { ICS_ControlPage = "Merge" },
				FlipHoriz = { ICS_ControlPage = "Merge" },
				FlipVert = { ICS_ControlPage = "Merge" },
				ApplyMode = { ICS_ControlPage = "Merge" },
				Operator = { ICS_ControlPage = "Merge" },
				SubtractiveAdditive = { ICS_ControlPage = "Merge" },
				Gain = { ICS_ControlPage = "Merge" },
				BurnIn = { ICS_ControlPage = "Merge" },
				BlendClone = { ICS_ControlPage = "Merge" },
				ClampCoverage = { ICS_ControlPage = "Merge" },
				Edges = { ICS_ControlPage = "Merge" },
				FilterMethod = { ICS_ControlPage = "Merge" },
				InvertTransform = { ICS_ControlPage = "Merge" },
				FlattenTransform = { ICS_ControlPage = "Merge" },
				Width = { ICS_ControlPage = "Merge" },
				Height = { ICS_ControlPage = "Merge" },
				UseFrameFormatSettings = { ICS_ControlPage = "Merge" },
				CommentsNest = { ICS_ControlPage = "Merge" },
				ReferenceSize = { ICS_ControlPage = "Merge" },
				Merge = { ICS_ControlPage = "Merge" },
			}
		}
	}
}