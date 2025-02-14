
; Note: If you edit this, you need to compress the resulting "SPC700DataBlocks_TMNTIV.bin" to overwrite "SPC700_Engine_TMNTIV.bin"
; Use this tool to do so: https://www.romhacking.net/utilities/1102/

;#############################################################################################################
;#############################################################################################################

macro SPC700_TMNTIV_SPC700_Engine(Base)
%InsertMacroAtXPosition(<Base>)
namespace TMNTIV_SPC700_Engine

CODE_0400:
	CLRP
	MOV.b X, #$CF
	MOV SP, X
	MOV.b A, #$00
	MOV X, A
CODE_0407:
	MOV (X+), A
	CMP.b X, #$E0
	BNE.b CODE_0407
	MOV.b Y, #$02
	MOVW.b $14, YA
	MOV Y, A
CODE_0411:
	MOV.b ($14)+y, A
	INC Y
	BNE.b CODE_0411
	INC.b $15
	MOV.b X, $15
	CMP.b X, #$04
	BNE.b CODE_0411
	SET5.b $48
	MOV.b A, $48
	MOV.b Y, #!REGISTER_DSP_DSPStatusFlags
	CALL.w CODE_074F
	MOV.b A, #$00
	MOV.b Y, #!REGISTER_DSP_EchoBufferStartOffset
	CALL.w CODE_074F
	MOV.b Y, #!REGISTER_DSP_EchoDelay
	CALL.w CODE_074F
	MOV.b Y, #!REGISTER_DSP_EchoEnable
	CALL.w CODE_074F
	MOV.b Y, #!REGISTER_DSP_EchoFeedback
	CALL.w CODE_074F
	MOV.b Y, #!REGISTER_DSP_EchoLeftVolume
	CALL.w CODE_074F
	MOV.b Y, #!REGISTER_DSP_EchoRightVolume
	CALL.w CODE_074F
	MOV.b Y, #!REGISTER_DSP_ChannelXRightVolume|!DSPChannel8
CODE_0449:
	MOV.b A, #$00
	CALL.w CODE_074F
	DEC Y
	CALL.w CODE_074F
	MOV A, Y
	SETC
	SBC.b A, #$0F
	MOV Y, A
	BPL.b CODE_0449
	MOV.b A, #$FF
	MOV.b $46, A
	MOV.b Y, #!REGISTER_DSP_KeyOffBits
	CALL.w CODE_074F
	MOV.b A, #$7F
	MOV.b Y, #!REGISTER_DSP_MainLeftVolume
	CALL.w CODE_074F
	MOV.b Y, #!REGISTER_DSP_MainRightVolume
	CALL.w CODE_074F
	MOV.b A, #$FE
	MOV.b Y, #!REGISTER_DSP_SourceDirectoryOffset
	CALL.w CODE_074F
	MOV.b A, #$21
	MOV.b !REGISTER_SPC700_ControlRegister, A
	MOV.b A, #$00
	MOV.b $06, A
	MOV.b A, #$F0
	MOV.b !REGISTER_SPC700_ControlRegister, A
	MOV.b A, #$20
	MOV.b !REGISTER_SPC700_Timer0, A
	MOV.b A, #$01
	MOV.b !REGISTER_SPC700_ControlRegister, A
CODE_0489:
	CALL.w CODE_052B
	MOV.b $45, Y
	MOV.b $46, Y
	MOV.b $1B, Y
CODE_0492:
	MOV.b Y, !REGISTER_SPC700_Counter0
	BNE.b CODE_049B
	CALL.w CODE_054C
	BRA.b CODE_0492

CODE_049B:
	MOV.b $43, Y
	MOV.b !REGISTER_SPC700_APUPort1, Y
	CALL.w CODE_078E
	BEQ.b CODE_04B0
	TSET.w $0046, A
	TCLR.w $001D, A
	TSET.w $001B, A
	TCLR.w $001F, A
CODE_04B0:
	MOV.b A, $1A
	BEQ.b CODE_04BE
	MOV.b $4B, #$00
	MOV.b X, #$0C
	MOV.b $47, #$40
	BRA.b CODE_04FB

CODE_04BE:
	MOV.b $47, #$01
	MOV.b A, $0B
	BEQ.b CODE_04F5
	MOV.b A, $1C
	BEQ.b CODE_04CD
	MOV.b X, #$FF
	BRA.b CODE_04CF

CODE_04CD:
	MOV.b X, #$3F
CODE_04CF:
	INC.b $0C
	MOV.b A, $0C
	CMP.b A, #$02
	BNE.b CODE_04F7
	MOV.b $0C, #$00
	INC.b $0D
	MOV.b A, $0D
	BNE.b CODE_04F7
	MOV.b A, $1C
	BEQ.b CODE_04E9
	CALL.w CODE_07FE
	BRA.b CODE_04EC

CODE_04E9:
	CALL.w CODE_07F8
CODE_04EC:
	CALL.w CODE_0784
	MOV.b A, #$00
	MOV.b $0B, A
	MOV.b $0D, A
CODE_04F5:
	MOV.b X, #$00
CODE_04F7:
	MOV.b $4B, X
	MOV.b X, #$00
CODE_04FB:
	MOV.w A, $02E1+x
	BEQ.b CODE_0522
	MOV.b A, $47
	AND.b A, $1B
	BNE.b CODE_0522
	MOV.b $44, X
	MOV.b Y, $43
	MOV.b A, $D1+x
	MUL YA
	CLRC
	ADC.b A, $D0+x
	MOV.b $D0+x, A
	MOV A, Y
	BNE.b CODE_0517
	BCC.b CODE_051F
CODE_0517:
	CALL.w CODE_09A0
	CALL.w CODE_0D47
	BRA.b CODE_0522

CODE_051F:
	CALL.w CODE_0FC9
CODE_0522:
	INC X
	INC X
	ASL.b $47
	BNE.b CODE_04FB
	JMP.w CODE_0489

CODE_052B:
	MOV.b Y, #$06
CODE_052D:
	MOV.w A, DATA_1082-$01+y
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, A
	MOV.w A, DATA_1088-$01+y
	MOV X, A
	MOV A, (X)
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	DBNZ.b Y, CODE_052D
	RET

CODE_053C:
	CMP.b X, $06
	BEQ.b CODE_0549
	CMP.b X, #$A5
	BEQ.b CODE_057B
	MOV.b $06, X
	MOV.b $07, #$80
CODE_0549:
	MOV.b !REGISTER_SPC700_APUPort3, X
	RET

CODE_054C:
	MOV.b X, !REGISTER_SPC700_APUPort3
	CMP.b X, !REGISTER_SPC700_APUPort3
	BNE.b CODE_054C
	CMP.b X, $07
	BNE.b CODE_053C
	MOV.b A, !REGISTER_SPC700_APUPort2
	MOV.b !REGISTER_SPC700_APUPort3, X
	MOV.b $06, X
	CMP.b X, #$80
	BCS.b CODE_056D
	MOV.b Y, #$00
	MOV.b ($04)+y, A
	MOV A, X
	INC A
	AND.b A, #$7F
	MOV.b $07, A
	INCW.b $04
	RET

CODE_056D:
	BNE.b CODE_0574
	MOV.b $04, A
	INC X
	BRA.b CODE_0578

CODE_0574:
	MOV.b $05, A
	MOV.b X, #$00
CODE_0578:
	MOV.b $07, X
	RET

CODE_057B:
	PUSH X
	CALL.w CODE_07FE
	CALL.w CODE_0784
	CALL.w CODE_052B
	POP X
	MOV.b !REGISTER_SPC700_APUPort3, X
	MOV.b Y, #$BB
	MOV.b X, #$80
CODE_058C:
	CMP.b Y, !REGISTER_SPC700_APUPort3
	BEQ.b CODE_05C5
	CMP.b X, !REGISTER_SPC700_APUPort3
	BNE.b CODE_058C
	MOV.b A, !REGISTER_SPC700_APUPort2
	MOV.b !REGISTER_SPC700_APUPort3, X
	MOV.b X, #$81
CODE_059A:
	CMP.b Y, !REGISTER_SPC700_APUPort3
	BEQ.b CODE_05C5
	CMP.b X, !REGISTER_SPC700_APUPort3
	BNE.b CODE_059A
	MOV.b Y, !REGISTER_SPC700_APUPort2
	MOV.b !REGISTER_SPC700_APUPort3, X
	MOVW.b $04, YA
	MOV.b Y, #$00
CODE_05AA:
	MOV A, Y
	AND.b A, #$7F
CODE_05AD:
	MOV.b X, #$BB
	CMP.b X, !REGISTER_SPC700_APUPort3
	BEQ.b CODE_05C8
	CMP.b A, !REGISTER_SPC700_APUPort3
	BNE.b CODE_05AD
	MOV X, A
	MOV.b A, !REGISTER_SPC700_APUPort2
	MOV.b !REGISTER_SPC700_APUPort3, X
	MOV.b ($04)+y, A
	INC Y
	BNE.b CODE_05AA
	INC.b $05
	BRA.b CODE_05AA

CODE_05C5:
	MOV.b !REGISTER_SPC700_APUPort3, Y
	RET

CODE_05C8:
	MOV.b !REGISTER_SPC700_APUPort3, X
	RET

DATA_05CB:
	db $0A,$00,$9F
	db $0C,$05,$AE
	db $07,$00,$A1
	db $09,$00,$A4
	db $0D,$00,$A8
	db $0A,$00,$AF
	db $0C,$10,$B2
	db $0A,$00,$A4
	db $0A,$00,$A4
	db $0A,$00,$A4
	db $0A,$00,$A4
	db $0A,$00,$A4
	db $0A,$00,$A4
	db $0A,$00,$A4
	db $0A,$00,$A4
	db $0A,$00,$A4
	db $0A,$00,$A4
	db $0A,$00,$A4

CODE_0601:
	CMP.b Y, #$CA
	BCC.b CODE_0634
	CALL.w CODE_0A74
	MOV.w A, $0211+x
	SETC
	SBC.b A, #$CA
	MOV.b $1E, A
	ASL A
	ADC.b A, $1E
	MOV Y, A
	MOV.b A, $4C
	AND.b A, $47
	BEQ.b CODE_0628
	MOV.w A, DATA_05CB+y
	MOV.w $0331+x, A
	MOV.w $0351+x, A
	MOV.b A, #$00
	MOV.w $0330+x, A
CODE_0628:
	MOV.w A, DATA_05CB+$01+y
	MOV.w $02F1+x, A
	MOV.w A, DATA_05CB+$02+y
	MOV Y, A
	BRA.b CODE_0664

CODE_0634:
	MOV.b A, #$00
	MOV.w $02F1+x, A
	CMP.b Y, #$C8
	BCC.b CODE_063E
CODE_063D:
	RET

CODE_063E:
	MOV.b A, $49
	AND.b A, $47
	BEQ.b CODE_0664
	AND.b $48, #$E0
	MOV A, Y
	AND.b A, #$1F
	OR.b A, $48
	MOV.b $48, A
	OR.b $4B, $47
	MOV.b A, $47
	AND.b A, $1F
	BNE.b CODE_063D
	MOV.b A, #$00
	MOV.w $02D0+x, A
	OR.b $45, $47
	OR.b $1D, $47
	BRA.b CODE_063D

CODE_0664:
	MOV A, Y
	AND.b A, #$7F
	CLRC
	ADC.w A, $02F0+x
	CLRC
	ADC.w A, $0390+x
	MOV.w $0361+x, A
	MOV.w A, $0381+x
	CLRC
	ADC.w A, $0391+x
	MOV.w $0360+x, A
	BCC.b CODE_0685
	MOV.w A, $0361+x
	INC A
	MOV.w $0361+x, A
CODE_0685:
	MOV.w A, $0360+x
	CLRC
	ADC.w A, $0250+x
	MOV.w $0360+x, A
	MOV.w A, $0361+x
	ADC.w A, $0251+x
	MOV.w $0361+x, A
	OR.b $4B, $47
	MOV.b A, $47
	AND.b A, $1F
	BNE.b CODE_06BD
	MOV.w A, $02B1+x
	LSR A
	MOV.b A, #$00
	ROR A
	MOV.w $02A0+x, A
	MOV.b A, #$00
	MOV.b $B0+x, A
	MOV.w $0100+x, A
	MOV.w $02D0+x, A
	MOV.b $C0+x, A
	OR.b $45, $47
	OR.b $1D, $47
CODE_06BD:
	MOV.w A, $0280+x
	MOV.b $A0+x, A
	BEQ.b CODE_06E2
	MOV.w A, $0281+x
	MOV.b $A1+x, A
	MOV.w A, $0290+x
	BNE.b CODE_06D8
	MOV.w A, $0361+x
	SETC
	SBC.w A, $0291+x
	MOV.w $0361+x, A
CODE_06D8:
	MOV.w A, $0291+x
	CLRC
	ADC.w A, $0361+x
	CALL.w CODE_0CAB
CODE_06E2:
	CALL.w CODE_0CC3
CODE_06E5:
	MOV.b Y, #$00
	MOV.b A, $11
	SETC
	SBC.b A, #$34
	BCS.b CODE_06F7
	MOV.b A, $11
	SETC
	SBC.b A, #$13
	BCS.b CODE_06FB
	DEC Y
	ASL A
CODE_06F7:
	ADDW.b YA, $10
	MOVW.b $10, YA
CODE_06FB:
	PUSH X
	MOV.b A, $11
	ASL A
	MOV.b Y, #$00
	MOV.b X, #$18
	DIV YA, X
	MOV X, A
	MOV.w A, DATA_108E+$01+y
	MOV.b $15, A
	MOV.w A, DATA_108E+y
	MOV.b $14, A
	MOV.w A, DATA_108E+$03+y
	PUSH A
	MOV.w A, DATA_108E+$02+y
	POP Y
	SUBW.b YA, $14
	MOV.b Y, $10
	MUL YA
	MOV A, Y
	MOV.b Y, #$00
	ADDW.b YA, $14
	MOV.b $15, Y
	ASL A
	ROL.b $15
	MOV.b $14, A
	BRA.b CODE_072E

CODE_072A:
	LSR.b $15
	ROR A
	INC X
CODE_072E:
	CMP.b X, #$06
	BNE.b CODE_072A
	POP X
	MOV.b $14, A
	ASL.b $14
	ROL.b $15
	ASL.b $14
	ROL.b $15
	MOVW.b YA, $14
	MOVW.b $16, YA
	MOV A, X
	XCN A
	LSR A
	OR.b A, #!REGISTER_DSP_ChannelXPitchLo
	MOV Y, A
	MOV.b A, $16
	CALL.w CODE_074F
	INC Y
	MOV.b A, $17
CODE_074F:
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, Y
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	RET

CODE_0754:
	MOV.b Y, #$00
	MOV.b A, ($40)+y
	INCW.b $40
	PUSH A
	MOV.b A, ($40)+y
	INCW.b $40
	MOV Y, A
	POP A
	RET

CODE_0762:
	MOV.b A, #$20
	MOV.b $D1+x, A
	MOV.w A, $02E1+x
	CMP.b A, #$80
	BCS.b CODE_0776
	MOV.b A, #$00
	MOV.w $02E1+x, A
	MOV.b A, $47
	BRA.b CODE_0784

CODE_0776:
	PUSH X
	CMP.b A, #$A0
	BCS.b CODE_0780
	CALL.w CODE_07F8
	BRA.b CODE_0783

CODE_0780:
	CALL.w CODE_07FE
CODE_0783:
	POP X
CODE_0784:
	TSET.w $0046, A
	TCLR.w $001D, A
	TCLR.w $001F, A
CODE_078D:
	RET

