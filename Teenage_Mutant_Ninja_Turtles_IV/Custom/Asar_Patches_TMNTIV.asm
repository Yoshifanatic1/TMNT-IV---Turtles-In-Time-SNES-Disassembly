
; Note: Put your custom routine/data macros, references to them, and defines in this file from within the TMNTIV_InsertIntegratedPatches and TMNTIV_ApplyPatchesPostAssembly macros below.
; By doing this:
; 1). All the changes you make for your hack will all be in one place
; 2). It will be easier to revert things if needed.
; 3). Porting things over to a newer version of the source code will be easier.
; Note that if you plan on using asar patches, you'll need to make a few changes to them so they will work optimially. I'll list them out once I know what needs to be done.

;---------------------------------------------------------------------------

macro TMNTIV_InsertIntegratedPatches()
; Insert your patch references here that will be assembled during ROM assembly
; Use this macro for patches that you have integrated into this disassembly
; Anything in this macro will only be applied if !Define_Global_ApplyAsarPatches is set to !TRUE.


endmacro

;---------------------------------------------------------------------------

macro TMNTIV_ApplyPatchesPostAssembly()
; Insert your patch references here that will be assembled after the ROM has been assembled.
; Use this macro for patches that don't work correctly while the ROM is assembling, like ones that use the readX commands or haven't been integrated into this disassembly.
; Anything in this macro will only be applied if !Define_Global_ApplyAsarPatches is set to !TRUE.


endmacro

;---------------------------------------------------------------------------

macro TMNTIV_HandleDefaultPatches()
; This macro is for handling certain things that can't be done during main assembly, like calculating checksums for copy detection routines.
; Anything in this macro will only be applied if !Define_Global_ApplyDefaultPatches is set to !TRUE.
; Do not use this for custom stuff!

endmacro

;---------------------------------------------------------------------------
