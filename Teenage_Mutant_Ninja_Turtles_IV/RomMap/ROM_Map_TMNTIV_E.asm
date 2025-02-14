
macro TMNTIV_GameSpecificAssemblySettings()
	!ROM_TMNTIV_U = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_TMNTIV_E = $0002							;|
	!ROM_TMNTIV_J = $0004							;|
	!ROM_TMNTIV_A = $0008							;/

	%SetROMToAssembleForHack(TMNTIV_E, !ROMID)
endmacro

macro TMNTIV_LoadGameSpecificMainSNESFiles()
	incsrc ../SPC700/ARAMPtrs_TMNTIV.asm
	incsrc ../Misc_Defines_TMNTIV.asm
	incsrc ../RAM_Map_TMNTIV.asm
	incsrc ../Routine_Macros_TMNTIV.asm
	incsrc ../SNES_Macros_TMNTIV.asm
	%LoadExtraRAMFile("SRAM_Map_TMNTIV.asm", !GameID, TMNTIV)
endmacro

macro TMNTIV_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_TMNTIV.asm
	incsrc ../Misc_Defines_TMNTIV.asm
	incsrc ../SPC700/SPC700_Routine_Macros_TMNTIV.asm
	incsrc ../SPC700/SPC700_Macros_TMNTIV.asm
endmacro

macro TMNTIV_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro TMNTIV_LoadGameSpecificMSU1Files()
endmacro

macro TMNTIV_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_ApplyDefaultPatches = !TRUE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $00
	!Define_Global_FixIncorrectChecksumHack = !FALSE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 4
	!Define_Global_ROMFrameworkSubSubVer = 0
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Konami"
	!Define_Global_DeveloperName = "Konami"
	!Define_Global_ReleaseDate = "November 19, 1992"
	!Define_Global_BaseROMMD5Hash = "d61a2b7f57a1c944d5b6b7deebf90131"

	!Define_Global_MakerCode = "00"
	!Define_Global_GameCode = "xxxx"
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "T.M.H.T.4            "
	!Define_Global_ROMLayout = !ROMLayout_LoROM
	!Define_Global_ROMType = !ROMType_ROM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize1 = !ROMSize_1MB
	!Define_Global_ROMSize2 = !ROMSize_0KB
	!Define_Global_SRAMSize = !SRAMSize_0KB
	!Define_Global_Region = !Region_Europe
	!Define_Global_LicenseeID = $A4
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $47C0
	!UnusedNativeModeVector1 = $FFFF
	!UnusedNativeModeVector2 = $FFFF
	!NativeModeCOPVector = CODE_008206
	!NativeModeBRKVector = CODE_008206
	!NativeModeAbortVector = CODE_008206
	!NativeModeNMIVector = CODE_008174
	!NativeModeResetVector = CODE_008000
	!NativeModeIRQVector = CODE_008206
	!UnusedEmulationModeVector1 = $FFFF
	!UnusedEmulationModeVector2 = $FFFF
	!EmulationModeCOPVector = CODE_008206
	!EmulationModeBRKVector = CODE_008206
	!EmulationModeAbortVector = CODE_008206
	!EmulationModeNMIVector = CODE_008174
	!EmulationModeResetVector = CODE_008000
	!EmulationModeIRQVector = CODE_008206
endmacro

macro TMNTIV_LoadROMMap()
	%TMNTIVBank00Macros(!BANK_00, !BANK_00)
	%TMNTIVBank01Macros(!BANK_01, !BANK_01)
	%TMNTIVBank02Macros(!BANK_02, !BANK_02)
	%TMNTIVBank03Macros(!BANK_03, !BANK_03)
	%TMNTIVBank04Macros(!BANK_04, !BANK_04)
	%TMNTIVBank05Macros(!BANK_05, !BANK_05)
	%TMNTIVBank06Macros(!BANK_06, !BANK_06)
	%TMNTIVBank07Macros(!BANK_07, !BANK_07)
	%TMNTIVBank08Macros(!BANK_08, !BANK_08)
	%TMNTIVBank09Macros(!BANK_09, !BANK_09)
	%TMNTIVBank0AMacros(!BANK_0A, !BANK_0A)
	%TMNTIVBank0BMacros(!BANK_0B, !BANK_0B)
	%TMNTIVBank0CMacros(!BANK_0C, !BANK_0C)
	%TMNTIVBank0DMacros(!BANK_0D, !BANK_0D)
	%TMNTIVBank0EMacros(!BANK_0E, !BANK_0E)
	%TMNTIVBank0FMacros(!BANK_0F, !BANK_0F)
	%TMNTIVBank10Macros(!BANK_10, !BANK_10)
	%TMNTIVBank11Macros(!BANK_11, !BANK_11)
	%TMNTIVBank12Macros(!BANK_12, !BANK_12)
	%TMNTIVBank13Macros(!BANK_13, !BANK_13)
	%TMNTIVBank14Macros(!BANK_14, !BANK_14)
	%TMNTIVBank15Macros(!BANK_15, !BANK_15)
	%TMNTIVBank16Macros(!BANK_16, !BANK_16)
	%TMNTIVBank17Macros(!BANK_17, !BANK_17)
	%TMNTIVBank18Macros(!BANK_18, !BANK_18)
	%TMNTIVBank19Macros(!BANK_19, !BANK_19)
	%TMNTIVBank1AMacros(!BANK_1A, !BANK_1A)
	%TMNTIVBank1BMacros(!BANK_1B, !BANK_1B)
	%TMNTIVBank1CMacros(!BANK_1C, !BANK_1C)
	%TMNTIVBank1DMacros(!BANK_1D, !BANK_1D)
	%TMNTIVBank1EMacros(!BANK_1E, !BANK_1E)
	%TMNTIVBank1FMacros(!BANK_1F, !BANK_1F)
endmacro

;#############################################################################################################
;#############################################################################################################

macro TMNTIV_LoadSPC700ROMMap()

endmacro

;#############################################################################################################
;#############################################################################################################

macro TMNTIV_LoadSuperFXROMMap()
endmacro

;#############################################################################################################
;#############################################################################################################

macro TMNTIV_LoadMSU1ROMMap()
endmacro

;#############################################################################################################
;#############################################################################################################