CODE_078E:
	MOV.b A, !REGISTER_SPC700_APUPort0
	CMP.b A, !REGISTER_SPC700_APUPort0
	BNE.b CODE_078E
	CMP.b A, #$00
	BEQ.b CODE_078D
	MOV.b !REGISTER_SPC700_APUPort0, A
	MOV.b Y, #$11
	MOV.b !REGISTER_SPC700_ControlRegister, Y
	MOV.b Y, #$00
	CMP.b A, #$7F
	BEQ.b CODE_07E0
	CMP.b A, #$F0
	BCC.b CODE_080F
	BEQ.b CODE_07C7
	CMP.b A, #$F1
	BEQ.b CODE_07D1
	CMP.b A, #$F2
	BEQ.b CODE_07E8
	CMP.b A, #$FA
	BEQ.b CODE_07E3
	CMP.b A, #$FB
	BEQ.b CODE_07E2
	CMP.b A, #$FC
	BEQ.b CODE_07ED
	CMP.b A, #$FD
	BEQ.b CODE_07F8
	CMP.b A, #$FE
	BEQ.b CODE_07FE
	RET

CODE_07C7:
	MOV.b A, #$3F
	MOV.b $46, A
	MOV.b $1A, A
	MOV.b A, #$7F
	BRA.b CODE_080F

CODE_07D1:
	MOV.b $1A, Y
	MOV.b A, $1D
	MOV.w X, $02E1
	CMP.b X, #$A0
	BCS.b CODE_07DE
	AND.b A, #$3F
CODE_07DE:
	MOV.b $45, A
CODE_07E0:
	MOV A, Y
	RET

CODE_07E2:
	MOV A, Y
CODE_07E3:
	MOV.b $19, A
	MOV.b A, #$00
	RET

CODE_07E8:
	MOV.b $1C, #$01
	BRA.b CODE_07F0

CODE_07ED:
	MOV.b $1C, #$00
CODE_07F0:
	MOV.b $0C, Y
	INC Y
	MOV.b $0B, Y
	DEC Y
	BRA.b CODE_07E0

CODE_07F8:
	MOV.b X, #$0A
	MOV.b Y, #$3F
	BRA.b CODE_0802

CODE_07FE:
	MOV.b X, #$0E
	MOV.b Y, #$FF
CODE_0802:
	MOV.b A, #$00
	MOV.b $1A, A
CODE_0806:
	MOV.w $02E1+x, A
	DEC X
	DEC X
	BPL.b CODE_0806
	MOV A, Y
	RET

CODE_080F:
	CMP.b A, #$59
	BCS.b CODE_0859
	MOV.b X, #$01
	CMP.b A, #$37
	BEQ.b CODE_0847
	CMP.b A, #$4D
	BEQ.b CODE_0847
	CMP.b A, #$38
	BEQ.b CODE_0847
	CMP.b A, #$23
	BEQ.b CODE_0847
	CMP.b A, #$17
	BEQ.b CODE_0847
	CMP.b A, #$19
	BEQ.b CODE_0847
	MOV.w Y, $02ED
	CMP.w Y, $02EF
	BCS.b CODE_0847
	CMP.w A, $02ED
	BCC.b CODE_0895
	MOV.b Y, #$0C
	MOV.b $47, #$40
	CALL.w CODE_0898
	BEQ.b CODE_0846
	MOV.b A, $47
CODE_0846:
	RET

CODE_0847:
	CMP.w A, $02EF
	BCC.b CODE_0895
	MOV.b Y, #$0E
	MOV.b $47, #$80
	CALL.w CODE_0898
	BEQ.b CODE_0858
	MOV.b A, $47
CODE_0858:
	RET

CODE_0859:
	CMP.b A, #$80
	BCS.b CODE_086E
	MOV.b X, #$02
	MOV.b Y, #$0C
	CMP.w A, $02E1+y
	BCC.b CODE_0895
	CALL.w CODE_0898
	BEQ.b CODE_086D
	MOV.b A, #$C0
CODE_086D:
	RET

CODE_086E:
	CMP.b A, #$A0
	BCS.b CODE_0882
	CMP.b A, #$82
	BCS.b CODE_0895
	MOV.b X, #$06
	MOV.b Y, #$00
	CALL.w CODE_0898
	BEQ.b CODE_0881
	MOV.b A, #$3F
CODE_0881:
	RET

CODE_0882:
	CMP.b A, #$A2
	BCS.b CODE_0895
	MOV.b X, #$08
	MOV.b Y, #$00
	CALL.w CODE_0898
	BEQ.b CODE_0891
	MOV.b A, #$FF
CODE_0891:
	RET

CODE_0892:
	POP X
	POP Y
	POP A
CODE_0895:
	MOV.b A, #$00
	RET

CODE_0898:
	PUSH A
	PUSH Y
	PUSH X
	ASL A
	BCC.b CODE_08D3
	MOV X, A
	MOV.w A, DATA_11BE+$01+x
	BEQ.b CODE_0892
	MOV Y, A
	MOV.w A, DATA_11BE+x
	MOVW.b $40, YA
	CALL.w CODE_0754
	MOVW.b $16, YA
	POP X
	POP Y
	POP A
CODE_08B2:
	MOV.w $02E1+y, A
	PUSH A
	CALL.w CODE_08FB
	CALL.w CODE_0947
	POP A
	DEC X
	BNE.b CODE_08B2
	MOV.b A, $19
	BEQ.b CODE_08C6
	MOV.b A, #$00
CODE_08C6:
	MOV.b $4C, A
	MOV.b A, #$00
	MOV.b $42, A
	MOV.b $0B, A
	MOV.b $0D, A
	JMP.w CODE_0944

CODE_08D3:
	MOV.b $15, Y
	MOV X, A
	MOV.w A, DATA_10C0-$01+x
	BEQ.b CODE_0892
	MOV Y, A
	MOV.w A, DATA_10C0-$02+x
	SETC
	SBC.b A, $15
	BCS.b CODE_08E5
	DEC Y
CODE_08E5:
	MOVW.b $16, YA
	POP X
	POP Y
	POP A
CODE_08EA:
	MOV.w $02E1+y, A
	PUSH A
	CALL.w CODE_08FB
	CALL.w CODE_0947
	POP A
	DEC X
	BNE.b CODE_08EA
	JMP.w CODE_0944

CODE_08FB:
	MOV.b A, #$FF
	MOV.w $0301+y, A
	MOV.w $00D0+y, A
	MOV.b A, #$0A
	MOV.w $0351+y, A
	MOV.w $0331+y, A
	MOV.b A, #$00
	MOV.w $0330+y, A
	MOV.w $0381+y, A
	MOV.w $02F0+y, A
	MOV.w $0280+y, A
	MOV.w $00B1+y, A
	MOV.w $00C1+y, A
	MOV.w $0081+y, A
	MOV.w $0101+y, A
	MOV.w $0250+y, A
	MOV.w $0251+y, A
	MOV.w $0271+y, A
	MOV.w $0080+y, A
	MOV.w $0090+y, A
	MOV.w $0091+y, A
	INC A
	MOV.w $0070+y, A
	MOV.w $00E1+y, A
	MOV.b A, #$20
	MOV.w $00D1+y, A
	RET

CODE_0944:
	MOV.b A, #$01
	RET

CODE_0947:
	MOV.b A, ($16)+y
	MOV.w $0030+y, A
	INC Y
	MOV.b A, ($16)+y
	MOV.w $0030+y, A
	INC Y
	RET

CODE_0954:
	CALL.w CODE_0754
	BNE.b CODE_0972
	MOV Y, A
	BNE.b CODE_095F
	JMP.w CODE_0762

CODE_095F:
	DEC.b $42
	BPL.b CODE_0965
	MOV.b $42, A
CODE_0965:
	CALL.w CODE_0754
	PUSH A
	MOV.b A, $42
	POP A
	BEQ.b CODE_0954
	MOVW.b $40, YA
	BRA.b CODE_0954

CODE_0972:
	MOVW.b $16, YA
	MOV.w A, $02E1+x
	CMP.b A, #$A0
	MOV.b A, #$10
	BCS.b CODE_097F
	MOV.b A, #$0C
CODE_097F:
	MOV.b $1E, A
	MOV.b Y, #$00
CODE_0983:
	MOV.b A, #$00
	MOV.w $0080+y, A
	MOV.w $0090+y, A
	MOV.w $0091+y, A
	INC A
	MOV.w $0070+y, A
	CALL.w CODE_0947
	CMP.b Y, $1E
	BNE.b CODE_0983
	MOV.b X, #$00
	MOV.b $4B, X
	MOV.b $47, #$01
CODE_09A0:
	DEC.b $70+x
	BEQ.b CODE_09A7
	JMP.w CODE_0A25

CODE_09A7:
	CALL.w CODE_0A43
	MOV Y, A
	BNE.b CODE_09CC
	MOV.b A, $80+x
	BNE.b CODE_09BB
	MOV.w A, $02E1+x
	CMP.b A, #$80
	BCS.b CODE_0954
	JMP.w CODE_0762

CODE_09BB:
	CALL.w CODE_0C35
	DEC.b $80+x
	BNE.b CODE_09A7
	MOV.b A, $50+x
	MOV.b $30+x, A
	MOV.b A, $51+x
	MOV.b $31+x, A
	BRA.b CODE_09A7

CODE_09CC:
	BMI.b CODE_09F1
	MOV.b $E0+x, A
	CALL.w CODE_0A43
	MOV Y, A
	BMI.b CODE_09F1
	PUSH A
	XCN A
	AND.b A, #$07
	MOV Y, A
	MOV.w A, DATA_10A8+y
	MOV.b $E1+x, A
	POP A
	AND.b A, #$0F
	MOV Y, A
	MOV.w A, DATA_10B0+y
	CLRC
	ADC.w A, $0101+x
	MOV.w $0210+x, A
	CALL.w CODE_0A43
CODE_09F1:
	CMP.b A, #$E0
	BCC.b CODE_09FA
	CALL.w CODE_0A2C
	BRA.b CODE_09A7

CODE_09FA:
	MOV Y, A
	CALL.w CODE_0601
	MOV.b A, $E1+x
	BNE.b CODE_0A0D
	MOV.b A, $1F
	AND.b A, $47
	BNE.b CODE_0A15
	OR.b $1F, $47
	BRA.b CODE_0A15

CODE_0A0D:
	MOV.b A, $47
	EOR.b A, #$FF
	AND.b A, $1F
	MOV.b $1F, A
CODE_0A15:
	MOV.b A, $E0+x
	MOV.b $70+x, A
	MOV Y, A
	MOV.b A, $E1+x
	BEQ.b CODE_0A1F
	INC A
CODE_0A1F:
	MUL YA
	MOV A, Y
	MOV.b $71+x, A
	BRA.b CODE_0A28

CODE_0A25:
	CALL.w CODE_0E1A
CODE_0A28:
	CALL.w CODE_0C8A
	RET

CODE_0A2C:
	ASL A
	MOV Y, A
	MOV.w A, CODE_0C2B+y
	PUSH A
	MOV.w A, CODE_0C2B-$01+y
	PUSH A
	MOV A, Y
	LSR A
	MOV Y, A
	MOV.w A, CODE_0CC8+y
	BEQ.b CODE_0A4B
	CALL.w CODE_0A43
	MOV Y, A
	RET

CODE_0A43:
	MOV.b A, ($30+x)
CODE_0A45:
	INC.b $30+x
	BNE.b CODE_0A4B
	INC.b $31+x
CODE_0A4B:
	RET

DATA_0A4C:
	db $F7,$FB,$FF,$03,$FE,$00,$FD,$09,$FA,$00,$FF,$FB,$00,$00,$00,$00
	db $00,$00,$00,$00

DATA_0A60:
	db $1E,$78,$64,$C8,$DC,$00,$BE,$B2,$50,$0A,$3C,$00,$00,$00,$00,$00
	db $00,$00,$00,$00

CODE_0A74:
	MOV.w $0211+x, A
	MOV Y, A
	BMI.b CODE_0A8F
	PUSH A
	PUSH X
	MOV X, A
	MOV.w A, DATA_0A4C+x
	MOV Y, A
	MOV.w A, DATA_0A60+x
	POP X
	MOV.w $0391+x, A
	MOV A, Y
	MOV.w $0390+x, A
	POP A
	BRA.b CODE_0A9F

CODE_0A8F:
	PUSH A
	MOV.b A, #$00
	MOV.w $0391+x, A
	MOV.w $0390+x, A
	POP A
	SETC
	SBC.b A, #$CA
	CLRC
	ADC.b A, #$14
CODE_0A9F:
	MOV.b Y, #$06
	MUL YA
	MOVW.b $14, YA
	CLRC
	ADC.b $14, #DATA_120E
	ADC.b $15, #DATA_120E>>8
	PUSH X
	MOV A, X
	XCN A
	LSR A
	OR.b A, #!REGISTER_DSP_ChannelXSourceNumber
	MOV X, A
	MOV.b Y, #$00
	MOV.b A, ($14)+y
	BPL.b CODE_0AC6
	AND.b A, #$1F
	AND.b $48, #$20
	TSET.w $0048, A
	OR.b $49, $47
	MOV A, Y
	BRA.b CODE_0ACD

CODE_0AC6:
	MOV.b A, $47
	TCLR.w $0049, A
CODE_0ACB:
	MOV.b A, ($14)+y
CODE_0ACD:
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, X
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC X
	INC Y
	CMP.b Y, #$04
	BNE.b CODE_0ACB
	POP X
	MOV.b A, ($14)+y
	MOV.w $0221+x, A
	INC Y
	MOV.b A, ($14)+y
	MOV.w $0220+x, A
	RET

CODE_0AE4:
	MOV.b Y, $19
	BNE.b CODE_0B0B
	CMP.b A, #$FF
	BEQ.b CODE_0AF0
	BMI.b CODE_0AF7
	BRA.b CODE_0AFE

CODE_0AF0:
	MOV.b A, $47
	TSET.w $004C, A
	BRA.b CODE_0AFC

CODE_0AF7:
	MOV.b A, $47
	TCLR.w $004C, A
CODE_0AFC:
	MOV.b A, #$0A
CODE_0AFE:
	MOV.w $0351+x, A
	AND.b A, #$1F
	MOV.w $0331+x, A
	MOV.b A, #$00
	MOV.w $0330+x, A
CODE_0B0B:
	RET

CODE_0B0C:
	MOV.b Y, $19
	BEQ.b CODE_0B13
	JMP.w CODE_0A43

CODE_0B13:
	MOV.b $91+x, A
	PUSH A
	CALL.w CODE_0A43
	MOV.w $0350+x, A
	SETC
	SBC.w A, $0331+x
	POP X
	CALL.w CODE_0CCE
	MOV.w $0340+x, A
	MOV A, Y
	MOV.w $0341+x, A
	RET

CODE_0B2C:
	MOV.w $02B0+x, A
	CALL.w CODE_0A43
	MOV.w $02A1+x, A
	CALL.w CODE_0A43
	MOV.b $B1+x, A
	MOV.w $02C1+x, A
	MOV.b A, #$00
	MOV.w $02B1+x, A
	RET

CODE_0B43:
	MOV.w $02B1+x, A
	PUSH A
	MOV.b Y, #$00
	MOV.b A, $B1+x
	POP X
	DIV YA, X
	MOV.b X, $44
	MOV.w $02C0+x, A
	RET

CODE_0B53:
	MOV.w $0270+x, A
	CALL.w CODE_0A43
	MOV.w $0271+x, A
	MOV.b A, #$00
	MOV.b $20+x, A
	MOV.b $21+x, A
	RET

CODE_0B63:
	MOV.b A, $30+x
	MOV.w $0260+x, A
	MOV.b A, $31+x
	MOV.w $0261+x, A
	MOV.b A, #$00
	MOV.b $81+x, A
	RET

CODE_0B72:
	INC.b $81+x
	CMP.b A, $81+x
	BEQ.b CODE_0BB1
	CALL.w CODE_0A43
	CLRC
	ADC.w A, $0101+x
	MOV.w $0101+x, A
	CALL.w CODE_0A43
	MOV.b Y, #$00
	ASL A
	BCC.b CODE_0B8B
	DEC Y
CODE_0B8B:
	MOV.b $1E, Y
	ASL A
	ROL.b $1E
	ASL A
	ROL.b $1E
	ASL A
	ROL.b $1E
	MOV.b Y, $1E
	CLRC
	ADC.w A, $0250+x
	MOV.w $0250+x, A
	MOV A, Y
	ADC.w A, $0251+x
	MOV.w $0251+x, A
	MOV.w A, $0260+x
	MOV.b $30+x, A
	MOV.w A, $0261+x
	MOV.b $31+x, A
	RET

