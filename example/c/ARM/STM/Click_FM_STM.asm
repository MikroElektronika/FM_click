_fm_casePlus:
;Click_FM_STM.c,84 :: 		void fm_casePlus( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,86 :: 		errorFlag_ = fm_volumeUp( );
BL	_fm_volumeUp+0
MOVW	R1, #lo_addr(_errorFlag_+0)
MOVT	R1, #hi_addr(_errorFlag_+0)
STRB	R0, [R1, #0]
;Click_FM_STM.c,88 :: 		if (errorFlag_ == 0)
CMP	R0, #0
IT	NE
BNE	L_fm_casePlus0
;Click_FM_STM.c,90 :: 		mikrobus_logWrite( "volume up", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr1_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr1_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,91 :: 		}
IT	AL
BAL	L_fm_casePlus1
L_fm_casePlus0:
;Click_FM_STM.c,94 :: 		mikrobus_logWrite( "volume max", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr2_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr2_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,95 :: 		}
L_fm_casePlus1:
;Click_FM_STM.c,96 :: 		}
L_end_fm_casePlus:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_casePlus
_fm_caseMinus:
;Click_FM_STM.c,98 :: 		void fm_caseMinus( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,100 :: 		errorFlag_ = fm_volumeDown( );
BL	_fm_volumeDown+0
MOVW	R1, #lo_addr(_errorFlag_+0)
MOVT	R1, #hi_addr(_errorFlag_+0)
STRB	R0, [R1, #0]
;Click_FM_STM.c,102 :: 		if (errorFlag_ == 0)
CMP	R0, #0
IT	NE
BNE	L_fm_caseMinus2
;Click_FM_STM.c,104 :: 		mikrobus_logWrite( "volume down", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr3_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr3_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,105 :: 		}
IT	AL
BAL	L_fm_caseMinus3
L_fm_caseMinus2:
;Click_FM_STM.c,108 :: 		mikrobus_logWrite( "volume min", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr4_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr4_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,109 :: 		}
L_fm_caseMinus3:
;Click_FM_STM.c,110 :: 		}
L_end_fm_caseMinus:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseMinus
_fm_caseSeek:
;Click_FM_STM.c,112 :: 		void fm_caseSeek( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,114 :: 		fm_seek( );
BL	_fm_seek+0
;Click_FM_STM.c,116 :: 		Delay_ms(100);
MOVW	R7, #20351
MOVT	R7, #18
NOP
NOP
L_fm_caseSeek4:
SUBS	R7, R7, #1
BNE	L_fm_caseSeek4
NOP
NOP
NOP
;Click_FM_STM.c,118 :: 		fm_endSeek( );
BL	_fm_endSeek+0
;Click_FM_STM.c,120 :: 		Delay_ms(10);
MOVW	R7, #54463
MOVT	R7, #1
NOP
NOP
L_fm_caseSeek6:
SUBS	R7, R7, #1
BNE	L_fm_caseSeek6
NOP
NOP
NOP
;Click_FM_STM.c,122 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_STM.c,123 :: 		channelFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R1, #lo_addr(_channelFrequency_+0)
MOVT	R1, #hi_addr(_channelFrequency_+0)
STR	R0, [R1, #0]
;Click_FM_STM.c,124 :: 		stationFrequency_ = fm_getChannel( );
BL	_fm_getChannel+0
MOVW	R1, #lo_addr(_stationFrequency_+0)
MOVT	R1, #hi_addr(_stationFrequency_+0)
STRH	R0, [R1, #0]
;Click_FM_STM.c,126 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_STM.c,127 :: 		mikrobus_logWrite( "station found", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr5_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr5_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,128 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr6_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr6_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,129 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,130 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr7_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr7_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,132 :: 		FloatToStr( channelFrequency_, text );
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
LDR	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_STM.c,133 :: 		mikrobus_logWrite( "channel frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr8_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr8_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,134 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,135 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr9_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr9_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,136 :: 		}
L_end_fm_caseSeek:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseSeek
_fm_caseTune:
;Click_FM_STM.c,138 :: 		void fm_caseTune( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,140 :: 		errorFlag_ = fm_tune( tuneFreq );
MOVW	R0, #lo_addr(_tuneFreq+0)
MOVT	R0, #hi_addr(_tuneFreq+0)
LDR	R0, [R0, #0]
BL	_fm_tune+0
MOVW	R1, #lo_addr(_errorFlag_+0)
MOVT	R1, #hi_addr(_errorFlag_+0)
STRB	R0, [R1, #0]
;Click_FM_STM.c,142 :: 		Delay_ms(100);
MOVW	R7, #20351
MOVT	R7, #18
NOP
NOP
L_fm_caseTune8:
SUBS	R7, R7, #1
BNE	L_fm_caseTune8
NOP
NOP
NOP
;Click_FM_STM.c,144 :: 		fm_endTune( );
BL	_fm_endTune+0
;Click_FM_STM.c,146 :: 		Delay_ms(10);
MOVW	R7, #54463
MOVT	R7, #1
NOP
NOP
L_fm_caseTune10:
SUBS	R7, R7, #1
BNE	L_fm_caseTune10
NOP
NOP
NOP
;Click_FM_STM.c,148 :: 		if (errorFlag_ == 0)
MOVW	R0, #lo_addr(_errorFlag_+0)
MOVT	R0, #hi_addr(_errorFlag_+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_fm_caseTune12
;Click_FM_STM.c,150 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_STM.c,151 :: 		tunedFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R1, #lo_addr(_tunedFrequency_+0)
MOVT	R1, #hi_addr(_tunedFrequency_+0)
STR	R0, [R1, #0]
;Click_FM_STM.c,152 :: 		stationFrequency_ = fm_getChannel( );
BL	_fm_getChannel+0
MOVW	R1, #lo_addr(_stationFrequency_+0)
MOVT	R1, #hi_addr(_stationFrequency_+0)
STRH	R0, [R1, #0]
;Click_FM_STM.c,154 :: 		mikrobus_logWrite( "tune complete", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr10_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr10_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,156 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_STM.c,157 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr11_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr11_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,158 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,159 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr12_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr12_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,161 :: 		FloatToStr( tunedFrequency_, text );
MOVW	R0, #lo_addr(_tunedFrequency_+0)
MOVT	R0, #hi_addr(_tunedFrequency_+0)
LDR	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_STM.c,162 :: 		mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr13_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr13_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,163 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,164 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr14_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr14_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,165 :: 		}
IT	AL
BAL	L_fm_caseTune13
L_fm_caseTune12:
;Click_FM_STM.c,168 :: 		mikrobus_logWrite( "frequency not in valid range", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr15_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr15_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,169 :: 		}
L_fm_caseTune13:
;Click_FM_STM.c,170 :: 		}
L_end_fm_caseTune:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseTune
_fm_caseMemorize:
;Click_FM_STM.c,172 :: 		void fm_caseMemorize( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,174 :: 		switch (memory_)
IT	AL
BAL	L_fm_caseMemorize14
;Click_FM_STM.c,176 :: 		case 0 :
L_fm_caseMemorize16:
;Click_FM_STM.c,178 :: 		station1_ = stationFrequency_;
MOVW	R0, #lo_addr(_stationFrequency_+0)
MOVT	R0, #hi_addr(_stationFrequency_+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_station1_+0)
MOVT	R0, #hi_addr(_station1_+0)
STRH	R1, [R0, #0]
;Click_FM_STM.c,179 :: 		memory_ += 1;
MOVW	R1, #lo_addr(_memory_+0)
MOVT	R1, #hi_addr(_memory_+0)
LDRB	R0, [R1, #0]
ADDS	R0, R0, #1
STRB	R0, [R1, #0]
;Click_FM_STM.c,181 :: 		mikrobus_logWrite( "station 1 memorized", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr16_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr16_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,183 :: 		break;
IT	AL
BAL	L_fm_caseMemorize15
;Click_FM_STM.c,185 :: 		case 1 :
L_fm_caseMemorize17:
;Click_FM_STM.c,187 :: 		station2_ = stationFrequency_;
MOVW	R0, #lo_addr(_stationFrequency_+0)
MOVT	R0, #hi_addr(_stationFrequency_+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_station2_+0)
MOVT	R0, #hi_addr(_station2_+0)
STRH	R1, [R0, #0]
;Click_FM_STM.c,188 :: 		memory_ += 1;
MOVW	R1, #lo_addr(_memory_+0)
MOVT	R1, #hi_addr(_memory_+0)
LDRB	R0, [R1, #0]
ADDS	R0, R0, #1
STRB	R0, [R1, #0]
;Click_FM_STM.c,190 :: 		mikrobus_logWrite( "station 2 memorized", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr17_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr17_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,192 :: 		break;
IT	AL
BAL	L_fm_caseMemorize15
;Click_FM_STM.c,194 :: 		case 2 :
L_fm_caseMemorize18:
;Click_FM_STM.c,196 :: 		station3_ = stationFrequency_;
MOVW	R0, #lo_addr(_stationFrequency_+0)
MOVT	R0, #hi_addr(_stationFrequency_+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_station3_+0)
MOVT	R0, #hi_addr(_station3_+0)
STRH	R1, [R0, #0]
;Click_FM_STM.c,197 :: 		memory_ += 1;
MOVW	R1, #lo_addr(_memory_+0)
MOVT	R1, #hi_addr(_memory_+0)
LDRB	R0, [R1, #0]
ADDS	R0, R0, #1
STRB	R0, [R1, #0]
;Click_FM_STM.c,199 :: 		mikrobus_logWrite( "station 3 memorized", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr18_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr18_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,201 :: 		break;
IT	AL
BAL	L_fm_caseMemorize15
;Click_FM_STM.c,203 :: 		case 3 :
L_fm_caseMemorize19:
;Click_FM_STM.c,205 :: 		station4_ = stationFrequency_;
MOVW	R0, #lo_addr(_stationFrequency_+0)
MOVT	R0, #hi_addr(_stationFrequency_+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_station4_+0)
MOVT	R0, #hi_addr(_station4_+0)
STRH	R1, [R0, #0]
;Click_FM_STM.c,206 :: 		memory_ += 1;
MOVW	R1, #lo_addr(_memory_+0)
MOVT	R1, #hi_addr(_memory_+0)
LDRB	R0, [R1, #0]
ADDS	R0, R0, #1
STRB	R0, [R1, #0]
;Click_FM_STM.c,208 :: 		mikrobus_logWrite( "station 4 memorized", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr19_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr19_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,210 :: 		break;
IT	AL
BAL	L_fm_caseMemorize15
;Click_FM_STM.c,212 :: 		case 4 :
L_fm_caseMemorize20:
;Click_FM_STM.c,214 :: 		station5_ = stationFrequency_;
MOVW	R0, #lo_addr(_stationFrequency_+0)
MOVT	R0, #hi_addr(_stationFrequency_+0)
LDRH	R1, [R0, #0]
MOVW	R0, #lo_addr(_station5_+0)
MOVT	R0, #hi_addr(_station5_+0)
STRH	R1, [R0, #0]
;Click_FM_STM.c,215 :: 		memory_ = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_memory_+0)
MOVT	R0, #hi_addr(_memory_+0)
STRB	R1, [R0, #0]
;Click_FM_STM.c,217 :: 		mikrobus_logWrite( "station 5 memorized", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr20_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr20_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,219 :: 		break;
IT	AL
BAL	L_fm_caseMemorize15
;Click_FM_STM.c,221 :: 		default :
L_fm_caseMemorize21:
;Click_FM_STM.c,223 :: 		break;
IT	AL
BAL	L_fm_caseMemorize15
;Click_FM_STM.c,225 :: 		}
L_fm_caseMemorize14:
MOVW	R0, #lo_addr(_memory_+0)
MOVT	R0, #hi_addr(_memory_+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	EQ
BEQ	L_fm_caseMemorize16
MOVW	R0, #lo_addr(_memory_+0)
MOVT	R0, #hi_addr(_memory_+0)
LDRB	R0, [R0, #0]
CMP	R0, #1
IT	EQ
BEQ	L_fm_caseMemorize17
MOVW	R0, #lo_addr(_memory_+0)
MOVT	R0, #hi_addr(_memory_+0)
LDRB	R0, [R0, #0]
CMP	R0, #2
IT	EQ
BEQ	L_fm_caseMemorize18
MOVW	R0, #lo_addr(_memory_+0)
MOVT	R0, #hi_addr(_memory_+0)
LDRB	R0, [R0, #0]
CMP	R0, #3
IT	EQ
BEQ	L_fm_caseMemorize19
MOVW	R0, #lo_addr(_memory_+0)
MOVT	R0, #hi_addr(_memory_+0)
LDRB	R0, [R0, #0]
CMP	R0, #4
IT	EQ
BEQ	L_fm_caseMemorize20
IT	AL
BAL	L_fm_caseMemorize21
L_fm_caseMemorize15:
;Click_FM_STM.c,226 :: 		}
L_end_fm_caseMemorize:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseMemorize
_fm_caseMute:
;Click_FM_STM.c,228 :: 		void fm_caseMute( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,230 :: 		if (mute_ == 0)
MOVW	R0, #lo_addr(_mute_+0)
MOVT	R0, #hi_addr(_mute_+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_fm_caseMute22
;Click_FM_STM.c,232 :: 		fm_muteEnable( );
BL	_fm_muteEnable+0
;Click_FM_STM.c,234 :: 		mikrobus_logWrite( "mute enabled", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr21_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr21_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,236 :: 		mute_ = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(_mute_+0)
MOVT	R0, #hi_addr(_mute_+0)
STRB	R1, [R0, #0]
;Click_FM_STM.c,237 :: 		}
IT	AL
BAL	L_fm_caseMute23
L_fm_caseMute22:
;Click_FM_STM.c,238 :: 		else if (mute_ == 1)
MOVW	R0, #lo_addr(_mute_+0)
MOVT	R0, #hi_addr(_mute_+0)
LDRB	R0, [R0, #0]
CMP	R0, #1
IT	NE
BNE	L_fm_caseMute24
;Click_FM_STM.c,240 :: 		fm_muteDisable( );
BL	_fm_muteDisable+0
;Click_FM_STM.c,242 :: 		mikrobus_logWrite( "mute disabled", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr22_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr22_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,244 :: 		mute_ = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_mute_+0)
MOVT	R0, #hi_addr(_mute_+0)
STRB	R1, [R0, #0]
;Click_FM_STM.c,245 :: 		}
L_fm_caseMute24:
L_fm_caseMute23:
;Click_FM_STM.c,246 :: 		}
L_end_fm_caseMute:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseMute
_fm_caseStation1:
;Click_FM_STM.c,248 :: 		void fm_caseStation1( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,250 :: 		fm_tuneChannel( station1_ );
MOVW	R0, #lo_addr(_station1_+0)
MOVT	R0, #hi_addr(_station1_+0)
LDRH	R0, [R0, #0]
BL	_fm_tuneChannel+0
;Click_FM_STM.c,252 :: 		Delay_ms(100);
MOVW	R7, #20351
MOVT	R7, #18
NOP
NOP
L_fm_caseStation125:
SUBS	R7, R7, #1
BNE	L_fm_caseStation125
NOP
NOP
NOP
;Click_FM_STM.c,254 :: 		fm_endTune( );
BL	_fm_endTune+0
;Click_FM_STM.c,256 :: 		Delay_ms(10);
MOVW	R7, #54463
MOVT	R7, #1
NOP
NOP
L_fm_caseStation127:
SUBS	R7, R7, #1
BNE	L_fm_caseStation127
NOP
NOP
NOP
;Click_FM_STM.c,258 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_STM.c,259 :: 		channelFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R1, #lo_addr(_channelFrequency_+0)
MOVT	R1, #hi_addr(_channelFrequency_+0)
STR	R0, [R1, #0]
;Click_FM_STM.c,261 :: 		mikrobus_logWrite( "station 1 tuned", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr23_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr23_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,263 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_STM.c,264 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr24_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr24_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,265 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,266 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr25_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr25_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,268 :: 		FloatToStr( channelFrequency_, text );
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
LDR	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_STM.c,269 :: 		mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr26_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr26_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,270 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,271 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr27_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr27_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,272 :: 		}
L_end_fm_caseStation1:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseStation1
_fm_caseStation2:
;Click_FM_STM.c,274 :: 		void fm_caseStation2( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,276 :: 		fm_tuneChannel( station2_ );
MOVW	R0, #lo_addr(_station2_+0)
MOVT	R0, #hi_addr(_station2_+0)
LDRH	R0, [R0, #0]
BL	_fm_tuneChannel+0
;Click_FM_STM.c,278 :: 		Delay_ms(100);
MOVW	R7, #20351
MOVT	R7, #18
NOP
NOP
L_fm_caseStation229:
SUBS	R7, R7, #1
BNE	L_fm_caseStation229
NOP
NOP
NOP
;Click_FM_STM.c,280 :: 		fm_endTune( );
BL	_fm_endTune+0
;Click_FM_STM.c,282 :: 		Delay_ms(10);
MOVW	R7, #54463
MOVT	R7, #1
NOP
NOP
L_fm_caseStation231:
SUBS	R7, R7, #1
BNE	L_fm_caseStation231
NOP
NOP
NOP
;Click_FM_STM.c,284 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_STM.c,285 :: 		channelFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R1, #lo_addr(_channelFrequency_+0)
MOVT	R1, #hi_addr(_channelFrequency_+0)
STR	R0, [R1, #0]
;Click_FM_STM.c,287 :: 		mikrobus_logWrite( "station 2 tuned", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr28_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr28_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,289 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_STM.c,290 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr29_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr29_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,291 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,292 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr30_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr30_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,294 :: 		FloatToStr( channelFrequency_, text );
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
LDR	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_STM.c,295 :: 		mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr31_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr31_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,296 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,297 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr32_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr32_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,298 :: 		}
L_end_fm_caseStation2:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseStation2
_fm_caseStation3:
;Click_FM_STM.c,300 :: 		void fm_caseStation3( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,302 :: 		fm_tuneChannel( station3_ );
MOVW	R0, #lo_addr(_station3_+0)
MOVT	R0, #hi_addr(_station3_+0)
LDRH	R0, [R0, #0]
BL	_fm_tuneChannel+0
;Click_FM_STM.c,304 :: 		Delay_ms(100);
MOVW	R7, #20351
MOVT	R7, #18
NOP
NOP
L_fm_caseStation333:
SUBS	R7, R7, #1
BNE	L_fm_caseStation333
NOP
NOP
NOP
;Click_FM_STM.c,306 :: 		fm_endTune( );
BL	_fm_endTune+0
;Click_FM_STM.c,308 :: 		Delay_ms(10);
MOVW	R7, #54463
MOVT	R7, #1
NOP
NOP
L_fm_caseStation335:
SUBS	R7, R7, #1
BNE	L_fm_caseStation335
NOP
NOP
NOP
;Click_FM_STM.c,310 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_STM.c,311 :: 		channelFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R1, #lo_addr(_channelFrequency_+0)
MOVT	R1, #hi_addr(_channelFrequency_+0)
STR	R0, [R1, #0]
;Click_FM_STM.c,313 :: 		mikrobus_logWrite( "station 3 tuned", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr33_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr33_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,315 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_STM.c,316 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr34_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr34_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,317 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,318 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr35_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr35_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,320 :: 		FloatToStr( channelFrequency_, text );
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
LDR	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_STM.c,321 :: 		mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr36_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr36_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,322 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,323 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr37_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr37_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,324 :: 		}
L_end_fm_caseStation3:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseStation3
_fm_caseStation4:
;Click_FM_STM.c,326 :: 		void fm_caseStation4( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,328 :: 		fm_tuneChannel( station4_ );
MOVW	R0, #lo_addr(_station4_+0)
MOVT	R0, #hi_addr(_station4_+0)
LDRH	R0, [R0, #0]
BL	_fm_tuneChannel+0
;Click_FM_STM.c,330 :: 		Delay_ms(100);
MOVW	R7, #20351
MOVT	R7, #18
NOP
NOP
L_fm_caseStation437:
SUBS	R7, R7, #1
BNE	L_fm_caseStation437
NOP
NOP
NOP
;Click_FM_STM.c,332 :: 		fm_endTune( );
BL	_fm_endTune+0
;Click_FM_STM.c,334 :: 		Delay_ms(10);
MOVW	R7, #54463
MOVT	R7, #1
NOP
NOP
L_fm_caseStation439:
SUBS	R7, R7, #1
BNE	L_fm_caseStation439
NOP
NOP
NOP
;Click_FM_STM.c,336 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_STM.c,337 :: 		channelFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R1, #lo_addr(_channelFrequency_+0)
MOVT	R1, #hi_addr(_channelFrequency_+0)
STR	R0, [R1, #0]
;Click_FM_STM.c,339 :: 		mikrobus_logWrite( "station 4 tuned", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr38_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr38_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,341 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_STM.c,342 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr39_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr39_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,343 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,344 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr40_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr40_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,346 :: 		FloatToStr( channelFrequency_, text );
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
LDR	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_STM.c,347 :: 		mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr41_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr41_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,348 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,349 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr42_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr42_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,350 :: 		}
L_end_fm_caseStation4:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseStation4
_fm_caseStation5:
;Click_FM_STM.c,352 :: 		void fm_caseStation5( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,354 :: 		fm_tuneChannel( station5_ );
MOVW	R0, #lo_addr(_station5_+0)
MOVT	R0, #hi_addr(_station5_+0)
LDRH	R0, [R0, #0]
BL	_fm_tuneChannel+0
;Click_FM_STM.c,356 :: 		Delay_ms(100);
MOVW	R7, #20351
MOVT	R7, #18
NOP
NOP
L_fm_caseStation541:
SUBS	R7, R7, #1
BNE	L_fm_caseStation541
NOP
NOP
NOP
;Click_FM_STM.c,358 :: 		fm_endTune( );
BL	_fm_endTune+0
;Click_FM_STM.c,360 :: 		Delay_ms(10);
MOVW	R7, #54463
MOVT	R7, #1
NOP
NOP
L_fm_caseStation543:
SUBS	R7, R7, #1
BNE	L_fm_caseStation543
NOP
NOP
NOP
;Click_FM_STM.c,362 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_STM.c,363 :: 		channelFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R1, #lo_addr(_channelFrequency_+0)
MOVT	R1, #hi_addr(_channelFrequency_+0)
STR	R0, [R1, #0]
;Click_FM_STM.c,365 :: 		mikrobus_logWrite( "station 5 tuned", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr43_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr43_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,367 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_STM.c,368 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr44_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr44_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,369 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,370 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr45_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr45_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,372 :: 		FloatToStr( channelFrequency_, text );
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
LDR	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_STM.c,373 :: 		mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr46_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr46_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,374 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,375 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr47_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr47_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,376 :: 		}
L_end_fm_caseStation5:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseStation5
_fm_caseTuneUp:
;Click_FM_STM.c,378 :: 		void fm_caseTuneUp( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,380 :: 		errorFlag_ = fm_fineTuneUp( );
BL	_fm_fineTuneUp+0
MOVW	R1, #lo_addr(_errorFlag_+0)
MOVT	R1, #hi_addr(_errorFlag_+0)
STRB	R0, [R1, #0]
;Click_FM_STM.c,382 :: 		if (errorFlag_ == 0)
CMP	R0, #0
IT	NE
BNE	L_fm_caseTuneUp45
;Click_FM_STM.c,384 :: 		Delay_ms(100);
MOVW	R7, #20351
MOVT	R7, #18
NOP
NOP
L_fm_caseTuneUp46:
SUBS	R7, R7, #1
BNE	L_fm_caseTuneUp46
NOP
NOP
NOP
;Click_FM_STM.c,386 :: 		fm_endTune( );
BL	_fm_endTune+0
;Click_FM_STM.c,388 :: 		Delay_ms(10);
MOVW	R7, #54463
MOVT	R7, #1
NOP
NOP
L_fm_caseTuneUp48:
SUBS	R7, R7, #1
BNE	L_fm_caseTuneUp48
NOP
NOP
NOP
;Click_FM_STM.c,390 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_STM.c,391 :: 		channelFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R1, #lo_addr(_channelFrequency_+0)
MOVT	R1, #hi_addr(_channelFrequency_+0)
STR	R0, [R1, #0]
;Click_FM_STM.c,392 :: 		stationFrequency_ = fm_getChannel( );
BL	_fm_getChannel+0
MOVW	R1, #lo_addr(_stationFrequency_+0)
MOVT	R1, #hi_addr(_stationFrequency_+0)
STRH	R0, [R1, #0]
;Click_FM_STM.c,394 :: 		mikrobus_logWrite( "tune up", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr48_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr48_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,396 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_STM.c,397 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr49_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr49_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,398 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,399 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr50_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr50_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,401 :: 		FloatToStr( channelFrequency_, text );
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
LDR	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_STM.c,402 :: 		mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr51_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr51_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,403 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,404 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr52_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr52_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,405 :: 		}
IT	AL
BAL	L_fm_caseTuneUp50
L_fm_caseTuneUp45:
;Click_FM_STM.c,408 :: 		mikrobus_logWrite( "upper band limit reached", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr53_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr53_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,409 :: 		}
L_fm_caseTuneUp50:
;Click_FM_STM.c,410 :: 		}
L_end_fm_caseTuneUp:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseTuneUp
_fm_caseTuneDown:
;Click_FM_STM.c,412 :: 		void fm_caseTuneDown( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,414 :: 		errorFlag_ = fm_fineTuneDown( );
BL	_fm_fineTuneDown+0
MOVW	R1, #lo_addr(_errorFlag_+0)
MOVT	R1, #hi_addr(_errorFlag_+0)
STRB	R0, [R1, #0]
;Click_FM_STM.c,416 :: 		if (errorFlag_ == 0)
CMP	R0, #0
IT	NE
BNE	L_fm_caseTuneDown51
;Click_FM_STM.c,418 :: 		Delay_ms(100);
MOVW	R7, #20351
MOVT	R7, #18
NOP
NOP
L_fm_caseTuneDown52:
SUBS	R7, R7, #1
BNE	L_fm_caseTuneDown52
NOP
NOP
NOP
;Click_FM_STM.c,420 :: 		fm_endTune( );
BL	_fm_endTune+0
;Click_FM_STM.c,422 :: 		Delay_ms(10);
MOVW	R7, #54463
MOVT	R7, #1
NOP
NOP
L_fm_caseTuneDown54:
SUBS	R7, R7, #1
BNE	L_fm_caseTuneDown54
NOP
NOP
NOP
;Click_FM_STM.c,424 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
BL	_fm_getReceivedSignalStrengthIndicator+0
MOVW	R1, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R1, #hi_addr(_receivedSignalStrengthIndicator+0)
STRH	R0, [R1, #0]
;Click_FM_STM.c,425 :: 		channelFrequency_ = fm_getChannelFrequency( );
BL	_fm_getChannelFrequency+0
MOVW	R1, #lo_addr(_channelFrequency_+0)
MOVT	R1, #hi_addr(_channelFrequency_+0)
STR	R0, [R1, #0]
;Click_FM_STM.c,426 :: 		stationFrequency_ = fm_getChannel( );
BL	_fm_getChannel+0
MOVW	R1, #lo_addr(_stationFrequency_+0)
MOVT	R1, #hi_addr(_stationFrequency_+0)
STRH	R0, [R1, #0]
;Click_FM_STM.c,428 :: 		mikrobus_logWrite( "tune up", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr54_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr54_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,430 :: 		WordToStr( receivedSignalStrengthIndicator, text );
MOVW	R0, #lo_addr(_receivedSignalStrengthIndicator+0)
MOVT	R0, #hi_addr(_receivedSignalStrengthIndicator+0)
LDRH	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_WordToStr+0
;Click_FM_STM.c,431 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr55_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr55_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,432 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,433 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr56_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr56_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,435 :: 		FloatToStr( channelFrequency_, text );
MOVW	R0, #lo_addr(_channelFrequency_+0)
MOVT	R0, #hi_addr(_channelFrequency_+0)
LDR	R0, [R0, #0]
MOVW	R1, #lo_addr(_text+0)
MOVT	R1, #hi_addr(_text+0)
BL	_FloatToStr+0
;Click_FM_STM.c,436 :: 		mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
MOVW	R0, #lo_addr(?lstr57_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr57_Click_FM_STM+0)
MOVS	R1, #1
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,437 :: 		mikrobus_logWrite( text, _LOG_TEXT );
MOVS	R1, #1
MOVW	R0, #lo_addr(_text+0)
MOVT	R0, #hi_addr(_text+0)
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,438 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr58_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr58_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,439 :: 		}
IT	AL
BAL	L_fm_caseTuneDown56
L_fm_caseTuneDown51:
;Click_FM_STM.c,442 :: 		mikrobus_logWrite( "lower band limit reached", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr59_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr59_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,443 :: 		}
L_fm_caseTuneDown56:
;Click_FM_STM.c,444 :: 		}
L_end_fm_caseTuneDown:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseTuneDown
_fm_caseWrongCommand:
;Click_FM_STM.c,446 :: 		void fm_caseWrongCommand( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,448 :: 		mikrobus_logWrite( "wrong command", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr60_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr60_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,449 :: 		}
L_end_fm_caseWrongCommand:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _fm_caseWrongCommand
_systemInit:
;Click_FM_STM.c,451 :: 		void systemInit( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,453 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_AN_PIN,  _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #0
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_FM_STM.c,454 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #1
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_FM_STM.c,455 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN,  _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #2
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_FM_STM.c,456 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #7
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_FM_STM.c,458 :: 		mikrobus_i2cInit( _MIKROBUS1, &_FM_I2C_CFG[0] );
MOVW	R0, #lo_addr(__FM_I2C_CFG+0)
MOVT	R0, #hi_addr(__FM_I2C_CFG+0)
MOV	R1, R0
MOVS	R0, #0
BL	_mikrobus_i2cInit+0
;Click_FM_STM.c,460 :: 		mikrobus_logInit( _LOG_USBUART_A, 9600 );
MOVW	R1, #9600
MOVS	R0, #32
BL	_mikrobus_logInit+0
;Click_FM_STM.c,462 :: 		Delay_ms(100);
MOVW	R7, #20351
MOVT	R7, #18
NOP
NOP
L_systemInit57:
SUBS	R7, R7, #1
BNE	L_systemInit57
NOP
NOP
NOP
;Click_FM_STM.c,464 :: 		mikrobus_logWrite( "system init done", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr61_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr61_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,465 :: 		}
L_end_systemInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _systemInit
_applicationInit:
;Click_FM_STM.c,467 :: 		void applicationInit( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,469 :: 		fm_i2cDriverInit( (T_FM_P)&_MIKROBUS1_GPIO, (T_FM_P)&_MIKROBUS1_I2C, 0x10 );
MOVS	R2, #16
MOVW	R1, #lo_addr(__MIKROBUS1_I2C+0)
MOVT	R1, #hi_addr(__MIKROBUS1_I2C+0)
MOVW	R0, #lo_addr(__MIKROBUS1_GPIO+0)
MOVT	R0, #hi_addr(__MIKROBUS1_GPIO+0)
BL	_fm_i2cDriverInit+0
;Click_FM_STM.c,471 :: 		Delay_ms(500);
MOVW	R7, #36223
MOVT	R7, #91
NOP
NOP
L_applicationInit59:
SUBS	R7, R7, #1
BNE	L_applicationInit59
NOP
NOP
NOP
;Click_FM_STM.c,473 :: 		fm_powerUp( );
BL	_fm_powerup+0
;Click_FM_STM.c,475 :: 		fm_basicSettings( );
BL	_fm_basicSettings+0
;Click_FM_STM.c,477 :: 		fm_setVolume( volumeLevel_ );
MOVW	R0, #lo_addr(_volumeLevel_+0)
MOVT	R0, #hi_addr(_volumeLevel_+0)
LDRB	R0, [R0, #0]
BL	_fm_setVolume+0
;Click_FM_STM.c,479 :: 		fm_setSnrThreshold( snrThreshold_ );
MOVW	R0, #lo_addr(_snrThreshold_+0)
MOVT	R0, #hi_addr(_snrThreshold_+0)
LDRB	R0, [R0, #0]
BL	_fm_setSnrThreshold+0
;Click_FM_STM.c,481 :: 		fm_setSeekThreshold( seekThreshold_ );
MOVW	R0, #lo_addr(_seekThreshold_+0)
MOVT	R0, #hi_addr(_seekThreshold_+0)
LDRH	R0, [R0, #0]
BL	_fm_setSeekThreshold+0
;Click_FM_STM.c,483 :: 		fm_setSeekImpulseDetectionThreshold( impulseDetectionThreshold_ );
MOVW	R0, #lo_addr(_impulseDetectionThreshold_+0)
MOVT	R0, #hi_addr(_impulseDetectionThreshold_+0)
LDRB	R0, [R0, #0]
BL	_fm_setSeekImpulseDetectionThreshold+0
;Click_FM_STM.c,485 :: 		mikrobus_logWrite( "application init done", _LOG_LINE );
MOVW	R0, #lo_addr(?lstr62_Click_FM_STM+0)
MOVT	R0, #hi_addr(?lstr62_Click_FM_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_FM_STM.c,486 :: 		}
L_end_applicationInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationInit
_applicationTask:
;Click_FM_STM.c,488 :: 		void applicationTask( )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_FM_STM.c,490 :: 		dataReady_ = UART_Rdy_Ptr( );
MOVW	R4, #lo_addr(_UART_Rdy_Ptr+0)
MOVT	R4, #hi_addr(_UART_Rdy_Ptr+0)
LDR	R4, [R4, #0]
BLX	R4
MOVW	R1, #lo_addr(_dataReady_+0)
MOVT	R1, #hi_addr(_dataReady_+0)
STRB	R0, [R1, #0]
;Click_FM_STM.c,492 :: 		if (dataReady_ != 0)
UXTB	R4, R0
CMP	R4, #0
IT	EQ
BEQ	L_applicationTask61
;Click_FM_STM.c,494 :: 		receivedData_ = UART_Rd_Ptr( );
MOVW	R4, #lo_addr(_UART_Rd_Ptr+0)
MOVT	R4, #hi_addr(_UART_Rd_Ptr+0)
LDR	R4, [R4, #0]
BLX	R4
MOVW	R1, #lo_addr(_receivedData_+0)
MOVT	R1, #hi_addr(_receivedData_+0)
STRB	R0, [R1, #0]
;Click_FM_STM.c,496 :: 		switch (receivedData_)
IT	AL
BAL	L_applicationTask62
;Click_FM_STM.c,498 :: 		case '+' :
L_applicationTask64:
;Click_FM_STM.c,500 :: 		fm_casePlus( );
BL	_fm_casePlus+0
;Click_FM_STM.c,502 :: 		break;
IT	AL
BAL	L_applicationTask63
;Click_FM_STM.c,504 :: 		case '-' :
L_applicationTask65:
;Click_FM_STM.c,506 :: 		fm_caseMinus( );
BL	_fm_caseMinus+0
;Click_FM_STM.c,508 :: 		break;
IT	AL
BAL	L_applicationTask63
;Click_FM_STM.c,510 :: 		case 's' :
L_applicationTask66:
;Click_FM_STM.c,512 :: 		fm_caseSeek( );
BL	_fm_caseSeek+0
;Click_FM_STM.c,514 :: 		break;
IT	AL
BAL	L_applicationTask63
;Click_FM_STM.c,516 :: 		case 't' :
L_applicationTask67:
;Click_FM_STM.c,518 :: 		fm_caseTune( );
BL	_fm_caseTune+0
;Click_FM_STM.c,520 :: 		break;
IT	AL
BAL	L_applicationTask63
;Click_FM_STM.c,522 :: 		case 'm' :
L_applicationTask68:
;Click_FM_STM.c,524 :: 		fm_caseMemorize( );
BL	_fm_caseMemorize+0
;Click_FM_STM.c,526 :: 		break;
IT	AL
BAL	L_applicationTask63
;Click_FM_STM.c,528 :: 		case 'i' :
L_applicationTask69:
;Click_FM_STM.c,530 :: 		fm_caseMute( );
BL	_fm_caseMute+0
;Click_FM_STM.c,532 :: 		break;
IT	AL
BAL	L_applicationTask63
;Click_FM_STM.c,534 :: 		case '1' :
L_applicationTask70:
;Click_FM_STM.c,536 :: 		fm_caseStation1( );
BL	_fm_caseStation1+0
;Click_FM_STM.c,538 :: 		break;
IT	AL
BAL	L_applicationTask63
;Click_FM_STM.c,540 :: 		case '2' :
L_applicationTask71:
;Click_FM_STM.c,542 :: 		fm_caseStation2( );
BL	_fm_caseStation2+0
;Click_FM_STM.c,544 :: 		break;
IT	AL
BAL	L_applicationTask63
;Click_FM_STM.c,546 :: 		case '3' :
L_applicationTask72:
;Click_FM_STM.c,548 :: 		fm_caseStation3( );
BL	_fm_caseStation3+0
;Click_FM_STM.c,550 :: 		break;
IT	AL
BAL	L_applicationTask63
;Click_FM_STM.c,552 :: 		case '4' :
L_applicationTask73:
;Click_FM_STM.c,554 :: 		fm_caseStation4( );
BL	_fm_caseStation4+0
;Click_FM_STM.c,556 :: 		break;
IT	AL
BAL	L_applicationTask63
;Click_FM_STM.c,558 :: 		case '5' :
L_applicationTask74:
;Click_FM_STM.c,560 :: 		fm_caseStation5( );
BL	_fm_caseStation5+0
;Click_FM_STM.c,562 :: 		break;
IT	AL
BAL	L_applicationTask63
;Click_FM_STM.c,564 :: 		case '.' :
L_applicationTask75:
;Click_FM_STM.c,566 :: 		fm_caseTuneUp( );
BL	_fm_caseTuneUp+0
;Click_FM_STM.c,568 :: 		break;
IT	AL
BAL	L_applicationTask63
;Click_FM_STM.c,570 :: 		case ',' :
L_applicationTask76:
;Click_FM_STM.c,572 :: 		fm_caseTuneDown( );
BL	_fm_caseTuneDown+0
;Click_FM_STM.c,574 :: 		break;
IT	AL
BAL	L_applicationTask63
;Click_FM_STM.c,576 :: 		default :
L_applicationTask77:
;Click_FM_STM.c,578 :: 		fm_caseWrongCommand( );
BL	_fm_caseWrongCommand+0
;Click_FM_STM.c,580 :: 		break;
IT	AL
BAL	L_applicationTask63
;Click_FM_STM.c,582 :: 		}
L_applicationTask62:
MOVW	R0, #lo_addr(_receivedData_+0)
MOVT	R0, #hi_addr(_receivedData_+0)
LDRB	R0, [R0, #0]
CMP	R0, #43
IT	EQ
BEQ	L_applicationTask64
MOVW	R0, #lo_addr(_receivedData_+0)
MOVT	R0, #hi_addr(_receivedData_+0)
LDRB	R0, [R0, #0]
CMP	R0, #45
IT	EQ
BEQ	L_applicationTask65
MOVW	R0, #lo_addr(_receivedData_+0)
MOVT	R0, #hi_addr(_receivedData_+0)
LDRB	R0, [R0, #0]
CMP	R0, #115
IT	EQ
BEQ	L_applicationTask66
MOVW	R0, #lo_addr(_receivedData_+0)
MOVT	R0, #hi_addr(_receivedData_+0)
LDRB	R0, [R0, #0]
CMP	R0, #116
IT	EQ
BEQ	L_applicationTask67
MOVW	R0, #lo_addr(_receivedData_+0)
MOVT	R0, #hi_addr(_receivedData_+0)
LDRB	R0, [R0, #0]
CMP	R0, #109
IT	EQ
BEQ	L_applicationTask68
MOVW	R0, #lo_addr(_receivedData_+0)
MOVT	R0, #hi_addr(_receivedData_+0)
LDRB	R0, [R0, #0]
CMP	R0, #105
IT	EQ
BEQ	L_applicationTask69
MOVW	R0, #lo_addr(_receivedData_+0)
MOVT	R0, #hi_addr(_receivedData_+0)
LDRB	R0, [R0, #0]
CMP	R0, #49
IT	EQ
BEQ	L_applicationTask70
MOVW	R0, #lo_addr(_receivedData_+0)
MOVT	R0, #hi_addr(_receivedData_+0)
LDRB	R0, [R0, #0]
CMP	R0, #50
IT	EQ
BEQ	L_applicationTask71
MOVW	R0, #lo_addr(_receivedData_+0)
MOVT	R0, #hi_addr(_receivedData_+0)
LDRB	R0, [R0, #0]
CMP	R0, #51
IT	EQ
BEQ	L_applicationTask72
MOVW	R0, #lo_addr(_receivedData_+0)
MOVT	R0, #hi_addr(_receivedData_+0)
LDRB	R0, [R0, #0]
CMP	R0, #52
IT	EQ
BEQ	L_applicationTask73
MOVW	R0, #lo_addr(_receivedData_+0)
MOVT	R0, #hi_addr(_receivedData_+0)
LDRB	R0, [R0, #0]
CMP	R0, #53
IT	EQ
BEQ	L_applicationTask74
MOVW	R0, #lo_addr(_receivedData_+0)
MOVT	R0, #hi_addr(_receivedData_+0)
LDRB	R0, [R0, #0]
CMP	R0, #46
IT	EQ
BEQ	L_applicationTask75
MOVW	R0, #lo_addr(_receivedData_+0)
MOVT	R0, #hi_addr(_receivedData_+0)
LDRB	R0, [R0, #0]
CMP	R0, #44
IT	EQ
BEQ	L_applicationTask76
IT	AL
BAL	L_applicationTask77
L_applicationTask63:
;Click_FM_STM.c,583 :: 		}
L_applicationTask61:
;Click_FM_STM.c,584 :: 		}
L_end_applicationTask:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationTask
_main:
;Click_FM_STM.c,586 :: 		void main( )
;Click_FM_STM.c,588 :: 		systemInit( );
BL	_systemInit+0
;Click_FM_STM.c,589 :: 		applicationInit( );
BL	_applicationInit+0
;Click_FM_STM.c,591 :: 		while (1)
L_main78:
;Click_FM_STM.c,593 :: 		applicationTask( );
BL	_applicationTask+0
;Click_FM_STM.c,594 :: 		}
IT	AL
BAL	L_main78
;Click_FM_STM.c,595 :: 		}
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main
