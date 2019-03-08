_fm_casePlus:
;Click_FM_TIVA.c,54 :: 		void fm_casePlus( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,56 :: 		errorFlag = fm_volumeUp( );
BL	_fm_volumeUp+0
MOVW	R1, #lo_addr(_errorFlag+0)
MOVT	R1, #hi_addr(_errorFlag+0)
STRB	R0, [R1, #0]
;Click_FM_TIVA.c,58 :: 		if (errorFlag == 0)
CMP	R0, #0
IT	NE
BNE	L_fm_casePlus0
;Click_FM_TIVA.c,60 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr1_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr1_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,61 :: 		mikrobus_logWrite( "   *     volume up                          *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr2_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr2_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,62 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr3_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr3_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,63 :: 		}
IT	AL
BAL	L_fm_casePlus1
L_fm_casePlus0:
;Click_FM_TIVA.c,66 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr4_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr4_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,67 :: 		mikrobus_logWrite( "   *     volume max                         *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr5_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr5_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,68 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr6_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr6_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,69 :: 		}
L_fm_casePlus1:
;Click_FM_TIVA.c,70 :: 		}
L_end_fm_casePlus:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_casePlus
_fm_caseMinus:
;Click_FM_TIVA.c,72 :: 		void fm_caseMinus( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,74 :: 		errorFlag = fm_volumeDown( );
BL	_fm_volumeDown+0
MOVW	R1, #lo_addr(_errorFlag+0)
MOVT	R1, #hi_addr(_errorFlag+0)
STRB	R0, [R1, #0]
;Click_FM_TIVA.c,76 :: 		if (errorFlag == 0)
CMP	R0, #0
IT	NE
BNE	L_fm_caseMinus2
;Click_FM_TIVA.c,78 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr7_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr7_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,79 :: 		mikrobus_logWrite( "   *     volume down                        *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr8_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr8_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,80 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr9_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr9_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,81 :: 		}
IT	AL
BAL	L_fm_caseMinus3
L_fm_caseMinus2:
;Click_FM_TIVA.c,84 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr10_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr10_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,85 :: 		mikrobus_logWrite( "   *     volume min                         *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr11_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr11_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,86 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr12_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr12_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,87 :: 		}
L_fm_caseMinus3:
;Click_FM_TIVA.c,88 :: 		}
L_end_fm_caseMinus:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseMinus
_fm_caseSeek:
;Click_FM_TIVA.c,90 :: 		void fm_caseSeek( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,92 :: 		fm_seek( );
BL	_fm_seek+0
;Click_FM_TIVA.c,94 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_fm_caseSeek4:
SUBS	R7, R7, #1
BNE	L_fm_caseSeek4
NOP
NOP
NOP
;Click_FM_TIVA.c,96 :: 		fm_endSeek( );
BL	_fm_endSeek+0
;Click_FM_TIVA.c,98 :: 		Delay_ms(10);
MOVW	R7, #6782
MOVT	R7, #6
NOP
NOP
L_fm_caseSeek6:
SUBS	R7, R7, #1
BNE	L_fm_caseSeek6
NOP
NOP
NOP
;Click_FM_TIVA.c,100 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_TIVA.c,101 :: 		channelFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
VSTR	#1, S0, [R0, #0]
;Click_FM_TIVA.c,102 :: 		stationFrequency = fm_getChannel( );
BL	_fm_getChannel+0
MOVW	R1, #lo_addr(_stationFrequency+0)
MOVT	R1, #hi_addr(_stationFrequency+0)
STRH	R0, [R1, #0]
;Click_FM_TIVA.c,104 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_TIVA.c,105 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr13_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr13_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,106 :: 		mikrobus_logWrite( "   *     station found                      *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr14_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr14_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,107 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr15_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr15_Click_FM_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,108 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,109 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr16_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr16_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,111 :: 		FloatToStr( channelFrequency_, text );
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
VLDR	#1, S0, [R0, #0]
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_TIVA.c,112 :: 		mikrobus_logWrite( "   *     channel frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr17_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr17_Click_FM_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,113 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,114 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr18_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr18_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,115 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr19_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr19_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,116 :: 		}
L_end_fm_caseSeek:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseSeek
_fm_caseTune:
;Click_FM_TIVA.c,118 :: 		void fm_caseTune( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,120 :: 		fm_tune( 90.9 );
MOVW	R0, #52429
MOVT	R0, #17077
VMOV	S0, R0
BL	_fm_tune+0
;Click_FM_TIVA.c,122 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_fm_caseTune8:
SUBS	R7, R7, #1
BNE	L_fm_caseTune8
NOP
NOP
NOP
;Click_FM_TIVA.c,124 :: 		fm_endTune( );
BL	_fm_endTune+0
;Click_FM_TIVA.c,126 :: 		Delay_ms(10);
MOVW	R7, #6782
MOVT	R7, #6
NOP
NOP
L_fm_caseTune10:
SUBS	R7, R7, #1
BNE	L_fm_caseTune10
NOP
NOP
NOP
;Click_FM_TIVA.c,128 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_TIVA.c,129 :: 		tunedFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R0, #lo_addr(_tunedFrequency_+0)
MOVT	R0, #hi_addr(_tunedFrequency_+0)
VSTR	#1, S0, [R0, #0]
;Click_FM_TIVA.c,130 :: 		stationFrequency = fm_getChannel( );
BL	_fm_getChannel+0
MOVW	R1, #lo_addr(_stationFrequency+0)
MOVT	R1, #hi_addr(_stationFrequency+0)
STRH	R0, [R1, #0]
;Click_FM_TIVA.c,132 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr20_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr20_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,133 :: 		mikrobus_logWrite( "   *     tune complete                      *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr21_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr21_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,135 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_TIVA.c,136 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr22_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr22_Click_FM_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,137 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,138 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr23_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr23_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,140 :: 		FloatToStr( tunedFrequency_, text );
MOVW	R0, #lo_addr(_tunedFrequency_+0)
MOVT	R0, #hi_addr(_tunedFrequency_+0)
VLDR	#1, S0, [R0, #0]
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_TIVA.c,141 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr24_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr24_Click_FM_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,142 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,143 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr25_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr25_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,144 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr26_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr26_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,145 :: 		}
L_end_fm_caseTune:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseTune
_fm_caseMemorize:
;Click_FM_TIVA.c,147 :: 		void fm_caseMemorize( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,149 :: 		if (memory_ == 0)
MOVW	R0, #lo_addr(_memory_+0)
MOVT	R0, #hi_addr(_memory_+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_fm_caseMemorize12
;Click_FM_TIVA.c,151 :: 		station1 = stationFrequency;
MOVW	R0, #lo_addr(_stationFrequency+0)
MOVT	R0, #hi_addr(_stationFrequency+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_station1+0)
MOVT	R0, #hi_addr(_station1+0)
STRH	R1, [R0, #0]
;Click_FM_TIVA.c,152 :: 		memory_ += 1;
MOVW	R1, #lo_addr(_memory_+0)
MOVT	R1, #hi_addr(_memory_+0)
LDRB	R0, [R1, #0]
ADDS	R0, R0, #1
STRB	R0, [R1, #0]
;Click_FM_TIVA.c,154 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr27_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr27_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,155 :: 		mikrobus_logWrite( "   *     station 1 memorized                *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr28_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr28_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,156 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr29_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr29_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,157 :: 		}
IT	AL
BAL	L_fm_caseMemorize13
L_fm_caseMemorize12:
;Click_FM_TIVA.c,158 :: 		else if (memory_ == 1)
MOVW	R0, #lo_addr(_memory_+0)
MOVT	R0, #hi_addr(_memory_+0)
LDRB	R0, [R0, #0]
CMP	R0, #1
IT	NE
BNE	L_fm_caseMemorize14
;Click_FM_TIVA.c,160 :: 		station2 = stationFrequency;
MOVW	R0, #lo_addr(_stationFrequency+0)
MOVT	R0, #hi_addr(_stationFrequency+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_station2+0)
MOVT	R0, #hi_addr(_station2+0)
STRH	R1, [R0, #0]
;Click_FM_TIVA.c,161 :: 		memory_ += 1;
MOVW	R1, #lo_addr(_memory_+0)
MOVT	R1, #hi_addr(_memory_+0)
LDRB	R0, [R1, #0]
ADDS	R0, R0, #1
STRB	R0, [R1, #0]
;Click_FM_TIVA.c,163 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr30_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr30_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,164 :: 		mikrobus_logWrite( "   *     station 2 memorized                *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr31_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr31_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,165 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr32_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr32_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,166 :: 		}
IT	AL
BAL	L_fm_caseMemorize15
L_fm_caseMemorize14:
;Click_FM_TIVA.c,167 :: 		else if (memory_ == 2)
MOVW	R0, #lo_addr(_memory_+0)
MOVT	R0, #hi_addr(_memory_+0)
LDRB	R0, [R0, #0]
CMP	R0, #2
IT	NE
BNE	L_fm_caseMemorize16
;Click_FM_TIVA.c,169 :: 		station3 = stationFrequency;
MOVW	R0, #lo_addr(_stationFrequency+0)
MOVT	R0, #hi_addr(_stationFrequency+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_station3+0)
MOVT	R0, #hi_addr(_station3+0)
STRH	R1, [R0, #0]
;Click_FM_TIVA.c,170 :: 		memory_ += 1;
MOVW	R1, #lo_addr(_memory_+0)
MOVT	R1, #hi_addr(_memory_+0)
LDRB	R0, [R1, #0]
ADDS	R0, R0, #1
STRB	R0, [R1, #0]
;Click_FM_TIVA.c,172 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr33_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr33_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,173 :: 		mikrobus_logWrite( "   *     station 3 memorized                *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr34_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr34_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,174 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr35_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr35_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,175 :: 		}
IT	AL
BAL	L_fm_caseMemorize17
L_fm_caseMemorize16:
;Click_FM_TIVA.c,176 :: 		else if (memory_ == 3)
MOVW	R0, #lo_addr(_memory_+0)
MOVT	R0, #hi_addr(_memory_+0)
LDRB	R0, [R0, #0]
CMP	R0, #3
IT	NE
BNE	L_fm_caseMemorize18
;Click_FM_TIVA.c,178 :: 		station1 = stationFrequency;
MOVW	R0, #lo_addr(_stationFrequency+0)
MOVT	R0, #hi_addr(_stationFrequency+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_station1+0)
MOVT	R0, #hi_addr(_station1+0)
STRH	R1, [R0, #0]
;Click_FM_TIVA.c,179 :: 		memory_ = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_memory_+0)
MOVT	R0, #hi_addr(_memory_+0)
STRB	R1, [R0, #0]
;Click_FM_TIVA.c,181 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr36_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr36_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,182 :: 		mikrobus_logWrite( "   *     station 1 memorized                *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr37_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr37_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,183 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr38_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr38_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,184 :: 		}
L_fm_caseMemorize18:
L_fm_caseMemorize17:
L_fm_caseMemorize15:
L_fm_caseMemorize13:
;Click_FM_TIVA.c,185 :: 		}
L_end_fm_caseMemorize:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseMemorize
_fm_caseMute:
;Click_FM_TIVA.c,187 :: 		void fm_caseMute( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,189 :: 		if (mute_ == 0)
MOVW	R0, #lo_addr(_mute_+0)
MOVT	R0, #hi_addr(_mute_+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_fm_caseMute19
;Click_FM_TIVA.c,191 :: 		fm_muteEnable( );
BL	_fm_muteEnable+0
;Click_FM_TIVA.c,193 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr39_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr39_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,194 :: 		mikrobus_logWrite( "   *     mute enabled                       *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr40_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr40_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,195 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr41_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr41_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,197 :: 		mute_ = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_mute_+0)
MOVT	R0, #hi_addr(_mute_+0)
STRB	R1, [R0, #0]
;Click_FM_TIVA.c,198 :: 		}
IT	AL
BAL	L_fm_caseMute20
L_fm_caseMute19:
;Click_FM_TIVA.c,199 :: 		else if (mute_ == 1)
MOVW	R0, #lo_addr(_mute_+0)
MOVT	R0, #hi_addr(_mute_+0)
LDRB	R0, [R0, #0]
CMP	R0, #1
IT	NE
BNE	L_fm_caseMute21
;Click_FM_TIVA.c,201 :: 		fm_muteDisable( );
BL	_fm_muteDisable+0
;Click_FM_TIVA.c,203 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr42_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr42_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,204 :: 		mikrobus_logWrite( "   *     mute disabled                      *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr43_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr43_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,205 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr44_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr44_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,207 :: 		mute_ = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_mute_+0)
MOVT	R0, #hi_addr(_mute_+0)
STRB	R1, [R0, #0]
;Click_FM_TIVA.c,208 :: 		}
L_fm_caseMute21:
L_fm_caseMute20:
;Click_FM_TIVA.c,209 :: 		}
L_end_fm_caseMute:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseMute
_fm_caseStation1:
;Click_FM_TIVA.c,211 :: 		void fm_caseStation1( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,213 :: 		fm_tuneChannel( station1 );
MOVW	R0, #lo_addr(_station1+0)
MOVT	R0, #hi_addr(_station1+0)
LDRH	R0, [R0, #0]
BL	_fm_tuneChannel+0
;Click_FM_TIVA.c,215 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_fm_caseStation122:
SUBS	R7, R7, #1
BNE	L_fm_caseStation122
NOP
NOP
NOP
;Click_FM_TIVA.c,217 :: 		fm_endTune( );
BL	_fm_endTune+0
;Click_FM_TIVA.c,219 :: 		Delay_ms(10);
MOVW	R7, #6782
MOVT	R7, #6
NOP
NOP
L_fm_caseStation124:
SUBS	R7, R7, #1
BNE	L_fm_caseStation124
NOP
NOP
NOP
;Click_FM_TIVA.c,221 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_TIVA.c,222 :: 		channelFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
VSTR	#1, S0, [R0, #0]
;Click_FM_TIVA.c,224 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr45_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr45_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,225 :: 		mikrobus_logWrite( "   *     station 1 tuned                    *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr46_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr46_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,227 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_TIVA.c,228 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr47_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr47_Click_FM_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,229 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,230 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr48_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr48_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,232 :: 		FloatToStr( channelFrequency_, text );
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
VLDR	#1, S0, [R0, #0]
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_TIVA.c,233 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr49_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr49_Click_FM_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,234 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,235 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr50_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr50_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,236 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr51_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr51_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,237 :: 		}
L_end_fm_caseStation1:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseStation1
_fm_caseStation2:
;Click_FM_TIVA.c,239 :: 		void fm_caseStation2( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,241 :: 		fm_tuneChannel( station2 );
MOVW	R0, #lo_addr(_station2+0)
MOVT	R0, #hi_addr(_station2+0)
LDRH	R0, [R0, #0]
BL	_fm_tuneChannel+0
;Click_FM_TIVA.c,243 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_fm_caseStation226:
SUBS	R7, R7, #1
BNE	L_fm_caseStation226
NOP
NOP
NOP
;Click_FM_TIVA.c,245 :: 		fm_endTune( );
BL	_fm_endTune+0
;Click_FM_TIVA.c,247 :: 		Delay_ms(10);
MOVW	R7, #6782
MOVT	R7, #6
NOP
NOP
L_fm_caseStation228:
SUBS	R7, R7, #1
BNE	L_fm_caseStation228
NOP
NOP
NOP
;Click_FM_TIVA.c,249 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_TIVA.c,250 :: 		channelFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
VSTR	#1, S0, [R0, #0]
;Click_FM_TIVA.c,252 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr52_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr52_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,253 :: 		mikrobus_logWrite( "   *     station 2 tuned                    *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr53_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr53_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,255 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_TIVA.c,256 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr54_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr54_Click_FM_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,257 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,258 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr55_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr55_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,260 :: 		FloatToStr( channelFrequency_, text );
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
VLDR	#1, S0, [R0, #0]
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_TIVA.c,261 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr56_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr56_Click_FM_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,262 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,263 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr57_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr57_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,264 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr58_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr58_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,265 :: 		}
L_end_fm_caseStation2:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseStation2
_fm_caseStation3:
;Click_FM_TIVA.c,267 :: 		void fm_caseStation3( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,269 :: 		fm_tuneChannel( station3 );
MOVW	R0, #lo_addr(_station3+0)
MOVT	R0, #hi_addr(_station3+0)
LDRH	R0, [R0, #0]
BL	_fm_tuneChannel+0
;Click_FM_TIVA.c,271 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_fm_caseStation330:
SUBS	R7, R7, #1
BNE	L_fm_caseStation330
NOP
NOP
NOP
;Click_FM_TIVA.c,273 :: 		fm_endTune( );
BL	_fm_endTune+0
;Click_FM_TIVA.c,275 :: 		Delay_ms(10);
MOVW	R7, #6782
MOVT	R7, #6
NOP
NOP
L_fm_caseStation332:
SUBS	R7, R7, #1
BNE	L_fm_caseStation332
NOP
NOP
NOP
;Click_FM_TIVA.c,277 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_TIVA.c,278 :: 		channelFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
VSTR	#1, S0, [R0, #0]
;Click_FM_TIVA.c,280 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr59_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr59_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,281 :: 		mikrobus_logWrite( "   *     station 3 tuned                    *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr60_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr60_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,283 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_TIVA.c,284 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr61_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr61_Click_FM_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,285 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,286 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr62_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr62_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,288 :: 		FloatToStr( channelFrequency_, text );
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
VLDR	#1, S0, [R0, #0]
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_TIVA.c,289 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr63_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr63_Click_FM_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,290 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,291 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr64_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr64_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,292 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr65_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr65_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,293 :: 		}
L_end_fm_caseStation3:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseStation3
_fm_caseTuneUp:
;Click_FM_TIVA.c,295 :: 		void fm_caseTuneUp( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,297 :: 		fm_fineTuneUp( );
BL	_fm_fineTuneUp+0
;Click_FM_TIVA.c,299 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_fm_caseTuneUp34:
SUBS	R7, R7, #1
BNE	L_fm_caseTuneUp34
NOP
NOP
NOP
;Click_FM_TIVA.c,301 :: 		fm_endTune( );
BL	_fm_endTune+0
;Click_FM_TIVA.c,303 :: 		Delay_ms(10);
MOVW	R7, #6782
MOVT	R7, #6
NOP
NOP
L_fm_caseTuneUp36:
SUBS	R7, R7, #1
BNE	L_fm_caseTuneUp36
NOP
NOP
NOP
;Click_FM_TIVA.c,305 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_TIVA.c,306 :: 		channelFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
VSTR	#1, S0, [R0, #0]
;Click_FM_TIVA.c,307 :: 		stationFrequency = fm_getChannel( );
BL	_fm_getChannel+0
MOVW	R1, #lo_addr(_stationFrequency+0)
MOVT	R1, #hi_addr(_stationFrequency+0)
STRH	R0, [R1, #0]
;Click_FM_TIVA.c,309 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr66_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr66_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,310 :: 		mikrobus_logWrite( "   *     tune up                            *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr67_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr67_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,312 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_TIVA.c,313 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr68_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr68_Click_FM_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,314 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,315 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr69_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr69_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,317 :: 		FloatToStr( channelFrequency_, text );
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
VLDR	#1, S0, [R0, #0]
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_TIVA.c,318 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr70_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr70_Click_FM_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,319 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,320 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr71_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr71_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,321 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr72_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr72_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,322 :: 		}
L_end_fm_caseTuneUp:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseTuneUp
_fm_caseTuneDown:
;Click_FM_TIVA.c,324 :: 		void fm_caseTuneDown( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,326 :: 		fm_fineTuneDown( );
BL	_fm_fineTuneDown+0
;Click_FM_TIVA.c,328 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_fm_caseTuneDown38:
SUBS	R7, R7, #1
BNE	L_fm_caseTuneDown38
NOP
NOP
NOP
;Click_FM_TIVA.c,330 :: 		fm_endTune( );
BL	_fm_endTune+0
;Click_FM_TIVA.c,332 :: 		Delay_ms(10);
MOVW	R7, #6782
MOVT	R7, #6
NOP
NOP
L_fm_caseTuneDown40:
SUBS	R7, R7, #1
BNE	L_fm_caseTuneDown40
NOP
NOP
NOP
;Click_FM_TIVA.c,334 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_TIVA.c,335 :: 		channelFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
VSTR	#1, S0, [R0, #0]
;Click_FM_TIVA.c,336 :: 		stationFrequency = fm_getChannel( );
BL	_fm_getChannel+0
MOVW	R1, #lo_addr(_stationFrequency+0)
MOVT	R1, #hi_addr(_stationFrequency+0)
STRH	R0, [R1, #0]
;Click_FM_TIVA.c,338 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr73_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr73_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,339 :: 		mikrobus_logWrite( "   *     tune down                          *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr74_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr74_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,341 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_TIVA.c,342 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr75_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr75_Click_FM_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,343 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,344 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr76_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr76_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,346 :: 		FloatToStr( channelFrequency_, text );
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
VLDR	#1, S0, [R0, #0]
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_TIVA.c,347 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr77_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr77_Click_FM_TIVA+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,348 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,349 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr78_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr78_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,350 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr79_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr79_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,351 :: 		}
L_end_fm_caseTuneDown:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseTuneDown
_fm_caseWrongCommand:
;Click_FM_TIVA.c,353 :: 		void fm_caseWrongCommand( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,355 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr80_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr80_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,356 :: 		mikrobus_logWrite( "   *     wrong command                      *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr81_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr81_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,357 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr82_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr82_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,358 :: 		}
L_end_fm_caseWrongCommand:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseWrongCommand
_systemInit:
;Click_FM_TIVA.c,360 :: 		void systemInit( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,362 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_AN_PIN,  _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #0
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_FM_TIVA.c,363 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #1
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_FM_TIVA.c,364 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN,  _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #2
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_FM_TIVA.c,365 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #7
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_FM_TIVA.c,367 :: 		mikrobus_i2cInit( _MIKROBUS1, &_FM_I2C_CFG[0] );
MOVW	R0, #lo_addr(__FM_I2C_CFG+0)
MOVT	R0, #hi_addr(__FM_I2C_CFG+0)
MOV	R1, R0
MOVS	R0, #0
BL	_mikrobus_i2cInit+0
;Click_FM_TIVA.c,369 :: 		mikrobus_logInit( _LOG_USBUART_A, 115200 );
MOV	R1, #115200
MOVS	R0, #32
BL	_mikrobus_logInit+0
;Click_FM_TIVA.c,371 :: 		Delay_ms(100);
MOVW	R7, #2302
MOVT	R7, #61
NOP
NOP
L_systemInit42:
SUBS	R7, R7, #1
BNE	L_systemInit42
NOP
NOP
NOP
;Click_FM_TIVA.c,373 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr83_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr83_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,374 :: 		mikrobus_logWrite( "   *     system init done                   *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr84_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr84_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,375 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr85_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr85_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,376 :: 		}
L_end_systemInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _systemInit
_applicationInit:
;Click_FM_TIVA.c,378 :: 		void applicationInit( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,380 :: 		fm_i2cDriverInit( (T_FM_P)&_MIKROBUS1_GPIO, (T_FM_P)&_MIKROBUS1_I2C, 0x10 );
MOVS	R2, #16
MOVW	R1, #lo_addr(__MIKROBUS1_I2C+0)
MOVT	R1, #hi_addr(__MIKROBUS1_I2C+0)
MOVW	R0, #lo_addr(__MIKROBUS1_GPIO+0)
MOVT	R0, #hi_addr(__MIKROBUS1_GPIO+0)
BL	_fm_i2cDriverInit+0
;Click_FM_TIVA.c,382 :: 		Delay_ms(500);
MOVW	R7, #11518
MOVT	R7, #305
NOP
NOP
L_applicationInit44:
SUBS	R7, R7, #1
BNE	L_applicationInit44
NOP
NOP
NOP
;Click_FM_TIVA.c,384 :: 		fm_powerUp( );
BL	_fm_powerup+0
;Click_FM_TIVA.c,386 :: 		fm_basicSettings( );
BL	_fm_basicSettings+0
;Click_FM_TIVA.c,388 :: 		fm_setVolume( volumeLevel_ );
MOVW	R0, #lo_addr(_volumeLevel_+0)
MOVT	R0, #hi_addr(_volumeLevel_+0)
LDRB	R0, [R0, #0]
BL	_fm_setVolume+0
;Click_FM_TIVA.c,390 :: 		fm_setSnrThreshold( snrThreshold_ );
MOVW	R0, #lo_addr(_snrThreshold_+0)
MOVT	R0, #hi_addr(_snrThreshold_+0)
LDRB	R0, [R0, #0]
BL	_fm_setSnrThreshold+0
;Click_FM_TIVA.c,392 :: 		fm_setSeekThreshold( seekThreshold_ );
MOVW	R0, #lo_addr(_seekThreshold_+0)
MOVT	R0, #hi_addr(_seekThreshold_+0)
LDRH	R0, [R0, #0]
BL	_fm_setSeekThreshold+0
;Click_FM_TIVA.c,394 :: 		fm_setSeekImpulseDetectionThreshold( impulseDetectionThreshold_ );
MOVW	R0, #lo_addr(_impulseDetectionThreshold_+0)
MOVT	R0, #hi_addr(_impulseDetectionThreshold_+0)
LDRB	R0, [R0, #0]
BL	_fm_setSeekImpulseDetectionThreshold+0
;Click_FM_TIVA.c,396 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr86_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr86_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,397 :: 		mikrobus_logWrite( "   *     application init done              *  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr87_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr87_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,398 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr88_Click_FM_TIVA+0)
MOVT	R0, #hi_addr(?lstr88_Click_FM_TIVA+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_TIVA.c,399 :: 		}
L_end_applicationInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationInit
_applicationTask:
;Click_FM_TIVA.c,401 :: 		void applicationTask( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_TIVA.c,403 :: 		dataReady = UART_Rdy_Ptr( );
MOVW	R4, #lo_addr(_UART_Rdy_Ptr+0)
MOVT	R4, #hi_addr(_UART_Rdy_Ptr+0)
LDR	R4, [R4, #0]
BLX	R4
MOVW	R1, #lo_addr(_dataReady+0)
MOVT	R1, #hi_addr(_dataReady+0)
STRB	R0, [R1, #0]
;Click_FM_TIVA.c,405 :: 		if (dataReady != 0)
UXTB	R4, R0
CMP	R4, #0
IT	EQ
BEQ	L_applicationTask46
;Click_FM_TIVA.c,407 :: 		receivedData = UART_Rd_Ptr( );
MOVW	R4, #lo_addr(_UART_Rd_Ptr+0)
MOVT	R4, #hi_addr(_UART_Rd_Ptr+0)
LDR	R4, [R4, #0]
BLX	R4
MOVW	R1, #lo_addr(_receivedData+0)
MOVT	R1, #hi_addr(_receivedData+0)
STRB	R0, [R1, #0]
;Click_FM_TIVA.c,409 :: 		switch (receivedData)
IT	AL
BAL	L_applicationTask47
;Click_FM_TIVA.c,411 :: 		case '+' :
L_applicationTask49:
;Click_FM_TIVA.c,413 :: 		fm_casePlus( );
BL	_fm_casePlus+0
;Click_FM_TIVA.c,415 :: 		break;
IT	AL
BAL	L_applicationTask48
;Click_FM_TIVA.c,417 :: 		case '-' :
L_applicationTask50:
;Click_FM_TIVA.c,419 :: 		fm_caseMinus( );
BL	_fm_caseMinus+0
;Click_FM_TIVA.c,421 :: 		break;
IT	AL
BAL	L_applicationTask48
;Click_FM_TIVA.c,423 :: 		case 's' :
L_applicationTask51:
;Click_FM_TIVA.c,425 :: 		fm_caseSeek( );
BL	_fm_caseSeek+0
;Click_FM_TIVA.c,427 :: 		break;
IT	AL
BAL	L_applicationTask48
;Click_FM_TIVA.c,429 :: 		case 't' :
L_applicationTask52:
;Click_FM_TIVA.c,431 :: 		fm_caseTune( );
BL	_fm_caseTune+0
;Click_FM_TIVA.c,433 :: 		break;
IT	AL
BAL	L_applicationTask48
;Click_FM_TIVA.c,435 :: 		case 'm' :
L_applicationTask53:
;Click_FM_TIVA.c,437 :: 		fm_caseMemorize( );
BL	_fm_caseMemorize+0
;Click_FM_TIVA.c,439 :: 		break;
IT	AL
BAL	L_applicationTask48
;Click_FM_TIVA.c,441 :: 		case 'i' :
L_applicationTask54:
;Click_FM_TIVA.c,443 :: 		fm_caseMute( );
BL	_fm_caseMute+0
;Click_FM_TIVA.c,445 :: 		break;
IT	AL
BAL	L_applicationTask48
;Click_FM_TIVA.c,447 :: 		case '1' :
L_applicationTask55:
;Click_FM_TIVA.c,449 :: 		fm_caseStation1( );
BL	_fm_caseStation1+0
;Click_FM_TIVA.c,451 :: 		break;
IT	AL
BAL	L_applicationTask48
;Click_FM_TIVA.c,453 :: 		case '2' :
L_applicationTask56:
;Click_FM_TIVA.c,455 :: 		fm_caseStation2( );
BL	_fm_caseStation2+0
;Click_FM_TIVA.c,457 :: 		break;
IT	AL
BAL	L_applicationTask48
;Click_FM_TIVA.c,459 :: 		case '3' :
L_applicationTask57:
;Click_FM_TIVA.c,461 :: 		fm_caseStation3( );
BL	_fm_caseStation3+0
;Click_FM_TIVA.c,463 :: 		break;
IT	AL
BAL	L_applicationTask48
;Click_FM_TIVA.c,465 :: 		case '.' :
L_applicationTask58:
;Click_FM_TIVA.c,467 :: 		fm_caseTuneUp( );
BL	_fm_caseTuneUp+0
;Click_FM_TIVA.c,469 :: 		break;
IT	AL
BAL	L_applicationTask48
;Click_FM_TIVA.c,471 :: 		case ',' :
L_applicationTask59:
;Click_FM_TIVA.c,473 :: 		fm_caseTuneDown( );
BL	_fm_caseTuneDown+0
;Click_FM_TIVA.c,475 :: 		break;
IT	AL
BAL	L_applicationTask48
;Click_FM_TIVA.c,477 :: 		default :
L_applicationTask60:
;Click_FM_TIVA.c,479 :: 		fm_caseWrongCommand( );
BL	_fm_caseWrongCommand+0
;Click_FM_TIVA.c,481 :: 		break;
IT	AL
BAL	L_applicationTask48
;Click_FM_TIVA.c,483 :: 		}
L_applicationTask47:
MOVW	R0, #lo_addr(_receivedData+0)
MOVT	R0, #hi_addr(_receivedData+0)
LDRB	R0, [R0, #0]
CMP	R0, #43
IT	EQ
BEQ	L_applicationTask49
MOVW	R0, #lo_addr(_receivedData+0)
MOVT	R0, #hi_addr(_receivedData+0)
LDRB	R0, [R0, #0]
CMP	R0, #45
IT	EQ
BEQ	L_applicationTask50
MOVW	R0, #lo_addr(_receivedData+0)
MOVT	R0, #hi_addr(_receivedData+0)
LDRB	R0, [R0, #0]
CMP	R0, #115
IT	EQ
BEQ	L_applicationTask51
MOVW	R0, #lo_addr(_receivedData+0)
MOVT	R0, #hi_addr(_receivedData+0)
LDRB	R0, [R0, #0]
CMP	R0, #116
IT	EQ
BEQ	L_applicationTask52
MOVW	R0, #lo_addr(_receivedData+0)
MOVT	R0, #hi_addr(_receivedData+0)
LDRB	R0, [R0, #0]
CMP	R0, #109
IT	EQ
BEQ	L_applicationTask53
MOVW	R0, #lo_addr(_receivedData+0)
MOVT	R0, #hi_addr(_receivedData+0)
LDRB	R0, [R0, #0]
CMP	R0, #105
IT	EQ
BEQ	L_applicationTask54
MOVW	R0, #lo_addr(_receivedData+0)
MOVT	R0, #hi_addr(_receivedData+0)
LDRB	R0, [R0, #0]
CMP	R0, #49
IT	EQ
BEQ	L_applicationTask55
MOVW	R0, #lo_addr(_receivedData+0)
MOVT	R0, #hi_addr(_receivedData+0)
LDRB	R0, [R0, #0]
CMP	R0, #50
IT	EQ
BEQ	L_applicationTask56
MOVW	R0, #lo_addr(_receivedData+0)
MOVT	R0, #hi_addr(_receivedData+0)
LDRB	R0, [R0, #0]
CMP	R0, #51
IT	EQ
BEQ	L_applicationTask57
MOVW	R0, #lo_addr(_receivedData+0)
MOVT	R0, #hi_addr(_receivedData+0)
LDRB	R0, [R0, #0]
CMP	R0, #46
IT	EQ
BEQ	L_applicationTask58
MOVW	R0, #lo_addr(_receivedData+0)
MOVT	R0, #hi_addr(_receivedData+0)
LDRB	R0, [R0, #0]
CMP	R0, #44
IT	EQ
BEQ	L_applicationTask59
IT	AL
BAL	L_applicationTask60
L_applicationTask48:
;Click_FM_TIVA.c,484 :: 		}
L_applicationTask46:
;Click_FM_TIVA.c,485 :: 		}
L_end_applicationTask:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationTask
_main:
;Click_FM_TIVA.c,487 :: 		void main( )
;Click_FM_TIVA.c,489 :: 		systemInit( );
BL	_systemInit+0
;Click_FM_TIVA.c,490 :: 		applicationInit( );
BL	_applicationInit+0
;Click_FM_TIVA.c,492 :: 		while (1)
L_main61:
;Click_FM_TIVA.c,494 :: 		applicationTask( );
BL	_applicationTask+0
;Click_FM_TIVA.c,495 :: 		}
IT	AL
BAL	L_main61
;Click_FM_TIVA.c,496 :: 		}
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main