CODE_0BB1:
	MOV.b A, #$00
	MOV.b $81+x, A
	MOV.w $0101+x, A
	MOV.w $0250+x, A
	MOV.w $0251+x, A
	CALL.w CODE_0A45
	JMP.w CODE_0A45

CODE_0BC4:
	ASL A
	MOV.w $00D1+x, A
CODE_0BC8:
	RET

CODE_0BC9:
	RET

CODE_0BCA:
	MOV.w $02F0+x, A
	RET

CODE_0BCE:
	MOV.w $02E0+x, A
	CALL.w CODE_0A43
	MOV.w $02D1+x, A
	CALL.w CODE_0A43
CODE_0BDA:
	MOV.b $C1+x, A
	RET

CODE_0BDD:
	MOV.b A, #$01
	BRA.b CODE_0BE3

CODE_0BE1:
	MOV.b A, #$00
CODE_0BE3:
	MOV.w $0290+x, A
	MOV A, Y
	MOV.w $0281+x, A
	CALL.w CODE_0A43
	MOV.w $0280+x, A
	CALL.w CODE_0A43
	MOV.w $0291+x, A
	RET

CODE_0BF7:
	MOV.w $0280+x, A
	RET

CODE_0BFB:
	MOV.w $0301+x, A
	MOV.b A, #$00
	MOV.w $0300+x, A
	RET

CODE_0C04:
	MOV.b $90+x, A
	PUSH A
	CALL.w CODE_0A43
	MOV.w $0320+x, A
	SETC
	SBC.w A, $0301+x
	POP X
	CALL.w CODE_0CCE
	MOV.w $0310+x, A
	MOV A, Y
	MOV.w $0311+x, A
	RET

CODE_0C1D:
	MOV.w $0381+x, A
	RET

CODE_0C21:
	MOV.b $60+x, A
	CALL.w CODE_0A43
	MOV.b $61+x, A
	CALL.w CODE_0A43
CODE_0C2B:
	MOV.b $80+x, A
	MOV.b A, $30+x
	MOV.b $50+x, A
	MOV.b A, $31+x
	MOV.b $51+x, A
CODE_0C35:
	MOV.b A, $60+x
	MOV.b $30+x, A
	MOV.b A, $61+x
	MOV.b $31+x, A
	RET

CODE_0C3E:
	SET5.b $48
	RET

CODE_0C41:
	RET

CODE_0C42:
	MOV.b Y, #$00
	CMP.b A, #$A0
	BCS.b CODE_0C58
CODE_0C48:
	PUSH X
	MOV.b X, #$0A
	DIV YA, X
	MOV.b $1E, A
	MOV A, Y
	AND.b A, #$07
	XCN A
	OR.b A, $1E
	OR.b A, #$80
	MOV Y, A
	POP X
CODE_0C58:
	PUSH X
	MOV A, X
	XCN A
	LSR A
	OR.b A, #!REGISTER_DSP_ChannelXToggleADSROrGAIN
	MOV X, A
	MOV A, Y
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, X
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	PUSH X
	POP Y
	POP X
	INC Y
	CALL.w CODE_0A43
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, Y
	PUSH X
	PUSH Y
	MOV.b Y, #$00
	MOV.b X, #$1E
	DIV YA, X
	INC Y
	INC Y
	MOV.b $1E, Y
	XCN A
	ASL A
	OR.b A, $1E
	POP Y
	POP X
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	INC Y
	CALL.w CODE_0A43
	MOV.b !REGISTER_SPC700_DSPRegisterIndex, Y
	MOV.b !REGISTER_SPC700_ReadWriteToDSPRegister, A
	RET

CODE_0C89:
	RET

CODE_0C8A:
	MOV.b A, $A0+x
	BNE.b CODE_0CC2
	MOV.b A, ($30+x)
	CMP.b A, #$F9
	BNE.b CODE_0CC2
	CALL.w CODE_0A45
	CALL.w CODE_0A43
CODE_0C9A:
	MOV.b $A1+x, A
	CALL.w CODE_0A43
	MOV.b $A0+x, A
	CALL.w CODE_0A43
	CLRC
	ADC.w A, $02F0+x
	ADC.w A, $0390+x
CODE_0CAB:
	AND.b A, #$7F
	MOV.w $0380+x, A
	SETC
	SBC.w A, $0361+x
	MOV.b Y, $A0+x
	PUSH Y
	POP X
	CALL.w CODE_0CCE
	MOV.w $0370+x, A
	MOV A, Y
	MOV.w $0371+x, A
CODE_0CC2:
	RET

CODE_0CC3:
	MOV.w A, $0361+x
	MOV.b $11, A
CODE_0CC8:
	MOV.w A, $0360+x
	MOV.b $10, A
	RET

CODE_0CCE:
	NOTC
	ROR.b $12
	BPL.b CODE_0CD6
	EOR.b A, #$FF
	INC A
CODE_0CD6:
	MOV.b Y, #$00
	DIV YA, X
	PUSH A
	MOV.b A, #$00
	DIV YA, X
	POP Y
	MOV.b X, $44
CODE_0CE0:
	BBC7.b $12, CODE_0CE9
	MOVW.b $14, YA
	MOVW.b YA, $0E
	SUBW.b YA, $14
CODE_0CE9:
	RET

DATA_0CEA:
	dw CODE_0A74
	dw CODE_0AE4
	dw CODE_0B0C
	dw CODE_0B2C
	dw CODE_0B53
	dw CODE_0B63
	dw CODE_0B72
	dw CODE_0BC4
	dw CODE_0BC8
	dw CODE_0BC9
	dw CODE_0BCA
	dw CODE_0BCE
	dw CODE_0BDA
	dw CODE_0BFB
	dw CODE_0C04
	dw CODE_0C21
	dw CODE_0B43
	dw CODE_0BDD
	dw CODE_0BE1
	dw CODE_0BF7
	dw CODE_0C1D
	dw CODE_0C3E
	dw CODE_0C3E
	dw CODE_0C3E
	dw CODE_0C3E
	dw CODE_0C9A
	dw CODE_0C41
	dw CODE_0C42
	dw CODE_0C89
	dw CODE_0C89
	dw CODE_0C89

DATA_0D28:
	db $01,$01,$02,$03,$02,$00,$03,$01,$02,$01,$01,$03,$00,$01,$02,$03
	db $01,$03,$03,$00,$01,$03,$00,$03,$03,$03,$01,$03,$00,$00,$00

CODE_0D47:
	MOV.b A, $90+x
	BEQ.b CODE_0D54
	MOV.b A, #$00
	MOV.b Y, #$03
	DEC.b $90+x
	CALL.w CODE_0DF6
CODE_0D54:
	MOV.b Y, $C1+x
	BEQ.b CODE_0D7B
	MOV.w A, $02E0+x
	CBNE.b $C0+x, CODE_0D79
	OR.b $4B, $47
	MOV.w A, $02D0+x
	BPL.b CODE_0D6D
	INC Y
	BNE.b CODE_0D6D
	MOV.b A, #$80
	BRA.b CODE_0D71

CODE_0D6D:
	CLRC
	ADC.w A, $02D1+x
CODE_0D71:
	MOV.w $02D0+x, A
	CALL.w CODE_1052
	BRA.b CODE_0D80

CODE_0D79:
	INC.b $C0+x
CODE_0D7B:
	MOV.b A, #$FF
	CALL.w CODE_105D
CODE_0D80:
	MOV.b A, $91+x
	BEQ.b CODE_0D8D
	MOV.b A, #$30
	MOV.b Y, #$03
	DEC.b $91+x
	CALL.w CODE_0DF6
CODE_0D8D:
	MOV.b A, $47
	AND.b A, $4B
	BEQ.b CODE_0DF5
	MOV.w A, $0331+x
	MOV Y, A
	MOV.w A, $0330+x
	MOVW.b $10, YA
CODE_0D9C:
	MOV A, X
	XCN A
	LSR A
	MOV.b $12, A
CODE_0DA1:
	MOV.b Y, $11
	MOV.w A, DATA_106D+$01+y
	SETC
	SBC.w A, DATA_106D+y
	MOV.b Y, $10
	MUL YA
	MOV A, Y
	MOV.b Y, $11
	CLRC
	ADC.w A, DATA_106D+y
	MOV Y, A
	MOV.w A, $0321+x
	MUL YA
	MOV.w A, $0351+x
	ASL A
	BBC0.b $12, CODE_0DC1
	ASL A
CODE_0DC1:
	MOV A, Y
	BCC.b CODE_0DC7
	EOR.b A, #$FF
	INC A
CODE_0DC7:
	MOV Y, A
	MOV.w A, $02E1+x
	BPL.b CODE_0DE2
	MOV A, Y
	SETC
	SBC.w A, $02F1+x
	BCC.b CODE_0DE0
	PUSH A
	MOV.b Y, $0D
	MUL YA
	MOV.b $1E, Y
	POP A
	SETC
	SBC.b A, $1E
	BCS.b CODE_0DE3
CODE_0DE0:
	MOV.b Y, #$00
CODE_0DE2:
	MOV A, Y
CODE_0DE3:
	MOV.b Y, $12
	CALL.w CODE_074F
	MOV.b Y, #$14
	MOV.b A, #$00
	SUBW.b YA, $10
	MOVW.b $10, YA
	INC.b $12
	BBC1.b $12, CODE_0DA1
CODE_0DF5:
	RET

CODE_0DF6:
	OR.b $4B, $47
	MOVW.b $14, YA
	MOVW.b $16, YA
	PUSH X
	POP Y
	CLRC
	BNE.b CODE_0E0C
	ADC.b $16, #$1F
	MOV.b A, #$00
	MOV.b ($14)+y, A
	INC Y
	BRA.b CODE_0E15

CODE_0E0C:
	ADC.b $16, #$10
	CALL.w CODE_0E13
	INC Y
CODE_0E13:
	MOV.b A, ($14)+y
CODE_0E15:
	ADC.b A, ($16)+y
	MOV.b ($14)+y, A
	RET

CODE_0E1A:
	MOV.b A, $71+x
	BEQ.b CODE_0E82
	DEC.b $71+x
	BEQ.b CODE_0E27
	MOV.b A, #$02
	CBNE.b $70+x, CODE_0E82
CODE_0E27:
	MOV.b A, $80+x
	MOV.b $17, A
	MOV.b A, $30+x
	MOV.b Y, $31+x
CODE_0E2F:
	MOVW.b $14, YA
	MOV.b Y, #$00
CODE_0E33:
	MOV.b A, ($14)+y
	BEQ.b CODE_0E55
	BMI.b CODE_0E40
CODE_0E39:
	INC Y
	BMI.b CODE_0E78
	MOV.b A, ($14)+y
	BPL.b CODE_0E39
CODE_0E40:
	CMP.b A, #$C8
	BEQ.b CODE_0E82
	CMP.b A, #$EF
	BEQ.b CODE_0E6D
	CMP.b A, #$E0
	BCC.b CODE_0E78
	PUSH Y
	MOV Y, A
	POP A
	ADC.w A, CODE_0C48+y
	MOV Y, A
	BRA.b CODE_0E33

CODE_0E55:
	MOV.b A, $17
	BEQ.b CODE_0E78
	DEC.b $17
	BNE.b CODE_0E67
	CMP.b X, #$0C
	BCS.b CODE_0E78
	MOV.b Y, $51+x
	MOV.b A, $50+x
	BRA.b CODE_0E2F

CODE_0E67:
	MOV.b Y, $61+x
	MOV.b A, $60+x
	BRA.b CODE_0E2F

CODE_0E6D:
	INC Y
	MOV.b A, ($14)+y
	PUSH A
	INC Y
	MOV.b A, ($14)+y
	MOV Y, A
	POP A
	BRA.b CODE_0E2F

CODE_0E78:
	MOV.b A, $47
	TCLR.w $001D, A
	MOV.b Y, #!REGISTER_DSP_KeyOffBits
	CALL.w CODE_074F
CODE_0E82:
	CLR7.b $13
	MOV.b A, $A0+x
	BEQ.b CODE_0EB8
	MOV.b A, $A1+x
	BEQ.b CODE_0E90
	DEC.b $A1+x
	BRA.b CODE_0EB8

CODE_0E90:
	SET7.b $13
	DEC.b $A0+x
	BNE.b CODE_0EA5
	MOV.w A, $0381+x
	CLRC
	ADC.w A, $0391+x
	MOV.w $0360+x, A
	MOV.w A, $0380+x
	BRA.b CODE_0EB5

CODE_0EA5:
	CLRC
	MOV.w A, $0360+x
	ADC.w A, $0370+x
	MOV.w $0360+x, A
	MOV.w A, $0361+x
	ADC.w A, $0371+x
CODE_0EB5:
	MOV.w $0361+x, A
CODE_0EB8:
	CALL.w CODE_0CC3
	MOV.b A, $B1+x
	BEQ.b CODE_0F37
	MOV.w A, $02B0+x
	CBNE.b $B0+x, CODE_0F35
	MOV.w A, $0100+x
	CMP.w A, $02B1+x
	BNE.b CODE_0ED2
	MOV.w A, $02C1+x
	BRA.b CODE_0EDF

CODE_0ED2:
	SETP
	INC.b $00+x
	CLRP
	MOV Y, A
	BEQ.b CODE_0EDB
	MOV.b A, $B1+x
CODE_0EDB:
	CLRC
	ADC.w A, $02C0+x
CODE_0EDF:
	MOV.b $B1+x, A
	MOV.w A, $02A0+x
	CLRC
	ADC.w A, $02A1+x
	MOV.w $02A0+x, A
CODE_0EEB:
	MOV.b $12, A
	ASL A
	ASL A
	BCC.b CODE_0EF3
	EOR.b A, #$FF
CODE_0EF3:
	MOV Y, A
	MOV.b A, $B1+x
	CMP.b A, #$F1
	BCC.b CODE_0EFF
	AND.b A, #$0F
	MUL YA
	BRA.b CODE_0F03

CODE_0EFF:
	MUL YA
	MOV A, Y
	MOV.b Y, #$00
CODE_0F03:
	CALL.w CODE_103D
CODE_0F06:
	MOV.w A, $0271+x
	BEQ.b CODE_0F32
	INC.b $20+x
	MOV.b A, $20+x
	CMP.w A, $0270+x
	BNE.b CODE_0F32
CODE_0F14:
	MOV.b A, #$00
	MOV.b $20+x, A
	MOV.b A, $21+x
	AND.b A, #$7F
	PUSH X
	MOV X, A
	MOV.w A, DATA_0F49+x
	MOV.b $12, A
	MOV Y, A
	POP X
	INC.b $21+x
	MOV.w A, $0271+x
	BPL.b CODE_0F2E
	EOR.b A, #$FF
CODE_0F2E:
	MUL YA
	CALL.w CODE_103D
CODE_0F32:
	JMP.w CODE_06E5

CODE_0F35:
	INC.b $B0+x
CODE_0F37:
	BBS7.b $13, CODE_0F06
	MOV.w A, $0271+x
	BEQ.b CODE_0F48
	INC.b $20+x
	MOV.b A, $20+x
	CMP.w A, $0270+x
	BEQ.b CODE_0F14
CODE_0F48:
	RET

DATA_0F49:
	db $FE,$04,$FD,$FC,$FE,$01,$FB,$FF,$FA,$02,$01,$01,$FD,$01,$07,$02
	db $07,$02,$04,$02,$08,$07,$02,$FD,$00,$04,$01,$05,$06,$07,$03,$00
	db $FB,$03,$02,$02,$FE,$02,$08,$03,$01,$07,$00,$FF,$01,$04,$FE,$02
	db $07,$03,$04,$02,$08,$07,$03,$FE,$01,$05,$02,$06,$07,$08,$03,$00
	db $FB,$03,$02,$03,$FE,$02,$08,$03,$08,$04,$05,$03,$09,$05,$01,$FC
	db $FA,$00,$F9,$F8,$FA,$FD,$F7,$FB,$FE,$02,$FF,$03,$04,$05,$FE,$00
	db $FB,$03,$02,$02,$FE,$01,$03,$FF,$04,$FF,$01,$FF,$05,$04,$00,$FB
	db $FE,$02,$FF,$03,$04,$05,$00,$FD,$FB,$01,$FA,$F9,$FB,$FE,$FA,$00

