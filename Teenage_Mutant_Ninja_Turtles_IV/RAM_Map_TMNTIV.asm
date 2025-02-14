
!RAM_TMNTIV_Global_HeldButtonsP1 = $000020
!RAM_TMNTIV_Global_HeldButtonsP2 = $000022
!RAM_TMNTIV_Global_HeldButtonsP3 = $000024
!RAM_TMNTIV_Global_HeldButtons = $000026
!RAM_TMNTIV_Global_PressedButtonsP1 = $000028
!RAM_TMNTIV_Global_PressedButtonsP2 = $00002A
!RAM_TMNTIV_Global_PressedButtonsP3 = $00002C
!RAM_TMNTIV_Global_PressedButtons = $00002E

!RAM_TMNTIV_Global_VRAMDMAUploadTableIndex = $000048

!RAM_TMNTIV_Level_PauseFlag = $00006A

!RAM_TMNTIV_Level_CurrentProcessedPlayerHeldButtons = $00009A
!RAM_TMNTIV_Level_CurrentProcessedPlayerPressedButtons = $00009C

!RAM_TMNTIV_Global_OAMBuffer = $0001E0

!RAM_TMNTIV_Global_Layer1XPos = $0017A0
!RAM_TMNTIV_Global_Layer1YPos = $0017B0
!RAM_TMNTIV_Global_Layer2XPos = $0017C0
!RAM_TMNTIV_Global_Layer2YPos = $0017D0
!RAM_TMNTIV_Global_Layer3XPos = $0017E0
!RAM_TMNTIV_Global_Layer3YPos = $0017F0

!RAM_TMNTIV_Cutscene_PressedButtons = $001902

!RAM_TMNTIV_Level_LockCameraScrollFlag = $0019D0

!RAM_TMNTIV_TurtleSelect_P1Selection = $001A9A
!RAM_TMNTIV_Level_P1Lives = $001AA0
!RAM_TMNTIV_TurtleSelect_P2Selection = $001ADA

!RAM_TMNTIV_Global_HDMASetupTable = $001E38

!RAM_TMNTIV_Global_ScreenDisplayRegister = $001E78
!RAM_TMNTIV_Global_IRQNMIAndJoypadEnableFlags = $001E7A
!RAM_TMNTIV_Global_BGModeAndTileSizeSetting = $001E7C
!RAM_TMNTIV_Global_OAMSizeAndDataAreaDesignation = $001E7E

!RAM_TMNTIV_Global_MosaicSizeAndBGEnable = $001E82
!RAM_TMNTIV_Global_BG1AddressAndSize = $001E84
!RAM_TMNTIV_Global_BG2AddressAndSize = $001E86
!RAM_TMNTIV_Global_BG3AddressAndSize = $001E88
!RAM_TMNTIV_Global_BG4AddressAndSize = $001E8A

!RAM_TMNTIV_Global_MainScreenLayers = $001E96
!RAM_TMNTIV_Global_SubScreenLayers = $001E98
!RAM_TMNTIV_Global_MainScreenWindowMask = $001E9A
!RAM_TMNTIV_Global_SubScreenWindowMask = $001E9C
!RAM_TMNTIV_Global_Mode7TilemapSettings = $001E9E
!RAM_TMNTIV_Global_Mode7MatrixParameterA = $001EA0
!RAM_TMNTIV_Global_Mode7MatrixParameterB = $001EA2
!RAM_TMNTIV_Global_Mode7MatrixParameterC = $001EA4
!RAM_TMNTIV_Global_Mode7MatrixParameterD = $001EA6
!RAM_TMNTIV_Global_Mode7CenterX = $001EA8
!RAM_TMNTIV_Global_Mode7CenterY = $001EAA

!RAM_TMNTIV_Global_ColorMathInitialSettings = $001EB4
!RAM_TMNTIV_Global_ColorMathSelectAndEnable = $001EB6
!RAM_TMNTIV_Global_FixedColorData = $001EB8
!RAM_TMNTIV_Global_FixedColorData_RedChannel = $001EBA
!RAM_TMNTIV_Global_FixedColorData_GreenChannel = $001EBC
!RAM_TMNTIV_Global_FixedColorData_BlueChannel = $001EBE

!RAM_TMNTIV_Global_HDMAEnable = $001ECA

!RAM_TMNTIV_Global_BG1And2TileDataDesignation = $001ECE
!RAM_TMNTIV_Global_BG3And4TileDataDesignation = $001ED0

!RAM_TMNTIV_Global_InitialScreenSettings = $001ED4

!RAM_TMNTIV_Global_PlayerDashSetting = $001FE8
!RAM_TMNTIV_Global_BackAttackSetting = $001FEA
!RAM_TMNTIV_Global_RestSetting = $001FEC
!RAM_TMNTIV_Global_ContinueSetting = $001FEE			; Note: Unused?
!RAM_TMNTIV_Global_ColorModeSetting = $001FF0
!RAM_TMNTIV_Global_DifficultySetting = $001FF2
!RAM_TMNTIV_Global_ControlTypeSetting = $001FF4
!RAM_TMNTIV_Global_SoundModeSetting = $001FF6

!RAM_TMNTIV_Global_VRAMDMAUploadTable = $7E3600

struct TMNTIV_Global_OAMBuffer !RAM_TMNTIV_Global_OAMBuffer
	.XDisp: skip $01
	.YDisp: skip $01
	.Tile: skip $01
	.Prop: skip $01
endstruct align $04

struct TMNTIV_Global_UpperOAMBuffer !RAM_TMNTIV_Global_OAMBuffer+$0200
	.Slot: skip $01
endstruct align $01

struct TMNTIV_Global_VRAMDMAUploadTable !RAM_TMNTIV_Global_VRAMDMAUploadTable&$FF0000
	.VRAMAddressIncrementValue: skip $02
	.DMAParameters: skip $02
	.VRAMAddress: skip $02
	.SourceLo: skip $02
	.SourceBank: skip $01
	.SizeLo: skip $02
endstruct align $0B