CODE_0FC9:
	CLR7.b $13
	MOV.b A, $C1+x
	BEQ.b CODE_0FD8
	MOV.w A, $02E0+x
	CBNE.b $C0+x, CODE_0FD8
	CALL.w CODE_1045
CODE_0FD8:
	MOV.w A, $0331+x
	MOV Y, A
	MOV.w A, $0330+x
	MOVW.b $10, YA
	MOV.b A, $91+x
	BEQ.b CODE_0FEF
	MOV.w A, $0341+x
	MOV Y, A
	MOV.w A, $0340+x
	CALL.w CODE_1027
CODE_0FEF:
	BBC7.b $13, CODE_0FF5
	CALL.w CODE_0D9C
CODE_0FF5:
	CLR7.b $13
	CALL.w CODE_0CC3
	MOV.b A, $A0+x
	BEQ.b CODE_100C
	MOV.b A, $A1+x
	BNE.b CODE_100C
	MOV.w A, $0371+x
	MOV Y, A
	MOV.w A, $0370+x
	CALL.w CODE_1027
CODE_100C:
	MOV.b A, $B1+x
	BNE.b CODE_1013
CODE_1010:
	JMP.w CODE_0F37

CODE_1013:
	MOV.w A, $02B0+x
	CBNE.b $B0+x, CODE_1010
	MOV.b Y, $D0+x
	MOV.w A, $02A1+x
	MUL YA
	MOV A, Y
	CLRC
	ADC.w A, $02A0+x
	JMP.w CODE_0EEB

CODE_1027:
	SET7.b $13
	MOV.b $12, Y
	CALL.w CODE_0CE0
	PUSH Y
	MOV.b Y, $D0+x
	MUL YA
	MOV.b $14, Y
	MOV.b $15, #$00
	MOV.b Y, $D0+x
	POP A
	MUL YA
	ADDW.b YA, $14
CODE_103D:
	CALL.w CODE_0CE0
	ADDW.b YA, $10
	MOVW.b $10, YA
	RET

CODE_1045:
	SET7.b $13
	MOV.b Y, $D0+x
	MOV.w A, $02D1+x
	MUL YA
	MOV A, Y
	CLRC
	ADC.w A, $02D0+x
CODE_1052:
	ASL A
	BCC.b CODE_1057
	EOR.b A, #$FF
CODE_1057:
	MOV.b Y, $C1+x
	MUL YA
	MOV A, Y
	EOR.b A, #$FF
CODE_105D:
	MOV Y, A
	MOV.w A, $0210+x
	MUL YA
	MOV.w A, $0301+x
	MUL YA
	MOV A, Y
	MUL YA
	MOV A, Y
	MOV.w $0321+x, A
	RET

DATA_106D:
	db $00,$01,$03,$07,$0D,$15,$1E,$29,$34,$42,$51,$5E,$67,$6E,$73,$77
	db $7A,$7C,$7D,$7E,$7F

DATA_1082:
	db !REGISTER_DSP_DSPStatusFlags,!REGISTER_DSP_KeyOnBits,!REGISTER_DSP_KeyOffBits,!REGISTER_DSP_NoiseEnable,!REGISTER_DSP_PitchModulation,!REGISTER_DSP_KeyOffBits

DATA_1088:
	db $48,$45,$0E,$49,$4A,$46

DATA_108E:
	dw $085F,$08DE,$0965,$09F4,$0A8C,$0B2C,$0BD6,$0C8B
	dw $0D4A,$0E14,$0EEA,$0FCD,$10BE

DATA_10A8:
	db $00,$65,$7F,$98,$F0,$FD,$FE,$FF

DATA_10B0:
	db $19,$32,$4C,$65,$72,$7F,$8C,$98,$A5,$B2,$BF,$CB,$D8,$E5,$F2,$FC

DATA_10C0:
	dw DATA_12F2,DATA_1339,DATA_13C6,DATA_1407,DATA_144F,DATA_149A,DATA_14E0,DATA_155F
	dw DATA_158D,DATA_15C7,DATA_15EF,DATA_16F1,DATA_171D,DATA_1744,DATA_176E,DATA_1787
	dw DATA_17C0,DATA_18CC,DATA_1901,DATA_1932,DATA_196E,DATA_19A3,DATA_19D5,DATA_1A24
	dw DATA_1A68,DATA_1A85,DATA_137E,DATA_1AC9,DATA_1AEF,DATA_1B0C,DATA_1B33,DATA_1B93
	dw DATA_1BBD,DATA_1BE7,DATA_1C1E,DATA_1C8E,DATA_1CB2,DATA_1CF6,DATA_1D29,DATA_1D48
	dw DATA_1D6A,DATA_1D8C,DATA_1826,DATA_1858,DATA_1B56,DATA_189C,DATA_1EEF,DATA_1F44
	dw DATA_1F5B,DATA_1F70,DATA_17F1,DATA_1F87,DATA_1DC0,DATA_1DE8,DATA_1E45,DATA_1E76
	dw DATA_1E88,DATA_1EB5,DATA_1FAD,DATA_152D,DATA_16B8,DATA_1FDA,DATA_1683,DATA_2061
	dw DATA_2091,DATA_2183,DATA_21C1,DATA_21EA,DATA_221C,DATA_23BD,DATA_213E,DATA_2105
	dw DATA_2257,DATA_2280,DATA_22A9,DATA_22C8,DATA_22F2,DATA_2320,DATA_2358,DATA_2388
	dw $0000,$0000,$0000,DATA_23A7,DATA_20CD,DATA_23CE,DATA_2409,DATA_243F
	dw $0000,DATA_246A,DATA_24B1,DATA_24EA,DATA_2526,DATA_2560,DATA_25FB,DATA_2637
	dw DATA_267F,DATA_2746,DATA_27A0,DATA_2804,DATA_286E,DATA_28A6,$0000,DATA_28FA
	dw DATA_2961,DATA_2A19,DATA_2A82,DATA_2AF2,DATA_2CD8,DATA_2B44,DATA_2BA6,DATA_2BFE
	dw DATA_2C51,DATA_2CA5,$0000,DATA_2D28,DATA_2D6D,DATA_2DA0,DATA_2DEE,DATA_2E33
	dw DATA_2E66,DATA_2E99,DATA_2EE2,DATA_2F2B,DATA_2F74,DATA_2FBC,DATA_2FDB

DATA_11BE:
	dw DATA_3000,DATA_3000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	dw DATA_3000,DATA_3000,$0000,$0000,$0000,$0000,$0000,$0000

DATA_120E:
	db $00,$FF,$E0,$B8,$13,$00,$01,$FF,$E0,$B8,$07,$A8,$02,$FF,$E0,$B8
	db $0F,$40,$03,$FF,$F2,$B8,$05,$00,$04,$FF,$E0,$B8,$03,$C0,$05,$FF
	db $ED,$B8,$01,$00,$06,$FF,$EA,$B8,$07,$00,$07,$FF,$EB,$B8,$07,$00
	db $08,$FF,$E0,$B8,$05,$CA,$09,$FF,$E0,$B8,$01,$00,$0A,$FF,$E0,$B8
	db $07,$B0,$0B,$FF,$E0,$B8,$03,$00,$0C,$FF,$DF,$B8,$07,$A8,$0D,$FF
	db $DF,$B8,$07,$A8,$0E,$FF,$DF,$B8,$07,$A8,$0F,$FF,$DF,$B8,$07,$A8
	db $10,$FF,$DF,$B8,$07,$A8,$11,$FF,$DF,$B8,$07,$A8,$12,$FF,$DF,$B8
	db $07,$A8,$13,$FF,$E0,$B8,$07,$A8,$14,$FF,$E0,$B8,$01,$88,$15,$FF
	db $E0,$B8,$07,$A8,$16,$AF,$72,$B8,$04,$98,$17,$AF,$72,$B8,$04,$98
	db $18,$FF,$E0,$B8,$04,$98,$19,$FF,$E0,$B8,$07,$A8,$1A,$FF,$E0,$B8
	db $07,$A8,$1B,$FF,$E0,$B8,$07,$A8,$1C,$FF,$E0,$B8,$07,$A8,$1D,$FF
	db $E0,$B8,$07,$A8,$1E,$FF,$E0,$B8,$07,$A8,$1F,$FF,$E0,$B8,$07,$A8
	db $20,$FF,$E0,$B8,$07,$A8,$21,$FF,$E0,$B8,$07,$A8,$22,$FF,$E0,$B8
	db $07,$A8,$23,$FF,$E0,$B8,$07,$A8,$24,$FF,$E0,$B8,$07,$A8,$25,$FF
	db $E0,$B8,$07,$A8

DATA_12F2:
	db $F4,$12,$E0,$04,$E7,$7B,$ED,$64,$E3,$00,$FF,$FF,$E1,$08,$E2,$25
	db $0C,$07,$6F,$C3,$F9,$00,$07,$98,$E0,$08,$ED,$BE,$EE,$28,$41,$E3
	db $00,$C8,$C8,$1E,$C3,$F9,$00,$1E,$9F,$E0,$04,$ED,$96,$EE,$32,$24
	db $E3,$00,$01,$00,$EA,$02,$E2,$32,$08,$32,$C3,$ED,$37,$EE,$32,$20
	db $E2,$32,$0C,$32,$0F,$C3,$00

DATA_1339:
	db $3B,$13,$E0,$0A,$E7,$7B,$ED,$82,$E3,$00,$FF,$FF,$E1,$08,$E2,$07
	db $0C,$07,$6F,$BC,$F9,$00,$07,$9F,$E0,$0B,$ED,$D2,$EE,$28,$2D,$E3
	db $00,$C8,$64,$FB,$64,$D2,$00,$E2,$28,$08,$28,$B7,$F9,$00,$28,$93
	db $ED,$41,$E2,$28,$0C,$B7,$F9,$00,$28,$93,$ED,$21,$E2,$28,$08,$B7
	db $F9,$00,$28,$93,$00

DATA_137E:
	db $80,$13,$E0,$0A,$E7,$7B,$ED,$5A,$E3,$00,$FF,$FF,$E1,$0B,$E2,$07
	db $09,$07,$6F,$B7,$F9,$00,$07,$98,$E0,$08,$ED,$B4,$EE,$28,$37,$E3
	db $00,$C8,$C8,$E2,$1E,$0B,$1E,$C3,$F9,$00,$1E,$9F,$ED,$55,$E2,$1E
	db $09,$C3,$F9,$00,$1E,$9F,$ED,$2D,$E2,$1E,$0B,$C3,$F9,$00,$1E,$9F
	db $ED,$20,$C3,$F9,$00,$1E,$9F,$00

DATA_13C6:
	db $C8,$13,$E0,$0A,$E7,$7B,$ED,$64,$E3,$00,$FF,$FF,$E1,$0C,$E2,$07
	db $08,$07,$6F,$B7,$F9,$00,$07,$98,$E0,$CF,$ED,$BE,$EE,$28,$41,$E3
	db $00,$C8,$C8,$E2,$28,$0C,$28,$BC,$F9,$00,$28,$9F,$ED,$2D,$E2,$28
	db $08,$BC,$F9,$00,$28,$9F,$ED,$21,$E2,$28,$0C,$BC,$F9,$00,$28,$9F
	db $00

DATA_1407:
	db $09,$14,$E0,$0A,$E7,$7B,$ED,$5A,$E3,$00,$FF,$FF,$EA,$FA,$E1,$0B
	db $E2,$2F,$09,$07,$6F,$B7,$F9,$00,$07,$98,$E0,$08,$ED,$B4,$EE,$28
	db $37,$E3,$00,$C8,$C8,$E2,$28,$0B,$28,$0F,$BC,$F9,$00,$28,$9F,$ED
	db $2D,$E2,$28,$09,$28,$6F,$BC,$F9,$00,$28,$9F,$ED,$21,$E2,$28,$0B
	db $28,$0F,$BC,$F9,$00,$28,$9F,$00

DATA_144F:
	db $51,$14,$E0,$0A,$E7,$7B,$ED,$5F,$E3,$00,$FF,$FF,$E1,$09,$E2,$30
	db $0B,$07,$6F,$B7,$F9,$00,$07,$98,$E0,$0B,$ED,$AA,$EE,$28,$21,$E3
	db $00,$C8,$64,$28,$0F,$B0,$F9,$00,$28,$8C,$ED,$2D,$FB,$82,$D2,$00
	db $E2,$28,$09,$B0,$F9,$00,$28,$8C,$ED,$21,$E3,$00,$01,$00,$FB,$82
	db $D2,$00,$E2,$28,$0B,$B0,$F9,$00,$28,$8C,$00

DATA_149A:
	db $9C,$14,$E0,$0A,$E7,$7B,$ED,$5A,$E3,$00,$FF,$FF,$E1,$09,$E2,$2F
	db $0B,$07,$6F,$B7,$F9,$00,$07,$98,$E0,$08,$ED,$B4,$EE,$28,$37,$E3
	db $00,$C8,$C8,$E2,$28,$09,$28,$0F,$BC,$F9,$00,$28,$9F,$ED,$2D,$E2
	db $28,$0B,$28,$6F,$BC,$F9,$00,$28,$9F,$ED,$21,$E2,$28,$09,$28,$0F
	db $BC,$F9,$00,$28,$9F,$00

DATA_14E0:
	db $E2,$14,$E0,$0A,$E7,$7B,$ED,$5F,$E3,$00,$FF,$FF,$E1,$0B,$E2,$30
	db $09,$EA,$05,$07,$6F,$B7,$F9,$00,$07,$98,$E0,$0B,$ED,$AA,$EE,$28
	db $21,$E3,$00,$C8,$64,$28,$0F,$B0,$F9,$00,$28,$8C,$ED,$2D,$FB,$82
	db $D2,$00,$E2,$28,$0B,$B0,$F9,$00,$28,$8C,$ED,$21,$E3,$00,$01,$00
	db $FB,$82,$D2,$00,$E2,$28,$09,$B0,$F9,$00,$28,$8C,$00

DATA_152D:
	db $2F,$15,$E0,$05,$E7,$3E,$ED,$C8,$FB,$64,$D2,$00,$EA,$06,$E1,$0C
	db $E2,$50,$08,$E5,$0A,$6F,$AB,$F9,$00,$0A,$87,$E6,$08,$00,$00,$ED
	db $7D,$EE,$14,$41,$E2,$50,$0C,$E5,$AB,$F9,$00,$0A,$87,$E6,$02,$00
	db $00,$00

DATA_155F:
	db $61,$15,$E0,$05,$E7,$1F,$ED,$6E,$EA,$00,$FB,$78,$D2,$00,$EA,$FE
	db $E1,$09,$E2,$19,$0B,$05,$0F,$A4,$F9,$00,$05,$BC,$14,$6F,$BC,$F9
	db $00,$14,$A4,$ED,$21,$E2,$14,$09,$BC,$F9,$00,$14,$A4,$00

DATA_158D:
	db $8F,$15,$E0,$0A,$E7,$29,$ED,$BE,$EA,$00,$FB,$78,$D2,$00,$EA,$08
	db $E1,$09,$E2,$14,$0B,$05,$0F,$BC,$F9,$00,$05,$A4,$0F,$6F,$A4,$F9
	db $00,$0F,$BE,$ED,$44,$E2,$0F,$09,$A4,$F9,$00,$0F,$BE,$ED,$2D,$E2
	db $0F,$0B,$0F,$0F,$A4,$F9,$00,$0F,$BE,$00

DATA_15C7:
	db $C9,$15,$E0,$02,$E7,$7B,$ED,$C8,$E3,$00,$FF,$FF,$E1,$08,$E2,$99
	db $0C,$17,$0F,$9D,$EE,$78,$41,$E3,$00,$01,$00,$78,$81,$ED,$5F,$EE
	db $3C,$21,$E2,$3C,$08,$3C,$81,$00

DATA_15EF:
	db $F1,$15,$E0,$04,$E7,$7B,$ED,$AA,$EA,$10,$FB,$78,$D2,$00,$E1,$07
	db $E2,$1E,$0D,$05,$0F,$9A,$F9,$00,$1E,$A4,$19,$6F,$A4,$F9,$00,$19
	db $9F,$ED,$8C,$E2,$1E,$07,$05,$0F,$9A,$F9,$00,$1E,$A4,$19,$6F,$A4
	db $F9,$00,$19,$9F,$ED,$78,$E2,$1E,$0D,$05,$0F,$9A,$F9,$00,$1E,$A4
	db $19,$6F,$A4,$F9,$00,$19,$9F,$ED,$55,$E2,$1E,$07,$05,$0F,$9A,$F9
	db $00,$1E,$A4,$19,$6F,$A4,$F9,$00,$19,$9F,$ED,$41,$E2,$1E,$0D,$05
	db $0F,$9A,$F9,$00,$1E,$A4,$19,$6F,$A4,$F9,$00,$19,$9F,$ED,$2D,$E2
	db $1E,$07,$05,$0F,$9A,$F9,$00,$1E,$A4,$19,$6F,$A4,$F9,$00,$19,$9F
	db $ED,$21,$E2,$1E,$0D,$05,$0F,$9A,$F9,$00,$1E,$A4,$19,$6F,$A4,$F9
	db $00,$19,$9F,$00

DATA_1683:
	db $85,$16,$E0,$02,$E7,$7B,$ED,$FF,$E3,$00,$FF,$FF,$FB,$64,$D2,$00
	db $EA,$FC,$E1,$0C,$E2,$2D,$08,$0F,$0F,$9D,$F9,$00,$0F,$8C,$1E,$98
	db $F9,$00,$1E,$93,$E3,$00,$01,$00,$E2,$78,$0C,$5A,$8C,$EE,$5A,$21
	db $E2,$5A,$08,$C8,$00

DATA_16B8:
	db $BA,$16,$E0,$02,$E7,$7B,$ED,$FF,$E3,$00,$FF,$FF,$FB,$6E,$D2,$00
	db $E1,$08,$E2,$37,$0C,$0F,$0F,$9D,$F9,$00,$0F,$8C,$28,$98,$F9,$00
	db $28,$8C,$E3,$00,$01,$00,$FB,$96,$6E,$00,$E2,$32,$08,$32,$6F,$87
	db $ED,$7D,$E2,$32,$0C,$32,$0F,$87,$00

DATA_16F1:
	db $F3,$16,$E0,$CF,$E7,$3E,$ED,$FF,$EA,$05,$E3,$00,$B4,$F6,$FB,$46
	db $D2,$00,$E1,$0B,$E2,$96,$09,$1E,$0F,$A4,$F9,$00,$0A,$8C,$FB,$96
	db $D2,$00,$EE,$78,$64,$78,$89,$F9,$00,$3C,$80,$00

DATA_171D:
	db $1F,$17,$E0,$08,$E7,$7B,$ED,$FA,$E1,$0C,$E2,$25,$08,$07,$7F,$AD
	db $F9,$00,$07,$98,$E3,$00,$01,$00,$ED,$FF,$E0,$0A,$05,$BC,$E0,$00
	db $19,$B2,$F9,$00,$19,$98,$00

DATA_1744:
	db $46,$17,$E0,$08,$E7,$7B,$ED,$FA,$E1,$0C,$E2,$0A,$08,$0A,$7F,$B0
	db $F9,$00,$0A,$98,$E0,$CF,$E2,$3C,$0C,$1E,$6F,$93,$F9,$00,$1E,$8C
	db $ED,$96,$1E,$0F,$93,$F9,$00,$1E,$8C,$00

DATA_176E:
	db $70,$17,$E0,$CF,$E7,$7B,$ED,$DC,$E1,$0F,$E2,$28,$05,$28,$6F,$9A
	db $ED,$AA,$E2,$50,$0F,$50,$0F,$9A,$00

DATA_1787:
	db $89,$17,$E0,$0A,$E7,$7B,$ED,$FA,$E3,$00,$FF,$FF,$E1,$08,$E2,$2B
	db $08,$08,$6F,$B9,$F9,$00,$08,$93,$E0,$CF,$ED,$FF,$23,$9D,$ED,$9B
	db $E2,$23,$0C,$A1,$ED,$5F,$E2,$23,$08,$A1,$ED,$50,$E2,$23,$0C,$A1
	db $ED,$2D,$E2,$23,$08,$23,$0F,$A1,$00

DATA_17C0:
	db $C2,$17,$E0,$0A,$E7,$7B,$ED,$FF,$E3,$00,$FF,$FF,$E1,$0C,$E2,$2B
	db $08,$08,$6F,$BB,$F9,$00,$08,$8C,$E0,$CF,$ED,$FF,$23,$9D,$ED,$A5
	db $E2,$23,$0C,$9D,$ED,$64,$E2,$23,$08,$9D,$ED,$50,$E2,$23,$0C,$9D
	db $00

DATA_17F1:
	db $F3,$17,$E0,$0A,$E7,$7B,$ED,$FF,$E3,$00,$FF,$FF,$E1,$0C,$E2,$10
	db $08,$10,$6F,$BC,$F9,$00,$10,$8C,$E0,$CE,$ED,$FF,$E3,$00,$01,$00
	db $E2,$18,$0C,$18,$7F,$9F,$ED,$91,$E2,$18,$08,$9F,$ED,$5F,$E2,$18
	db $0C,$18,$0F,$9F,$00

DATA_1826:
	db $28,$18,$E0,$0A,$E7,$7B,$ED,$FF,$E3,$00,$FF,$FF,$E1,$07,$E2,$0A
	db $0D,$0A,$6F,$B4,$F9,$00,$0A,$8C,$E0,$04,$ED,$FF,$E3,$00,$01,$00
	db $E2,$18,$07,$18,$93,$ED,$91,$E2,$18,$0D,$93,$ED,$5F,$E2,$18,$07
	db $93,$00

DATA_1858:
	db $5A,$18,$E0,$08,$E7,$7B,$ED,$B4,$E3,$00,$FF,$FF,$E1,$08,$E2,$28
	db $0C,$0A,$6D,$BC,$F9,$00,$0A,$B0,$FB,$64,$7C,$00,$F1,$00,$18,$10
	db $18,$BC,$06,$67,$BC,$ED,$55,$E2,$1E,$08,$18,$6D,$BC,$06,$67,$BC
	db $ED,$30,$E2,$1E,$0C,$18,$6F,$BC,$06,$BC,$ED,$21,$E2,$1E,$08,$18
	db $BC,$06,$BC,$00

DATA_189C:
	db $9E,$18,$E0,$0A,$E7,$7B,$ED,$DC,$E1,$05,$E2,$61,$0F,$07,$7F,$C3
	db $F9,$00,$07,$B0,$E0,$0B,$ED,$A0,$1E,$6F,$B9,$F9,$00,$1E,$A7,$ED
	db $4B,$B9,$F9,$00,$1E,$A7,$ED,$2D,$1E,$0F,$B9,$F9,$00,$1E,$A7,$00

DATA_18CC:
	db $CE,$18,$E0,$03,$E7,$3E,$ED,$96,$E3,$00,$F0,$F0,$E1,$05,$E2,$64
	db $0F,$0A,$6F,$B7,$F9,$00,$0A,$8C,$E0,$08,$EE,$1E,$6E,$1E,$0F,$BC
	db $F9,$00,$1E,$93,$ED,$37,$1E,$6F,$BC,$F9,$00,$1E,$93,$ED,$24,$BC
	db $F9,$00,$1E,$93,$00

DATA_1901:
	db $03,$19,$E0,$08,$E7,$29,$ED,$B4,$E1,$05,$E2,$42,$0F,$0A,$6F,$B7
	db $F9,$00,$0A,$87,$ED,$D2,$0C,$9A,$ED,$41,$0A,$B7,$F9,$00,$0A,$87
	db $ED,$55,$0C,$9A,$ED,$2D,$0A,$B7,$F9,$00,$0A,$87,$ED,$37,$0C,$9A
	db $00

DATA_1932:
	db $34,$19,$E0,$0B,$E7,$7B,$ED,$FF,$EA,$02,$E1,$08,$E2,$0A,$0C,$0A
	db $6F,$91,$F9,$00,$0A,$99,$E0,$07,$FB,$96,$E7,$00,$E2,$1E,$08,$1E
	db $80,$F9,$00,$1E,$9A,$ED,$64,$E2,$1E,$0C,$80,$F9,$00,$1E,$9A,$ED
	db $41,$E2,$1E,$08,$1E,$0F,$80,$F9,$00,$1E,$9A,$00

DATA_196E:
	db $70,$19,$E0,$0B,$E7,$3E,$ED,$DC,$EA,$0C,$E1,$08,$E2,$14,$0C,$14
	db $6F,$82,$F9,$00,$14,$A4,$ED,$87,$E2,$14,$08,$82,$F9,$00,$14,$A4
	db $ED,$5F,$E2,$14,$0C,$82,$F9,$00,$14,$A4,$ED,$37,$E2,$14,$08,$82
	db $F9,$00,$14,$A4,$00

DATA_19A3:
	db $A5,$19,$E0,$06,$E7,$7B,$ED,$78,$E1,$08,$E2,$58,$0D,$08,$6F,$B7
	db $F9,$00,$08,$9D,$E0,$08,$ED,$B4,$FB,$97,$6F,$00,$50,$A5,$F9,$00
	db $0A,$B2,$ED,$41,$EE,$50,$21,$FB,$96,$D2,$00,$E2,$50,$12,$50,$0F
	db $B2,$00

DATA_19D5:
	db $D7,$19,$E0,$03,$E7,$7B,$ED,$50,$EE,$14,$DC,$E3,$00,$5A,$F2,$FB
	db $66,$B0,$00,$E1,$08,$E2,$28,$0C,$14,$6F,$BC,$F9,$00,$14,$C0,$FB
	db $84,$B1,$00,$05,$0B,$BF,$0F,$6F,$C0,$FB,$84,$D2,$00,$ED,$87,$E2
	db $28,$08,$05,$0F,$BF,$0F,$6F,$C0,$ED,$44,$E2,$28,$0C,$05,$0F,$BF
	db $0F,$6F,$C0,$ED,$2D,$E2,$28,$08,$05,$0F,$BF,$0F,$6F,$C0,$00

DATA_1A24:
	db $26,$1A,$E0,$0A,$E7,$3E,$ED,$FF,$E3,$00,$F0,$F0,$EA,$FD,$E1,$08
	db $E2,$28,$0C,$0A,$6F,$B7,$F9,$00,$0A,$8C,$E0,$0A,$EE,$1E,$A5,$1E
	db $B7,$F9,$00,$1E,$87,$ED,$7D,$E2,$1E,$08,$B7,$F9,$00,$1E,$87,$ED
	db $55,$E2,$1E,$0C,$B7,$F9,$00,$1E,$87,$ED,$41,$E2,$1E,$08,$B7,$F9
	db $00,$1E,$87,$00

DATA_1A68:
	db $6A,$1A,$E7,$29,$ED,$FF,$EE,$64,$7D,$E5,$E0,$CB,$FB,$50,$D2,$00
	db $03,$7F,$C3,$E0,$CA,$02,$6F,$85,$E6,$14,$00,$00,$00

DATA_1A85:
	db $87,$1A,$E0,$0A,$E7,$7B,$ED,$78,$E3,$00,$FF,$FF,$E1,$07,$E2,$07
	db $0D,$07,$6F,$BC,$F9,$00,$07,$8C,$E0,$CF,$ED,$EB,$E3,$00,$C8,$C8
	db $FB,$64,$D2,$00,$E2,$28,$07,$28,$B7,$F9,$00,$28,$C3,$ED,$55,$E2
	db $28,$0D,$B7,$F9,$00,$28,$C3,$ED,$2D,$E2,$28,$07,$28,$0F,$B7,$F9
	db $00,$28,$C3,$00

DATA_1AC9:
	db $CB,$1A,$E0,$0A,$E7,$7B,$ED,$B4,$E3,$00,$FF,$FF,$E1,$09,$E2,$0A
	db $0B,$0A,$6F,$A4,$F9,$00,$0A,$98,$E0,$CF,$ED,$DC,$E3,$00,$01,$00
	db $E2,$28,$08,$28,$A6,$00

DATA_1AEF:
	db $F1,$1A,$E0,$08,$E7,$08,$ED,$AF,$FB,$8C,$C8,$00,$E1,$06,$E2,$07
	db $0E,$07,$6F,$B7,$ED,$26,$EE,$07,$20,$07,$0F,$B7,$00

DATA_1B0C:
	db $0E,$1B,$E0,$04,$E7,$03,$ED,$F0,$EE,$08,$41,$E4,$04,$50,$FB,$46
	db $D2,$00,$EA,$06,$E1,$0E,$E2,$04,$06,$01,$0F,$A4,$A4,$A4,$A4,$E2
	db $04,$0E,$A4,$A4,$A4,$A4,$00

DATA_1B33:
	db $35,$1B,$E0,$CF,$E7,$7B,$ED,$AA,$FB,$64,$50,$00,$E1,$07,$E2,$32
	db $0D,$32,$6F,$BC,$F9,$00,$32,$B2,$ED,$2D,$E2,$32,$07,$BC,$F9,$00
	db $32,$B2,$00

DATA_1B56:
	db $58,$1B,$E0,$CF,$E7,$7B,$ED,$DC,$E3,$00,$FF,$C8,$FB,$64,$B4,$00
	db $EA,$0C,$E1,$07,$E2,$64,$0D,$0F,$7F,$B7,$F9,$00,$14,$BB,$14,$B7
	db $F9,$00,$14,$BB,$19,$B7,$F9,$00,$14,$BB,$28,$B7,$F9,$00,$14,$BF
	db $ED,$4B,$E2,$28,$07,$28,$0F,$B7,$F9,$00,$14,$BF,$00

DATA_1B93:
	db $95,$1B,$E0,$CE,$E7,$7B,$ED,$DC,$E3,$00,$FF,$FF,$E1,$09,$E2,$5F
	db $0D,$05,$6F,$8C,$F9,$00,$05,$9F,$E0,$CF,$ED,$F5,$E7,$29,$E3,$00
	db $01,$00,$FB,$5A,$C1,$00,$4C,$0F,$98,$00

DATA_1BBD:
	db $BF,$1B,$E0,$CE,$E7,$7B,$ED,$F0,$E3,$00,$FF,$FF,$E1,$0B,$E2,$53
	db $09,$05,$6F,$9C,$F9,$00,$05,$8C,$E0,$CF,$ED,$FF,$E7,$29,$E3,$00
	db $01,$00,$FB,$5A,$D2,$00,$4E,$0F,$9C,$00

DATA_1BE7:
	db $E9,$1B,$E0,$08,$E7,$7B,$ED,$F0,$E1,$0C,$E2,$0A,$08,$0A,$7F,$C3
	db $F9,$00,$0A,$87,$E0,$04,$ED,$E6,$EA,$04,$FB,$96,$E8,$00,$E3,$00
	db $64,$C8,$E2,$37,$0C,$37,$C3,$ED,$37,$E2,$32,$08,$32,$C3,$ED,$21
	db $E2,$32,$0C,$32,$0F,$C3,$00

DATA_1C1E:
	db $20,$1C,$E7,$7B,$ED,$FF,$E0,$CC,$FB,$96,$EF,$00,$E1,$05,$E2,$51
	db $0A,$03,$7B,$BC,$11,$7F,$A4,$03,$7B,$B9,$0D,$7F,$A1,$03,$7B,$B8
	db $12,$7F,$A0,$03,$7B,$B5,$13,$7F,$9D,$E2,$F3,$0F,$EE,$F3,$69,$E5
	db $03,$7B,$BC,$10,$7F,$A4,$03,$7B,$B9,$12,$08,$A1,$03,$7B,$B8,$11
	db $7F,$A0,$03,$7B,$B5,$12,$7F,$9D,$E6,$03,$00,$00,$E2,$A2,$14,$EE
	db $A2,$37,$E5,$03,$7B,$BC,$10,$7F,$A4,$03,$7B,$B9,$12,$08,$A1,$03
	db $7B,$B8,$11,$7F,$A0,$03,$7B,$B5,$12,$7F,$9D,$E6,$02,$00,$00,$00

DATA_1C8E:
	db $90,$1C,$E0,$0A,$E7,$7B,$ED,$FF,$E1,$0F,$E2,$0A,$05,$0A,$6F,$AB
	db $F9,$00,$0A,$8C,$E0,$CF,$E2,$28,$0F,$28,$9A,$ED,$C8,$E2,$50,$05
	db $50,$0F,$9A,$00

DATA_1CB2:
	db $B4,$1C,$E0,$CF,$E7,$67,$ED,$FF,$E3,$00,$FF,$FF,$E1,$0D,$E5,$E2
	db $1E,$07,$14,$6F,$8C,$0A,$8E,$E2,$15,$0D,$10,$91,$05,$8D,$E2,$2B
	db $07,$14,$8C,$17,$91,$E2,$2F,$0D,$13,$8B,$8E,$09,$87,$E6,$06,$00
	db $0A,$EE,$46,$41,$EA,$04,$E2,$2A,$07,$17,$91,$13,$8B,$E2,$1C,$0D
	db $8E,$09,$87,$00

DATA_1CF6:
	db $F8,$1C,$E0,$CF,$E7,$7B,$ED,$FF,$EA,$FF,$E1,$08,$E2,$1E,$0C,$0A
	db $6F,$A8,$E0,$0B,$ED,$C8,$14,$A1,$F9,$00,$14,$85,$ED,$8C,$E2,$14
	db $08,$A1,$F9,$00,$14,$85,$ED,$2D,$E2,$14,$0C,$14,$0F,$A1,$F9,$00
	db $14,$85,$00

DATA_1D29:
	db $2B,$1D,$E0,$06,$E7,$67,$ED,$E1,$E1,$0C,$E2,$1A,$08,$03,$6F,$B2
	db $E0,$04,$0A,$A4,$E0,$06,$ED,$5F,$03,$B2,$E0,$04,$0A,$A4,$00

DATA_1D48:
	db $4A,$1D,$E0,$0A,$E7,$7B,$ED,$FF,$E1,$09,$E2,$26,$0B,$08,$7F,$B9
	db $F9,$00,$08,$98,$E0,$CF,$ED,$FF,$FB,$96,$D2,$00,$F4,$7F,$1E,$0F
	db $A2,$00

DATA_1D6A:
	db $6C,$1D,$E0,$0A,$E7,$7B,$ED,$FF,$E1,$0B,$E2,$2C,$09,$0C,$7F,$C3
	db $F9,$00,$0C,$98,$E0,$CF,$ED,$FF,$FB,$96,$D2,$00,$F4,$F5,$20,$0F
	db $A3,$00

DATA_1D8C:
	db $8E,$1D,$E0,$CE,$E7,$7B,$ED,$FA,$E3,$00,$FF,$FF,$E1,$0C,$E2,$08
	db $08,$08,$6F,$A2,$F9,$00,$08,$80,$E0,$CF,$ED,$FF,$E3,$00,$01,$00
	db $E2,$3C,$0C,$3C,$A2,$ED,$64,$E2,$3C,$08,$A2,$ED,$37,$E2,$3C,$0C
	db $3C,$0F,$A2,$00

DATA_1DC0:
	db $C2,$1D,$E0,$02,$E7,$7B,$ED,$FF,$E3,$00,$FF,$FF,$E1,$08,$E2,$99
	db $0C,$17,$0F,$9D,$EE,$78,$5F,$E3,$00,$01,$00,$78,$81,$ED,$69,$EE
	db $3C,$21,$E2,$3C,$08,$3C,$81,$00

DATA_1DE8:
	db $EA,$1D,$E0,$0A,$E7,$52,$ED,$FF,$E1,$09,$E2,$0A,$0B,$0A,$0F,$BC
	db $F9,$00,$0A,$8C,$E0,$05,$E7,$3E,$EA,$03,$ED,$A0,$E2,$18,$08,$02
	db $C3,$BA,$C0,$B6,$C4,$B5,$B1,$B9,$C4,$B7,$B5,$02,$6F,$BF,$E7,$3E
	db $ED,$41,$E2,$18,$0D,$02,$0F,$C3,$BA,$C0,$B6,$BD,$B5,$B1,$B9,$C4
	db $B7,$C1,$02,$6F,$BF,$E7,$29,$ED,$21,$E2,$18,$07,$02,$0F,$C3,$BA
	db $C0,$B6,$BD,$B5,$B1,$B9,$C4,$B7,$C1,$02,$6F,$BF,$00

DATA_1E45:
	db $47,$1E,$E0,$04,$E7,$71,$ED,$9B,$EA,$F4,$E1,$0D,$E2,$C1,$07,$0C
	db $0F,$A1,$F9,$01,$0B,$B7,$E5,$06,$B9,$BA,$E6,$0F,$00,$00,$ED,$69
	db $EE,$60,$21,$E2,$66,$07,$E5,$B9,$BA,$E6,$08,$00,$00,$06,$6F,$B9
	db $00

DATA_1E76:
	db $78,$1E,$E0,$05,$E7,$19,$ED,$C0,$FB,$96,$D2,$00,$E1,$0B,$07,$0F
	db $81,$00

DATA_1E88:
	db $8A,$1E,$E0,$07,$E7,$29,$ED,$A5,$E1,$09,$E2,$48,$0B,$0C,$0F,$89
	db $F9,$01,$0B,$9F,$E5,$01,$A1,$A2,$E6,$1E,$00,$00,$ED,$73,$EE,$08
	db $37,$E2,$09,$09,$E5,$A1,$A2,$E6,$04,$00,$00,$95,$00

DATA_1EB5:
	db $B7,$1E,$E0,$CE,$E7,$7B,$ED,$FF,$E3,$00,$FF,$FF,$E1,$09,$E2,$32
	db $0B,$0A,$6F,$98,$F9,$00,$0A,$87,$E0,$08,$EE,$28,$B9,$E7,$19,$E3
	db $00,$01,$00,$28,$98,$F9,$00,$28,$87,$ED,$91,$EE,$14,$41,$E2,$14
	db $0B,$14,$0F,$8C,$F9,$00,$14,$87,$00,$00

DATA_1EEF:
	db $F1,$1E,$E0,$08,$E7,$7B,$ED,$DC,$E1,$07,$E2,$22,$0D,$11,$0F,$A5
	db $F9,$01,$10,$B1,$11,$6F,$B1,$F9,$00,$11,$A5,$ED,$6E,$E2,$22,$07
	db $11,$0F,$A5,$F9,$01,$10,$B1,$11,$6F,$B1,$F9,$00,$11,$A5,$ED,$46
	db $E2,$22,$0D,$11,$0F,$A5,$F9,$01,$10,$B1,$11,$6F,$B1,$F9,$00,$11
	db $A5,$ED,$32,$E2,$22,$07,$11,$0F,$A5,$F9,$01,$10,$B1,$11,$6F,$B1
	db $F9,$00,$11,$A5,$00

DATA_1F44:
	db $46,$1F,$E0,$02,$E7,$19,$ED,$A0,$EA,$04,$FB,$48,$A4,$00,$E1,$0B
	db $E2,$64,$09,$64,$0F,$C3,$00

DATA_1F5B:
	db $5D,$1F,$E0,$08,$E7,$19,$ED,$A0,$FB,$3E,$A4,$00,$E1,$09,$E2,$78
	db $0B,$78,$0F,$BE,$00

DATA_1F70:
	db $72,$1F,$E0,$CF,$E7,$08,$ED,$FF,$EA,$00,$FB,$82,$D2,$00,$E1,$09
	db $E2,$20,$0B,$20,$0F,$90,$00

DATA_1F87:
	db $89,$1F,$E0,$08,$E7,$7B,$ED,$F5,$E1,$0C,$E2,$25,$08,$07,$7F,$C3
	db $F9,$00,$07,$9F,$E0,$CA,$EA,$06,$0F,$C3,$F9,$00,$0F,$AB,$ED,$55
	db $BB,$F9,$00,$0F,$A3,$00

DATA_1FAD:
	db $AF,$1F,$E0,$04,$E7,$3E,$ED,$B9,$E1,$0C,$E2,$0C,$08,$0C,$0F,$A1
	db $F9,$00,$0C,$B7,$E2,$40,$0C,$E5,$01,$B9,$BB,$E6,$20,$00,$00,$EE
	db $14,$26,$E2,$20,$08,$E5,$B9,$BB,$E6,$10,$00,$00,$00

DATA_1FDA:
	db $DC,$1F,$E0,$0A,$E7,$7B,$ED,$FF,$E3,$00,$FF,$FF,$E1,$05,$E2,$2F
	db $0F,$11,$7F,$B9,$F9,$00,$11,$8C,$E0,$CF,$ED,$FF,$E3,$00,$01,$00
	db $1E,$78,$A1,$E0,$04,$ED,$FF,$EA,$12,$E2,$1E,$05,$05,$0F,$82,$F9
	db $00,$1E,$8C,$19,$6F,$8C,$F9,$00,$19,$87,$ED,$AF,$E2,$1E,$0F,$05
	db $0F,$82,$F9,$00,$1E,$8C,$19,$6F,$8C,$F9,$00,$19,$87,$ED,$7D,$E2
	db $1E,$05,$05,$0F,$82,$F9,$00,$1E,$8C,$19,$6F,$8C,$F9,$00,$19,$87
	db $ED,$55,$E2,$1E,$0F,$05,$0F,$82,$F9,$00,$1E,$8C,$19,$6F,$8C,$F9
	db $00,$19,$87,$ED,$32,$E2,$1E,$05,$05,$0F,$82,$F9,$00,$1E,$8C,$19
	db $6F,$8C,$F9,$00,$19,$87,$00

DATA_2061:
	db $63,$20,$E0,$0B,$E7,$7B,$ED,$FA,$EE,$19,$8C,$E1,$11,$E2,$19,$03
	db $19,$6F,$98,$F9,$00,$19,$AB,$ED,$DC,$EE,$64,$21,$FB,$66,$5A,$00
	db $E2,$64,$0A,$E5,$14,$0F,$A4,$F9,$00,$14,$B7,$E6,$06,$00,$00,$00

DATA_2091:
	db $93,$20,$E0,$D3,$E7,$7B,$ED,$DC,$FB,$50,$D2,$00,$E3,$00,$FA,$FF
	db $E1,$06,$E2,$42,$0E,$28,$7F,$AD,$F9,$02,$1E,$95,$1A,$6F,$A9,$F9
	db $02,$1E,$91,$ED,$2D,$E2,$28,$06,$28,$7F,$A9,$F9,$02,$1E,$91,$ED
	db $21,$E2,$28,$0E,$28,$0F,$A9,$F9,$02,$1E,$91,$00

DATA_20CD:
	db $CF,$20,$E0,$0A,$E7,$7B,$ED,$FF,$E1,$08,$E2,$26,$0C,$1E,$7F,$97
	db $F9,$00,$1E,$A9,$E0,$CE,$ED,$FF,$08,$A6,$E0,$04,$E7,$2F,$EE,$50
	db $7D,$E2,$50,$08,$E5,$02,$0F,$9F,$F9,$00,$02,$9E,$02,$6F,$A1,$F9
	db $00,$02,$A0,$E6,$14,$00,$04,$00

DATA_2105:
	db $07,$21,$E0,$CC,$E7,$3E,$ED,$FF,$E1,$07,$E2,$14,$0D,$14,$6F,$93
	db $F9,$05,$0A,$80,$ED,$A5,$FB,$5A,$D2,$00,$E2,$14,$07,$8C,$F9,$05
	db $14,$80,$ED,$5F,$E2,$14,$0D,$8C,$F9,$05,$14,$80,$ED,$41,$E2,$14
	db $07,$14,$0F,$8C,$F9,$05,$14,$80,$00

DATA_213E:
	db $40,$21,$E0,$0A,$E7,$7B,$ED,$87,$FB,$1E,$D2,$00,$E3,$00,$3C,$BE
	db $EA,$05,$E1,$0C,$E2,$78,$08,$78,$0F,$C4,$F9,$00,$78,$C1,$E2,$78
	db $0C,$C1,$F9,$00,$78,$BC,$E2,$78,$08,$28,$6F,$BC,$F9,$00,$28,$BB
	db $ED,$37,$FB,$96,$D2,$00,$32,$0F,$BC,$F9,$00,$28,$BB,$ED,$21,$BC
	db $F9,$00,$28,$BB,$00

DATA_2183:
	db $85,$21,$E0,$02,$E7,$29,$ED,$B4,$EA,$0C,$E1,$08,$E2,$51,$0C,$E5
	db $05,$0F,$A5,$F9,$00,$05,$A7,$04,$A7,$F9,$00,$04,$A5,$E6,$09,$00
	db $00,$ED,$4E,$EE,$2D,$21,$E2,$51,$08,$E5,$05,$A5,$F9,$00,$05,$A7
	db $04,$A7,$F9,$00,$04,$A5,$E6,$05,$00,$00,$01,$6F,$A4,$00

DATA_21C1:
	db $C3,$21,$E0,$09,$E7,$1B,$ED,$9B,$E1,$09,$E2,$0A,$0B,$0A,$6F,$BC
	db $F9,$00,$0A,$98,$ED,$37,$E2,$0A,$09,$BC,$F9,$00,$0A,$98,$ED,$21
	db $E2,$0A,$0B,$BC,$F9,$00,$0A,$98,$00

DATA_21EA:
	db $EC,$21,$E0,$CE,$E7,$7B,$ED,$FF,$E3,$00,$FF,$FF,$E1,$07,$E2,$19
	db $0D,$0A,$0F,$87,$F9,$00,$0A,$AB,$0F,$6F,$AB,$F9,$00,$0F,$80,$E0
	db $CF,$E7,$15,$ED,$FF,$E3,$00,$01,$00,$EA,$FA,$E2,$30,$07,$30,$0F
	db $9F,$00

DATA_221C:
	db $1E,$22,$E0,$0A,$E7,$7B,$ED,$DC,$E3,$00,$2D,$F3,$FB,$51,$B9,$00
	db $E1,$08,$E2,$1E,$0C,$1E,$0F,$B9,$F9,$00,$1E,$BC,$E2,$3C,$08,$3C
	db $BC,$F9,$00,$3C,$BD,$E2,$3C,$0C,$3C,$6F,$BD,$ED,$7D,$EE,$78,$21
	db $E2,$78,$08,$FB,$96,$D2,$00,$78,$0F,$BD,$00

DATA_2257:
	db $59,$22,$E0,$0A,$E7,$7B,$ED,$FF,$E3,$00,$FF,$FF,$E1,$0C,$E2,$14
	db $08,$17,$6F,$C4,$F9,$00,$17,$82,$E0,$04,$ED,$F0,$EE,$64,$AA,$E2
	db $64,$0C,$64,$C3,$F9,$00,$64,$8C,$00

DATA_2280:
	db $82,$22,$E0,$0A,$E7,$29,$ED,$A0,$E3,$00,$FF,$FA,$E1,$00,$E2,$0A
	db $14,$0A,$6F,$C0,$F9,$00,$0A,$87,$E0,$CF,$ED,$FF,$E3,$00,$0A,$00
	db $E1,$0C,$E2,$5A,$08,$5A,$0F,$9A,$00

DATA_22A9:
	db $AB,$22,$E0,$02,$E7,$21,$ED,$FF,$FB,$5A,$D2,$00,$EA,$0C,$E1,$07
	db $E2,$46,$0D,$32,$0F,$8C,$E2,$32,$07,$FB,$96,$C4,$00,$8C,$00

DATA_22C8:
	db $CA,$22,$E0,$03,$E7,$1F,$ED,$C8,$E3,$00,$FF,$B4,$FB,$6E,$C7,$00
	db $E1,$08,$E2,$19,$0C,$19,$7F,$B7,$E0,$03,$ED,$2D,$FB,$6E,$D2,$00
	db $E2,$19,$08,$EE,$19,$21,$19,$0F,$B7,$00

DATA_22F2:
	db $F4,$22,$E0,$05,$E7,$29,$ED,$EB,$E1,$09,$E2,$13,$0B,$06,$6F,$A4
	db $0D,$AB,$ED,$55,$E2,$13,$09,$06,$A4,$0D,$AB,$ED,$2D,$E2,$13,$0B
	db $06,$A4,$0D,$AB,$ED,$21,$E2,$13,$09,$06,$A4,$0D,$AB,$00

DATA_2320:
	db $22,$23,$E0,$05,$E7,$7B,$ED,$82,$EA,$00,$FB,$78,$D2,$00,$E1,$07
	db $E2,$14,$0D,$05,$0F,$BC,$F9,$00,$05,$A4,$0F,$6F,$A4,$F9,$00,$0F
	db $BE,$ED,$37,$E2,$0F,$07,$0F,$0F,$A4,$F9,$00,$0F,$BE,$ED,$21,$E2
	db $0F,$0D,$A4,$F9,$00,$0F,$BE,$00

DATA_2358:
	db $5A,$23,$E0,$08,$E7,$15,$ED,$6E,$E3,$00,$50,$F2,$EA,$FC,$E1,$0C
	db $E2,$FF,$08,$08,$0F,$A6,$F9,$00,$08,$AD,$32,$AD,$F9,$00,$31,$AF
	db $EE,$41,$E1,$7F,$AF,$F9,$00,$7E,$B2,$B2,$F9,$00,$7E,$B5,$B5,$00

DATA_2388:
	db $8A,$23,$E0,$0B,$E7,$15,$ED,$C8,$EE,$04,$8C,$E3,$00,$8C,$F0,$FB
	db $96,$D2,$00,$EA,$0F,$02,$0F,$BD,$F9,$00,$02,$BC,$14,$BC,$00

DATA_23A7:
	db $A9,$23,$E0,$DB,$E7,$15,$ED,$FF,$E1,$09,$E2,$16,$0B,$0B,$7F,$98
	db $ED,$4B,$0B,$0F,$98,$00

DATA_23BD:
	db $BF,$23,$E0,$D7,$E7,$15,$ED,$B4,$E1,$0B,$E2,$19,$09,$19,$6F,$93
	db $00

DATA_23CE:
	db $D0,$23,$E0,$D2,$E7,$15,$ED,$FF,$E1,$0B,$E2,$6D,$09,$0A,$7F,$93
	db $E0,$D3,$09,$93,$E0,$D0,$ED,$50,$FB,$5A,$C8,$00,$05,$6F,$A4,$06
	db $C9,$E0,$D2,$ED,$FF,$E2,$6D,$0B,$0A,$7F,$93,$E0,$D3,$09,$93,$E0
	db $D0,$ED,$50,$FB,$5A,$C8,$00,$05,$6F,$A4,$00

DATA_2409:
	db $0B,$24,$E0,$D9,$E7,$39,$ED,$FF,$EA,$18,$E1,$0C,$E2,$14,$08,$14
	db $6F,$8C,$F9,$0A,$46,$A4,$ED,$78,$E2,$14,$0C,$8C,$F9,$0A,$46,$A4
	db $ED,$41,$E2,$14,$08,$8C,$F9,$0A,$46,$A4,$ED,$2D,$E2,$14,$0C,$1E
	db $8C,$F9,$0A,$46,$A4,$00

DATA_243F:
	db $41,$24,$E0,$08,$E7,$06,$ED,$55,$FB,$1E,$D2,$00,$EA,$0C,$E1,$14
	db $E2,$B4,$00,$4D,$0F,$B7,$EE,$28,$BE,$23,$B7,$F9,$00,$22,$BB,$05
	db $BB,$E2,$0A,$05,$FB,$96,$C2,$00,$0F,$BB,$00

DATA_246A:
	db $6E,$24,$92,$24,$E0,$01,$E7,$52,$ED,$21,$E1,$03,$E2,$FF,$0B,$EE
	db $FF,$C8,$E5,$0A,$6F,$98,$E6,$1E,$00,$F6,$EA,$F4,$ED,$55,$EE,$C8
	db $20,$E5,$98,$E6,$14,$00,$F6,$00,$E0,$02,$E7,$52,$ED,$21,$E1,$02
	db $E2,$FF,$09,$E3,$00,$FA,$DC,$EE,$FF,$91,$64,$0F,$C3,$C8,$C8,$ED
	db $55,$EE,$C8,$20,$C3,$C8,$00

DATA_24B1:
	db $B5,$24,$CF,$24,$E0,$02,$E7,$7B,$ED,$FF,$FB,$96,$C0,$00,$E1,$14
	db $64,$0F,$82,$5A,$C8,$69,$C8,$64,$C8,$69,$C8,$1E,$C8,$00,$E0,$02
	db $E7,$7B,$ED,$FF,$E1,$00,$FB,$96,$C0,$00,$64,$0F,$84,$62,$84,$66
	db $84,$5F,$84,$69,$84,$1E,$08,$84,$00

DATA_24EA:
	db $EE,$24,$0A,$25,$E0,$03,$E7,$7B,$ED,$B4,$E1,$14,$E2,$FF,$0C,$FB
	db $28,$BE,$00,$E3,$00,$F6,$FB,$E5,$78,$0F,$9F,$E6,$0A,$00,$0A,$00
	db $E0,$03,$E7,$7B,$ED,$B4,$E1,$00,$E2,$FF,$0C,$FB,$28,$BE,$00,$E3
	db $14,$F6,$FB,$E5,$78,$0F,$9F,$E6,$0A,$00,$F6,$00

DATA_2526:
	db $2A,$25,$4B,$25,$E0,$08,$E7,$48,$ED,$78,$FB,$28,$1E,$00,$78,$0F
	db $BC,$F9,$00,$78,$C4,$ED,$2D,$3C,$C0,$F9,$00,$3C,$C4,$ED,$21,$C0
	db $F9,$00,$3C,$C4,$00,$E0,$CF,$E7,$48,$ED,$FF,$E2,$78,$12,$78,$7D
	db $9A,$ED,$55,$E2,$78,$0F,$78,$0D,$9A,$00

DATA_2560:
	db $64,$25,$AC,$25,$E0,$CF,$E7,$15,$ED,$D2,$E3,$00,$FF,$FF,$0A,$6F
	db $8C,$14,$87,$E0,$0A,$E7,$67,$ED,$D2,$E3,$00,$FF,$FF,$0A,$C0,$F9
	db $00,$0A,$87,$ED,$FF,$32,$A8,$F9,$00,$32,$82,$ED,$C8,$4B,$90,$F9
	db $00,$4B,$82,$ED,$A0,$32,$90,$F9,$00,$32,$82,$ED,$5F,$4B,$90,$F9
	db $00,$4B,$82,$ED,$55,$32,$90,$F9,$00,$32,$82,$00,$E0,$CF,$E7,$15
	db $ED,$C3,$E3,$00,$FF,$FF,$05,$6F,$87,$0F,$89,$0A,$8C,$E0,$0A,$E7
	db $67,$ED,$E6,$FB,$96,$D2,$00,$EA,$0C,$E3,$00,$32,$FC,$C3,$F9,$00
	db $0A,$87,$ED,$FF,$32,$A8,$F9,$00,$32,$82,$ED,$C8,$4B,$90,$F9,$00
	db $4B,$82,$ED,$A0,$32,$90,$F9,$00,$32,$82,$ED,$5F,$4B,$90,$F9,$00
	db $4B,$82,$ED,$55,$32,$90,$F9,$00,$32,$82,$00

DATA_25FB:
	db $FF,$25,$1A,$26,$E0,$04,$E7,$08,$ED,$BE,$E1,$09,$E2,$05,$0B,$01
	db $6F,$B1,$ED,$78,$B1,$ED,$4B,$B1,$ED,$32,$B1,$ED,$21,$B1,$00,$E0
	db $04,$E7,$08,$ED,$96,$F4,$37,$E1,$0B,$E2,$05,$09,$01,$6F,$B1,$ED
	db $50,$B1,$ED,$2D,$B1,$ED,$21,$B1,$ED,$20,$B1,$00

DATA_2637:
	db $3B,$26,$5B,$26,$E0,$06,$E7,$15,$ED,$BE,$E1,$0C,$E5,$04,$0F,$B9
	db $B5,$E6,$02,$00,$00,$ED,$8C,$EE,$20,$21,$E5,$B9,$B5,$E6,$04,$00
	db $00,$02,$A1,$00,$E0,$06,$E7,$15,$ED,$50,$F4,$37,$E1,$08,$02,$0F
	db $B9,$ED,$AA,$E5,$04,$B9,$B5,$E6,$02,$00,$00,$ED,$78,$EE,$20,$21
	db $E5,$B9,$B5,$E6,$04,$00,$00,$00

DATA_267F:
	db $83,$26,$D7,$26,$E0,$0A,$E7,$29,$ED,$91,$E1,$08,$E2,$28,$0C,$E3
	db $00,$FF,$82,$0A,$6F,$C3,$F9,$00,$0A,$93,$E0,$08,$ED,$8C,$E3,$00
	db $01,$00,$0F,$C3,$ED,$37,$C3,$E0,$0A,$ED,$BE,$E3,$00,$FF,$FA,$0A
	db $C0,$F9,$00,$0A,$87,$E0,$CF,$ED,$FF,$E3,$00,$0A,$00,$E2,$4B,$08
	db $4B,$7F,$98,$ED,$82,$E2,$4B,$0C,$98,$ED,$4B,$E2,$4B,$08,$98,$ED
	db $37,$E2,$4B,$0C,$4B,$0F,$98,$00,$E0,$0A,$E7,$29,$ED,$82,$EE,$12
	db $0A,$E1,$0C,$E2,$28,$08,$E3,$00,$FF,$96,$0A,$6F,$B7,$F9,$00,$0A
	db $93,$E0,$04,$ED,$A5,$0F,$C3,$ED,$2D,$C3,$E0,$0A,$FB,$96,$D2,$00
	db $ED,$91,$EA,$0C,$E3,$00,$FF,$FC,$0A,$0F,$C3,$F9,$00,$0A,$87,$ED
	db $FF,$E2,$37,$0C,$32,$A8,$F9,$00,$32,$82,$ED,$C8,$E2,$4B,$08,$4B
	db $90,$F9,$00,$4B,$82,$ED,$7D,$E2,$32,$0C,$32,$90,$F9,$00,$32,$82
	db $ED,$41,$E2,$4B,$08,$4B,$90,$F9,$00,$4B,$82,$ED,$2D,$E2,$32,$0C
	db $32,$90,$F9,$00,$32,$82,$00

DATA_2746:
	db $4A,$27,$75,$27,$E0,$02,$E7,$7B,$ED,$D2,$E3,$00,$FF,$FF,$E1,$0F
	db $E2,$46,$05,$0A,$6F,$C3,$F9,$00,$0A,$8C,$32,$8C,$F9,$00,$32,$C3
	db $ED,$21,$0A,$C3,$F9,$00,$0A,$8C,$32,$8C,$F9,$00,$32,$C3,$00,$E0
	db $0A,$E7,$7B,$ED,$8C,$E3,$00,$FA,$FF,$E1,$05,$E2,$46,$0F,$0A,$6F
	db $BC,$F9,$00,$0A,$A4,$32,$A4,$F9,$00,$32,$BC,$ED,$21,$0A,$BC,$F9
	db $00,$0A,$A4,$32,$A4,$F9,$00,$32,$BC,$00

DATA_27A0:
	db $A4,$27,$CF,$27,$E0,$0A,$E7,$67,$ED,$A0,$EE,$21,$FF,$EA,$F8,$E1
	db $06,$E2,$82,$0E,$1E,$0F,$98,$F9,$00,$1E,$C3,$EE,$2D,$B9,$32,$6F
	db $C3,$F9,$00,$32,$A4,$ED,$41,$32,$0F,$C3,$F9,$00,$32,$A4,$00,$E0
	db $0A,$E7,$67,$ED,$55,$EA,$FA,$F4,$5F,$E1,$0E,$E2,$82,$06,$0F,$0F
	db $98,$F9,$00,$1E,$C3,$ED,$6E,$EE,$21,$FF,$1E,$98,$F9,$00,$1E,$C3
	db $EE,$2D,$B9,$32,$6F,$C3,$F9,$00,$32,$A4,$ED,$2D,$23,$0F,$C3,$F9
	db $00,$32,$A4,$00

DATA_2804:
	db $08,$28,$39,$28,$E0,$0A,$E7,$7B,$ED,$FF,$FB,$96,$D2,$00,$E3,$00
	db $5A,$FF,$EA,$06,$E1,$05,$E2,$9D,$0F,$11,$0F,$A2,$F9,$00,$11,$80
	db $14,$98,$ED,$AA,$98,$ED,$82,$98,$ED,$5F,$98,$ED,$41,$98,$ED,$2D
	db $98,$ED,$21,$98,$00,$E0,$0A,$E7,$7B,$ED,$FF,$E3,$00,$FF,$FF,$FB
	db $96,$D2,$00,$E1,$0F,$E2,$9D,$05,$11,$6F,$BA,$F9,$00,$11,$87,$14
	db $A4,$F9,$00,$14,$87,$ED,$AA,$14,$0F,$A4,$ED,$82,$A4,$ED,$5F,$A4
	db $ED,$41,$A4,$ED,$2D,$A4,$ED,$21,$A4,$00

DATA_286E:
	db $72,$28,$8C,$28,$E0,$09,$E7,$3E,$ED,$8C,$E1,$09,$08,$6F,$B2,$11
	db $BE,$ED,$2D,$08,$B2,$11,$BE,$ED,$21,$08,$B2,$11,$BE,$00,$E0,$05
	db $E7,$3E,$ED,$78,$E1,$0B,$08,$6F,$B2,$11,$BE,$ED,$2C,$08,$B2,$11
	db $BE,$ED,$21,$08,$B2,$11,$BE,$00

DATA_28A6:
	db $AA,$28,$D2,$28,$E0,$CF,$E7,$7B,$ED,$DC,$EE,$3C,$FF,$FB,$53,$6F
	db $00,$E1,$0C,$14,$7F,$9F,$15,$9F,$16,$6F,$9F,$FB,$50,$D2,$00,$14
	db $7F,$C3,$14,$7B,$C3,$14,$75,$C3,$14,$03,$C3,$00,$E0,$CF,$E7,$7B
	db $ED,$DC,$EE,$37,$FF,$FB,$53,$6F,$00,$E1,$08,$14,$7F,$A5,$15,$A5
	db $16,$6F,$A5,$FB,$5A,$D2,$00,$14,$7F,$A5,$14,$7B,$A5,$14,$75,$A5
	db $14,$03,$A5,$00

DATA_28FA:
	db $FE,$28,$2D,$29,$E0,$08,$E7,$7B,$ED,$F0,$E1,$05,$E2,$1C,$05,$FB
	db $6E,$D2,$00,$08,$0F,$C3,$F9,$00,$08,$B7,$E7,$29,$EE,$14,$4B,$14
	db $6F,$C0,$FB,$96,$D2,$00,$ED,$44,$EE,$19,$26,$19,$C0,$ED,$21,$19
	db $0F,$C0,$00,$E0,$08,$E7,$7B,$ED,$DC,$F4,$0A,$E1,$0F,$E2,$1C,$05
	db $FB,$6E,$D2,$00,$08,$0F,$C3,$F9,$00,$08,$B7,$E7,$29,$EE,$14,$41
	db $14,$6F,$C0,$FB,$96,$D2,$00,$ED,$2D,$EE,$19,$21,$19,$C0,$ED,$21
	db $EE,$19,$20,$19,$0F,$C0,$00

DATA_2961:
	db $65,$29,$BC,$29,$E0,$01,$E7,$7B,$ED,$21,$E1,$03,$E2,$FF,$0B,$EE
	db $FF,$D2,$E5,$0A,$6F,$98,$E6,$18,$00,$F6,$EA,$F4,$ED,$55,$EE,$3C
	db $2D,$E5,$98,$E6,$06,$00,$F6,$E0,$D9,$E7,$3E,$ED,$FF,$E3,$00,$5A
	db $F2,$EA,$00,$1E,$0F,$85,$F9,$00,$19,$96,$28,$6F,$96,$F9,$00,$19
	db $91,$ED,$37,$1E,$0F,$85,$F9,$00,$19,$96,$28,$6F,$96,$F9,$00,$19
	db $91,$ED,$21,$32,$0F,$85,$F9,$00,$19,$96,$00,$E0,$02,$E7,$7B,$ED
	db $21,$E1,$02,$E2,$FF,$09,$E3,$00,$FA,$DC,$EE,$FF,$A5,$78,$0F,$C3
	db $C3,$ED,$7D,$EE,$3C,$4B,$3C,$6F,$C3,$E0,$DB,$E7,$3E,$ED,$7D,$EA
	db $00,$F4,$14,$E3,$00,$5A,$F2,$05,$6D,$85,$F9,$00,$19,$96,$ED,$A5
	db $1E,$0F,$85,$F9,$00,$19,$96,$28,$6F,$96,$F9,$00,$19,$91,$ED,$26
	db $1E,$0F,$85,$F9,$00,$19,$96,$28,$6F,$96,$F9,$00,$19,$91,$ED,$21
	db $2D,$0F,$85,$F9,$00,$19,$96,$00

DATA_2A19:
	db $1D,$2A,$53,$2A,$E0,$08,$E7,$7B,$ED,$FA,$FB,$28,$1E,$00,$E2,$78
	db $0E,$5A,$7F,$BC,$ED,$4B,$FB,$96,$D2,$00,$1E,$0F,$BC,$ED,$78,$E7
	db $48,$E2,$78,$12,$78,$BC,$F9,$00,$78,$C4,$ED,$2D,$3C,$C0,$F9,$00
	db $3C,$C4,$ED,$21,$C0,$F9,$00,$3C,$C4,$00,$E0,$04,$E7,$7B,$ED,$5F
	db $FB,$28,$1E,$00,$F4,$7D,$E2,$78,$0F,$5A,$7F,$BC,$ED,$21,$FB,$96
	db $D2,$00,$1E,$BC,$E0,$CF,$E7,$48,$ED,$FF,$E2,$78,$12,$78,$7D,$9A
	db $ED,$55,$E2,$78,$0F,$78,$0D,$9A,$00

DATA_2A82:
	db $86,$2A,$B8,$2A,$E0,$09,$E7,$21,$ED,$20,$EE,$96,$5F,$E1,$08,$E5
	db $0A,$6F,$BC,$F9,$00,$0A,$B0,$E6,$0F,$00,$FB,$ED,$2D,$EE,$96,$21
	db $FB,$96,$C0,$00,$E5,$0A,$0F,$BC,$F9,$00,$0A,$B0,$E6,$0A,$00,$FB
	db $ED,$0A,$05,$6F,$BC,$00,$E0,$09,$E7,$21,$ED,$20,$EE,$C8,$46,$F4
	db $55,$E1,$0C,$05,$6F,$BC,$F9,$00,$0A,$B0,$ED,$20,$EE,$96,$5F,$E5
	db $0A,$BC,$F9,$00,$0A,$B0,$E6,$0F,$00,$FB,$FB,$96,$C0,$00,$ED,$2D
	db $EE,$96,$21,$E5,$0A,$0F,$BC,$F9,$00,$0A,$B0,$E6,$0F,$00,$FB,$00

DATA_2AF2:
	db $F6,$2A,$1B,$2B,$E0,$09,$E7,$1F,$ED,$4B,$EE,$7F,$21,$FB,$3C,$B7
	db $00,$E1,$14,$E2,$A7,$00,$7F,$6F,$BC,$F9,$00,$7F,$A4,$FB,$78,$C0
	db $00,$1E,$08,$AB,$F9,$00,$1E,$A4,$00,$E0,$09,$E7,$1F,$ED,$37,$EE
	db $7F,$21,$FB,$3C,$B7,$00,$EA,$01,$F4,$37,$E1,$00,$E2,$A7,$14,$7F
	db $6F,$BC,$F9,$00,$7F,$A4,$FB,$78,$C1,$00,$1E,$08,$AB,$F9,$00,$1E
	db $A4,$00

DATA_2B44:
	db $48,$2B,$78,$2B,$E0,$06,$E7,$15,$ED,$91,$E3,$00,$64,$F5,$E1,$07
	db $E2,$1E,$0D,$1E,$0F,$A4,$F9,$00,$1E,$C3,$ED,$5A,$E2,$1E,$07,$0A
	db $B8,$F9,$00,$0A,$C4,$ED,$4B,$B8,$F9,$00,$0A,$C4,$ED,$28,$B8,$F9
	db $00,$0A,$C4,$00,$E0,$06,$E7,$15,$ED,$41,$F4,$64,$E3,$00,$64,$F5
	db $E1,$0D,$E2,$1E,$07,$02,$0F,$A4,$ED,$64,$1C,$6F,$A5,$F9,$00,$1E
	db $C4,$E0,$D6,$ED,$F5,$E2,$1E,$0A,$E3,$00,$01,$00,$F4,$00,$1E,$0D
	db $98,$00

DATA_2BA6:
	db $AA,$2B,$EB,$2B,$E0,$09,$E7,$0E,$ED,$00,$FB,$96,$D2,$00,$E1,$08
	db $E2,$50,$0C,$04,$6F,$AD,$ED,$8C,$E5,$02,$0F,$AD,$F9,$01,$01,$B6
	db $02,$07,$AD,$F9,$01,$01,$B6,$E6,$14,$00,$00,$EE,$08,$21,$E2,$08
	db $0C,$E5,$02,$0F,$AD,$F9,$01,$01,$B6,$E6,$04,$00,$00,$02,$6F,$AD
	db $F9,$01,$01,$B6,$00,$E0,$D4,$ED,$FF,$E7,$0E,$E1,$0C,$E2,$5E,$08
	db $18,$6F,$93,$E0,$D5,$46,$94,$00

DATA_2BFE:
	db $02,$2C,$31,$2C,$E0,$09,$E7,$0C,$ED,$6E,$EE,$38,$21,$EA,$0A,$FB
	db $96,$D2,$00,$F4,$32,$E1,$08,$01,$6F,$AD,$B9,$AF,$B7,$B1,$B5,$B3
	db $E0,$D7,$ED,$E6,$F4,$00,$EA,$00,$E1,$0A,$0F,$93,$E0,$D8,$ED,$FF
	db $22,$91,$00,$E0,$09,$E7,$0C,$ED,$9B,$EE,$38,$21,$EA,$0D,$FB,$96
	db $D2,$00,$E1,$0C,$E5,$01,$6F,$AD,$B9,$AF,$B7,$B1,$B5,$B3,$E6,$08
	db $00,$03,$00

DATA_2C51:
	db $55,$2C,$79,$2C,$E0,$06,$E7,$11,$ED,$AA,$FB,$82,$D2,$00,$E1,$08
	db $06,$0F,$A4,$E1,$0A,$AB,$E1,$0B,$B4,$ED,$DC,$EB,$00,$2C,$5A,$FB
	db $8C,$C4,$00,$E1,$0A,$18,$BC,$00,$E0,$06,$E7,$11,$ED,$5F,$F4,$0F
	db $FB,$82,$D2,$00,$E1,$07,$03,$0F,$A4,$ED,$AA,$E1,$09,$06,$A8,$E1
	db $0B,$B0,$E1,$0A,$B7,$ED,$91,$EB,$00,$2C,$5A,$FB,$8C,$C4,$00,$E1
	db $09,$15,$BC,$00

DATA_2CA5:
	db $A9,$2C,$BD,$2C,$E0,$D1,$E7,$15,$ED,$FF,$E1,$0B,$E2,$85,$09,$39
	db $7F,$93,$ED,$21,$4C,$0F,$93,$00,$E0,$D1,$E7,$15,$ED,$37,$F4,$37
	db $E1,$09,$E2,$85,$0B,$10,$6F,$93,$ED,$64,$39,$7F,$93,$ED,$21,$3C
	db $0F,$93,$00

DATA_2CD8:
	db $DC,$2C,$FF,$2C,$E0,$DA,$E7,$1F,$ED,$FF,$E1,$0C,$E2,$6D,$08,$14
	db $7F,$98,$F4,$F5,$12,$7D,$95,$F4,$17,$13,$7E,$95,$F4,$F0,$14,$7D
	db $93,$ED,$2D,$20,$0F,$93,$00,$E0,$DA,$E7,$1F,$ED,$55,$F4,$A5,$E1
	db $0B,$E2,$6D,$09,$0C,$7F,$98,$ED,$5F,$14,$98,$F4,$F5,$12,$7D,$95
	db $F4,$17,$13,$7E,$95,$F4,$F0,$14,$7D,$93,$ED,$21,$14,$0D,$93,$00

DATA_2D28:
	db $2C,$2D,$48,$2D,$E0,$00,$E7,$15,$ED,$FF,$F4,$E1,$EA,$08,$E1,$09
	db $E2,$43,$0B,$19,$7F,$95,$E0,$01,$EA,$02,$F4,$87,$2A,$0F,$98,$00
	db $E0,$00,$E7,$15,$ED,$21,$F4,$FF,$EA,$08,$E1,$0B,$E2,$43,$09,$0C
	db $6F,$95,$ED,$69,$19,$7F,$95,$E0,$01,$EA,$02,$F4,$A5,$FB,$96,$C5
	db $00,$1E,$0F,$98,$00

DATA_2D6D:
	db $71,$2D,$84,$2D,$E0,$00,$E7,$15,$EA,$08,$F4,$E1,$ED,$FF,$E1,$09
	db $E2,$3E,$0B,$3E,$0F,$95,$00,$E0,$00,$E7,$15,$EA,$08,$F4,$FF,$ED
	db $21,$E1,$0B,$E2,$3E,$09,$0C,$6F,$95,$ED,$69,$FB,$96,$C1,$00,$32
	db $0F,$95,$00

DATA_2DA0:
	db $A4,$2D,$C5,$2D,$E0,$00,$E7,$15,$ED,$FF,$EA,$08,$F4,$E1,$E1,$09
	db $E2,$55,$0B,$14,$7F,$95,$E0,$01,$EA,$02,$F4,$87,$97,$E0,$02,$F4
	db $9B,$2D,$0F,$94,$00,$E0,$00,$E7,$15,$ED,$21,$EA,$08,$F4,$FF,$E1
	db $0B,$E2,$55,$09,$0C,$7F,$95,$ED,$69,$14,$95,$E0,$01,$EA,$02,$F4
	db $A5,$97,$E0,$02,$F4,$B9,$FB,$96,$C2,$00,$21,$0F,$94,$00

DATA_2DEE:
	db $F2,$2D,$0E,$2E,$E0,$00,$E7,$15,$ED,$FF,$EA,$09,$F4,$E1,$E1,$0B
	db $E2,$49,$09,$22,$7F,$94,$E0,$01,$EA,$02,$F4,$87,$27,$0F,$95,$00
	db $E0,$00,$E7,$15,$ED,$21,$EA,$09,$F4,$FF,$E1,$09,$E2,$49,$0B,$0C
	db $6F,$94,$ED,$69,$22,$7F,$94,$E0,$01,$EA,$02,$F4,$87,$FB,$96,$C2
	db $00,$1B,$0F,$95,$00

DATA_2E33:
	db $37,$2E,$4A,$2E,$E0,$00,$E7,$15,$ED,$FF,$EA,$08,$F4,$E1,$E1,$09
	db $E2,$5A,$0B,$5A,$0F,$94,$00,$E0,$00,$E7,$15,$ED,$21,$EA,$08,$F4
	db $FF,$E1,$0B,$E2,$5A,$09,$0C,$6F,$94,$ED,$69,$FB,$96,$BB,$00,$4E
	db $0F,$94,$00

DATA_2E66:
	db $6A,$2E,$7D,$2E,$E0,$00,$E7,$15,$ED,$FF,$EA,$08,$F4,$E1,$E1,$0B
	db $E2,$48,$09,$48,$0F,$95,$00,$E0,$00,$E7,$15,$ED,$21,$EA,$08,$F4
	db $FF,$E1,$09,$E2,$48,$0B,$0C,$6F,$95,$ED,$69,$FB,$96,$BA,$00,$3C
	db $0F,$95,$00

DATA_2E99:
	db $9D,$2E,$B9,$2E,$E0,$00,$E7,$15,$ED,$FF,$EA,$08,$F4,$E1,$E1,$0B
	db $E2,$89,$09,$28,$7F,$95,$E0,$01,$EA,$02,$F4,$87,$61,$0F,$97,$00
	db $E0,$00,$E7,$15,$ED,$21,$EA,$08,$F4,$FF,$E1,$09,$E2,$89,$0B,$0C
	db $6F,$95,$ED,$69,$FB,$96,$C3,$00,$28,$7F,$95,$E0,$01,$EA,$02,$F4
	db $A5,$FB,$96,$B4,$00,$55,$0F,$97,$00

DATA_2EE2:
	db $E6,$2E,$02,$2F,$E0,$00,$E7,$15,$ED,$FF,$EA,$08,$F4,$E1,$E1,$0B
	db $E2,$75,$09,$2D,$7F,$94,$E0,$01,$EA,$02,$F4,$87,$48,$0F,$97,$00
	db $E0,$00,$E7,$15,$ED,$2D,$EA,$08,$F4,$FF,$E1,$09,$E2,$75,$0B,$0C
	db $6F,$94,$ED,$69,$FB,$96,$C3,$00,$2D,$7F,$94,$E0,$01,$EA,$02,$F4
	db $A5,$FB,$96,$BF,$00,$3C,$0F,$97,$00

DATA_2F2B:
	db $2F,$2F,$4B,$2F,$E0,$00,$E7,$15,$ED,$FF,$EA,$08,$F4,$E1,$E1,$0B
	db $E2,$59,$09,$28,$7F,$94,$E0,$01,$EA,$02,$F4,$87,$31,$0F,$96,$00
	db $E0,$00,$E7,$15,$ED,$21,$EA,$08,$F4,$FF,$E1,$09,$E2,$59,$0B,$0C
	db $6F,$94,$ED,$69,$FB,$96,$BE,$00,$28,$7F,$94,$E0,$01,$EA,$02,$F4
	db $A5,$FB,$96,$C3,$00,$25,$0F,$96,$00

DATA_2F74:
	db $78,$2F,$94,$2F,$E0,$00,$E7,$15,$ED,$FF,$EA,$08,$F4,$E1,$E1,$0B
	db $E2,$75,$09,$2D,$7F,$94,$E0,$01,$EA,$02,$F4,$87,$48,$0F,$96,$00
	db $E0,$00,$E7,$15,$ED,$21,$EA,$08,$F4,$FF,$E1,$09,$E2,$75,$0B,$0C
	db $7F,$94,$ED,$69,$FB,$96,$C2,$00,$2D,$94,$E0,$01,$EA,$02,$F4,$A5
	db $FB,$96,$C0,$00,$3C,$0F,$96,$00

DATA_2FBC:
	db $C0,$2F,$CA,$2F,$E0,$00,$E7,$15,$ED,$F5,$40,$0F,$AE,$00,$E0,$00
	db $E7,$15,$ED,$42,$F4,$64,$06,$7F,$AE,$ED,$52,$3A,$0F,$AE,$00

DATA_2FDB:
	db $DF,$2F,$ED,$2F,$E0,$07,$E7,$21,$ED,$B4,$06,$6F,$AA,$B1,$AE,$08
	db $B6,$00,$E0,$07,$E7,$21,$ED,$96,$F4,$28,$E1,$09,$06,$6F,$AA,$B1
	db $AE,$08,$B6,$00,$00

DATA_3000:

namespace off
base off
endmacro

;#############################################################################################################
;#############################################################################################################
