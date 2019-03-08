
_fm_casePlus:

;Click_FM_AVR.c,78 :: 		void fm_casePlus( )
;Click_FM_AVR.c,80 :: 		errorFlag_ = fm_volumeUp( );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	CALL       _fm_volumeUp+0
	STS        _errorFlag_+0, R16
;Click_FM_AVR.c,82 :: 		if (errorFlag_ == 0)
	CPI        R16, 0
	BREQ       L__fm_casePlus70
	JMP        L_fm_casePlus0
L__fm_casePlus70:
;Click_FM_AVR.c,84 :: 		mikrobus_logWrite( "volume up", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr1_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr1_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,85 :: 		}
	JMP        L_fm_casePlus1
L_fm_casePlus0:
;Click_FM_AVR.c,88 :: 		mikrobus_logWrite( "volume max", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr2_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr2_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,89 :: 		}
L_fm_casePlus1:
;Click_FM_AVR.c,90 :: 		}
L_end_fm_casePlus:
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _fm_casePlus

_fm_caseMinus:

;Click_FM_AVR.c,92 :: 		void fm_caseMinus( )
;Click_FM_AVR.c,94 :: 		errorFlag_ = fm_volumeDown( );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	CALL       _fm_volumeDown+0
	STS        _errorFlag_+0, R16
;Click_FM_AVR.c,96 :: 		if (errorFlag_ == 0)
	CPI        R16, 0
	BREQ       L__fm_caseMinus72
	JMP        L_fm_caseMinus2
L__fm_caseMinus72:
;Click_FM_AVR.c,98 :: 		mikrobus_logWrite( "volume down", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr3_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr3_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,99 :: 		}
	JMP        L_fm_caseMinus3
L_fm_caseMinus2:
;Click_FM_AVR.c,102 :: 		mikrobus_logWrite( "volume min", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr4_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr4_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,103 :: 		}
L_fm_caseMinus3:
;Click_FM_AVR.c,104 :: 		}
L_end_fm_caseMinus:
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _fm_caseMinus

_fm_caseSeek:

;Click_FM_AVR.c,106 :: 		void fm_caseSeek( )
;Click_FM_AVR.c,108 :: 		fm_seek( );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	PUSH       R7
	CALL       _fm_seek+0
;Click_FM_AVR.c,110 :: 		Delay_ms(100);
	LDI        R18, 5
	LDI        R17, 15
	LDI        R16, 242
L_fm_caseSeek4:
	DEC        R16
	BRNE       L_fm_caseSeek4
	DEC        R17
	BRNE       L_fm_caseSeek4
	DEC        R18
	BRNE       L_fm_caseSeek4
;Click_FM_AVR.c,112 :: 		fm_endSeek( );
	CALL       _fm_endSeek+0
;Click_FM_AVR.c,114 :: 		Delay_ms(10);
	LDI        R17, 104
	LDI        R16, 229
L_fm_caseSeek6:
	DEC        R16
	BRNE       L_fm_caseSeek6
	DEC        R17
	BRNE       L_fm_caseSeek6
;Click_FM_AVR.c,116 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
	CALL       _fm_getReceivedSignalStrengthIndicator+0
	STS        _receivedSignalStrengthIndicator+0, R16
	LDI        R27, 0
	STS        _receivedSignalStrengthIndicator+1, R27
;Click_FM_AVR.c,117 :: 		channelFrequency_ = fm_getChannelFrequency( );
	CALL       _fm_getChannelFrequency+0
	STS        _channelFrequency_+0, R16
	STS        _channelFrequency_+1, R17
	STS        _channelFrequency_+2, R18
	STS        _channelFrequency_+3, R19
;Click_FM_AVR.c,118 :: 		stationFrequency_ = fm_getChannel( );
	CALL       _fm_getChannel+0
	STS        _stationFrequency_+0, R16
	STS        _stationFrequency_+1, R17
;Click_FM_AVR.c,120 :: 		WordToStr( receivedSignalStrengthIndicator, text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R5, R27
	LDS        R2, _receivedSignalStrengthIndicator+0
	LDS        R3, _receivedSignalStrengthIndicator+1
	CALL       _WordToStr+0
;Click_FM_AVR.c,121 :: 		mikrobus_logWrite( "station found", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr5_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr5_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,122 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr6_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr6_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,123 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,124 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr7_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr7_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,126 :: 		FloatToStr( channelFrequency_, text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R6, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R7, R27
	LDS        R2, _channelFrequency_+0
	LDS        R3, _channelFrequency_+1
	LDS        R4, _channelFrequency_+2
	LDS        R5, _channelFrequency_+3
	CALL       _FloatToStr+0
;Click_FM_AVR.c,127 :: 		mikrobus_logWrite( "channel frequency:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr8_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr8_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,128 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,129 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr9_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr9_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,130 :: 		}
L_end_fm_caseSeek:
	POP        R7
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _fm_caseSeek

_fm_caseTune:

;Click_FM_AVR.c,132 :: 		void fm_caseTune( )
;Click_FM_AVR.c,134 :: 		errorFlag_ = fm_tune( 107.0 );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	PUSH       R7
	LDI        R27, 0
	MOV        R2, R27
	MOV        R3, R27
	LDI        R27, 214
	MOV        R4, R27
	LDI        R27, 66
	MOV        R5, R27
	CALL       _fm_tune+0
	STS        _errorFlag_+0, R16
;Click_FM_AVR.c,136 :: 		Delay_ms(100);
	LDI        R18, 5
	LDI        R17, 15
	LDI        R16, 242
L_fm_caseTune8:
	DEC        R16
	BRNE       L_fm_caseTune8
	DEC        R17
	BRNE       L_fm_caseTune8
	DEC        R18
	BRNE       L_fm_caseTune8
;Click_FM_AVR.c,138 :: 		fm_endTune( );
	CALL       _fm_endTune+0
;Click_FM_AVR.c,140 :: 		Delay_ms(10);
	LDI        R17, 104
	LDI        R16, 229
L_fm_caseTune10:
	DEC        R16
	BRNE       L_fm_caseTune10
	DEC        R17
	BRNE       L_fm_caseTune10
;Click_FM_AVR.c,142 :: 		if (errorFlag_ == 0)
	LDS        R16, _errorFlag_+0
	CPI        R16, 0
	BREQ       L__fm_caseTune75
	JMP        L_fm_caseTune12
L__fm_caseTune75:
;Click_FM_AVR.c,144 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
	CALL       _fm_getReceivedSignalStrengthIndicator+0
	STS        _receivedSignalStrengthIndicator+0, R16
	LDI        R27, 0
	STS        _receivedSignalStrengthIndicator+1, R27
;Click_FM_AVR.c,145 :: 		tunedFrequency_ = fm_getChannelFrequency( );
	CALL       _fm_getChannelFrequency+0
	STS        _tunedFrequency_+0, R16
	STS        _tunedFrequency_+1, R17
	STS        _tunedFrequency_+2, R18
	STS        _tunedFrequency_+3, R19
;Click_FM_AVR.c,146 :: 		stationFrequency_ = fm_getChannel( );
	CALL       _fm_getChannel+0
	STS        _stationFrequency_+0, R16
	STS        _stationFrequency_+1, R17
;Click_FM_AVR.c,148 :: 		mikrobus_logWrite( "tune complete", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr10_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr10_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,150 :: 		WordToStr( receivedSignalStrengthIndicator, text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R5, R27
	LDS        R2, _receivedSignalStrengthIndicator+0
	LDS        R3, _receivedSignalStrengthIndicator+1
	CALL       _WordToStr+0
;Click_FM_AVR.c,151 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr11_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr11_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,152 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,153 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr12_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr12_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,155 :: 		FloatToStr( tunedFrequency_, text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R6, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R7, R27
	LDS        R2, _tunedFrequency_+0
	LDS        R3, _tunedFrequency_+1
	LDS        R4, _tunedFrequency_+2
	LDS        R5, _tunedFrequency_+3
	CALL       _FloatToStr+0
;Click_FM_AVR.c,156 :: 		mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr13_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr13_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,157 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,158 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr14_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr14_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,159 :: 		}
	JMP        L_fm_caseTune13
L_fm_caseTune12:
;Click_FM_AVR.c,162 :: 		mikrobus_logWrite( "frequency not in valid range", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr15_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr15_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,163 :: 		}
L_fm_caseTune13:
;Click_FM_AVR.c,164 :: 		}
L_end_fm_caseTune:
	POP        R7
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _fm_caseTune

_fm_caseMemorize:

;Click_FM_AVR.c,166 :: 		void fm_caseMemorize( )
;Click_FM_AVR.c,168 :: 		if (memory_ == 0)
	PUSH       R2
	PUSH       R3
	PUSH       R4
	LDS        R16, _memory_+0
	CPI        R16, 0
	BREQ       L__fm_caseMemorize77
	JMP        L_fm_caseMemorize14
L__fm_caseMemorize77:
;Click_FM_AVR.c,170 :: 		station1_ = stationFrequency_;
	LDS        R16, _stationFrequency_+0
	LDS        R17, _stationFrequency_+1
	STS        _station1_+0, R16
	STS        _station1_+1, R17
;Click_FM_AVR.c,171 :: 		memory_ += 1;
	LDS        R16, _memory_+0
	SUBI       R16, 255
	STS        _memory_+0, R16
;Click_FM_AVR.c,173 :: 		mikrobus_logWrite( "station 1 memorized", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr16_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr16_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,174 :: 		}
	JMP        L_fm_caseMemorize15
L_fm_caseMemorize14:
;Click_FM_AVR.c,175 :: 		else if (memory_ == 1)
	LDS        R16, _memory_+0
	CPI        R16, 1
	BREQ       L__fm_caseMemorize78
	JMP        L_fm_caseMemorize16
L__fm_caseMemorize78:
;Click_FM_AVR.c,177 :: 		station2_ = stationFrequency_;
	LDS        R16, _stationFrequency_+0
	LDS        R17, _stationFrequency_+1
	STS        _station2_+0, R16
	STS        _station2_+1, R17
;Click_FM_AVR.c,178 :: 		memory_ += 1;
	LDS        R16, _memory_+0
	SUBI       R16, 255
	STS        _memory_+0, R16
;Click_FM_AVR.c,180 :: 		mikrobus_logWrite( "station 2 memorized", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr17_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr17_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,181 :: 		}
	JMP        L_fm_caseMemorize17
L_fm_caseMemorize16:
;Click_FM_AVR.c,182 :: 		else if (memory_ == 2)
	LDS        R16, _memory_+0
	CPI        R16, 2
	BREQ       L__fm_caseMemorize79
	JMP        L_fm_caseMemorize18
L__fm_caseMemorize79:
;Click_FM_AVR.c,184 :: 		station3_ = stationFrequency_;
	LDS        R16, _stationFrequency_+0
	LDS        R17, _stationFrequency_+1
	STS        _station3_+0, R16
	STS        _station3_+1, R17
;Click_FM_AVR.c,185 :: 		memory_ += 1;
	LDS        R16, _memory_+0
	SUBI       R16, 255
	STS        _memory_+0, R16
;Click_FM_AVR.c,187 :: 		mikrobus_logWrite( "station 3 memorized", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr18_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr18_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,188 :: 		}
	JMP        L_fm_caseMemorize19
L_fm_caseMemorize18:
;Click_FM_AVR.c,189 :: 		else if (memory_ == 3)
	LDS        R16, _memory_+0
	CPI        R16, 3
	BREQ       L__fm_caseMemorize80
	JMP        L_fm_caseMemorize20
L__fm_caseMemorize80:
;Click_FM_AVR.c,191 :: 		station1_ = stationFrequency_;
	LDS        R16, _stationFrequency_+0
	LDS        R17, _stationFrequency_+1
	STS        _station1_+0, R16
	STS        _station1_+1, R17
;Click_FM_AVR.c,192 :: 		memory_ = 1;
	LDI        R27, 1
	STS        _memory_+0, R27
;Click_FM_AVR.c,194 :: 		mikrobus_logWrite( "station 1 memorized", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr19_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr19_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,195 :: 		}
L_fm_caseMemorize20:
L_fm_caseMemorize19:
L_fm_caseMemorize17:
L_fm_caseMemorize15:
;Click_FM_AVR.c,196 :: 		}
L_end_fm_caseMemorize:
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _fm_caseMemorize

_fm_caseMute:

;Click_FM_AVR.c,198 :: 		void fm_caseMute( )
;Click_FM_AVR.c,200 :: 		if (mute_ == 0)
	PUSH       R2
	PUSH       R3
	PUSH       R4
	LDS        R16, _mute_+0
	CPI        R16, 0
	BREQ       L__fm_caseMute82
	JMP        L_fm_caseMute21
L__fm_caseMute82:
;Click_FM_AVR.c,202 :: 		fm_muteEnable( );
	CALL       _fm_muteEnable+0
;Click_FM_AVR.c,204 :: 		mikrobus_logWrite( "mute enabled", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr20_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr20_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,206 :: 		mute_ = 1;
	LDI        R27, 1
	STS        _mute_+0, R27
;Click_FM_AVR.c,207 :: 		}
	JMP        L_fm_caseMute22
L_fm_caseMute21:
;Click_FM_AVR.c,208 :: 		else if (mute_ == 1)
	LDS        R16, _mute_+0
	CPI        R16, 1
	BREQ       L__fm_caseMute83
	JMP        L_fm_caseMute23
L__fm_caseMute83:
;Click_FM_AVR.c,210 :: 		fm_muteDisable( );
	CALL       _fm_muteDisable+0
;Click_FM_AVR.c,212 :: 		mikrobus_logWrite( "mute disabled", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr21_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr21_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,214 :: 		mute_ = 0;
	LDI        R27, 0
	STS        _mute_+0, R27
;Click_FM_AVR.c,215 :: 		}
L_fm_caseMute23:
L_fm_caseMute22:
;Click_FM_AVR.c,216 :: 		}
L_end_fm_caseMute:
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _fm_caseMute

_fm_caseStation1:

;Click_FM_AVR.c,218 :: 		void fm_caseStation1( )
;Click_FM_AVR.c,220 :: 		fm_tuneChannel( station1_ );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	PUSH       R7
	LDS        R2, _station1_+0
	LDS        R3, _station1_+1
	CALL       _fm_tuneChannel+0
;Click_FM_AVR.c,222 :: 		Delay_ms(100);
	LDI        R18, 5
	LDI        R17, 15
	LDI        R16, 242
L_fm_caseStation124:
	DEC        R16
	BRNE       L_fm_caseStation124
	DEC        R17
	BRNE       L_fm_caseStation124
	DEC        R18
	BRNE       L_fm_caseStation124
;Click_FM_AVR.c,224 :: 		fm_endTune( );
	CALL       _fm_endTune+0
;Click_FM_AVR.c,226 :: 		Delay_ms(10);
	LDI        R17, 104
	LDI        R16, 229
L_fm_caseStation126:
	DEC        R16
	BRNE       L_fm_caseStation126
	DEC        R17
	BRNE       L_fm_caseStation126
;Click_FM_AVR.c,228 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
	CALL       _fm_getReceivedSignalStrengthIndicator+0
	STS        _receivedSignalStrengthIndicator+0, R16
	LDI        R27, 0
	STS        _receivedSignalStrengthIndicator+1, R27
;Click_FM_AVR.c,229 :: 		channelFrequency_ = fm_getChannelFrequency( );
	CALL       _fm_getChannelFrequency+0
	STS        _channelFrequency_+0, R16
	STS        _channelFrequency_+1, R17
	STS        _channelFrequency_+2, R18
	STS        _channelFrequency_+3, R19
;Click_FM_AVR.c,231 :: 		mikrobus_logWrite( "station 1 tuned", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr22_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr22_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,233 :: 		WordToStr( receivedSignalStrengthIndicator, text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R5, R27
	LDS        R2, _receivedSignalStrengthIndicator+0
	LDS        R3, _receivedSignalStrengthIndicator+1
	CALL       _WordToStr+0
;Click_FM_AVR.c,234 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr23_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr23_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,235 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,236 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr24_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr24_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,238 :: 		FloatToStr( channelFrequency_, text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R6, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R7, R27
	LDS        R2, _channelFrequency_+0
	LDS        R3, _channelFrequency_+1
	LDS        R4, _channelFrequency_+2
	LDS        R5, _channelFrequency_+3
	CALL       _FloatToStr+0
;Click_FM_AVR.c,239 :: 		mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr25_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr25_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,240 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,241 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr26_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr26_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,242 :: 		}
L_end_fm_caseStation1:
	POP        R7
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _fm_caseStation1

_fm_caseStation2:

;Click_FM_AVR.c,244 :: 		void fm_caseStation2( )
;Click_FM_AVR.c,246 :: 		fm_tuneChannel( station2_ );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	PUSH       R7
	LDS        R2, _station2_+0
	LDS        R3, _station2_+1
	CALL       _fm_tuneChannel+0
;Click_FM_AVR.c,248 :: 		Delay_ms(100);
	LDI        R18, 5
	LDI        R17, 15
	LDI        R16, 242
L_fm_caseStation228:
	DEC        R16
	BRNE       L_fm_caseStation228
	DEC        R17
	BRNE       L_fm_caseStation228
	DEC        R18
	BRNE       L_fm_caseStation228
;Click_FM_AVR.c,250 :: 		fm_endTune( );
	CALL       _fm_endTune+0
;Click_FM_AVR.c,252 :: 		Delay_ms(10);
	LDI        R17, 104
	LDI        R16, 229
L_fm_caseStation230:
	DEC        R16
	BRNE       L_fm_caseStation230
	DEC        R17
	BRNE       L_fm_caseStation230
;Click_FM_AVR.c,254 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
	CALL       _fm_getReceivedSignalStrengthIndicator+0
	STS        _receivedSignalStrengthIndicator+0, R16
	LDI        R27, 0
	STS        _receivedSignalStrengthIndicator+1, R27
;Click_FM_AVR.c,255 :: 		channelFrequency_ = fm_getChannelFrequency( );
	CALL       _fm_getChannelFrequency+0
	STS        _channelFrequency_+0, R16
	STS        _channelFrequency_+1, R17
	STS        _channelFrequency_+2, R18
	STS        _channelFrequency_+3, R19
;Click_FM_AVR.c,257 :: 		mikrobus_logWrite( "station 2 tuned", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr27_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr27_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,259 :: 		WordToStr( receivedSignalStrengthIndicator, text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R5, R27
	LDS        R2, _receivedSignalStrengthIndicator+0
	LDS        R3, _receivedSignalStrengthIndicator+1
	CALL       _WordToStr+0
;Click_FM_AVR.c,260 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr28_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr28_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,261 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,262 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr29_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr29_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,264 :: 		FloatToStr( channelFrequency_, text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R6, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R7, R27
	LDS        R2, _channelFrequency_+0
	LDS        R3, _channelFrequency_+1
	LDS        R4, _channelFrequency_+2
	LDS        R5, _channelFrequency_+3
	CALL       _FloatToStr+0
;Click_FM_AVR.c,265 :: 		mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr30_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr30_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,266 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,267 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr31_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr31_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,268 :: 		}
L_end_fm_caseStation2:
	POP        R7
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _fm_caseStation2

_fm_caseStation3:

;Click_FM_AVR.c,270 :: 		void fm_caseStation3( )
;Click_FM_AVR.c,272 :: 		fm_tuneChannel( station3_ );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	PUSH       R7
	LDS        R2, _station3_+0
	LDS        R3, _station3_+1
	CALL       _fm_tuneChannel+0
;Click_FM_AVR.c,274 :: 		Delay_ms(100);
	LDI        R18, 5
	LDI        R17, 15
	LDI        R16, 242
L_fm_caseStation332:
	DEC        R16
	BRNE       L_fm_caseStation332
	DEC        R17
	BRNE       L_fm_caseStation332
	DEC        R18
	BRNE       L_fm_caseStation332
;Click_FM_AVR.c,276 :: 		fm_endTune( );
	CALL       _fm_endTune+0
;Click_FM_AVR.c,278 :: 		Delay_ms(10);
	LDI        R17, 104
	LDI        R16, 229
L_fm_caseStation334:
	DEC        R16
	BRNE       L_fm_caseStation334
	DEC        R17
	BRNE       L_fm_caseStation334
;Click_FM_AVR.c,280 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
	CALL       _fm_getReceivedSignalStrengthIndicator+0
	STS        _receivedSignalStrengthIndicator+0, R16
	LDI        R27, 0
	STS        _receivedSignalStrengthIndicator+1, R27
;Click_FM_AVR.c,281 :: 		channelFrequency_ = fm_getChannelFrequency( );
	CALL       _fm_getChannelFrequency+0
	STS        _channelFrequency_+0, R16
	STS        _channelFrequency_+1, R17
	STS        _channelFrequency_+2, R18
	STS        _channelFrequency_+3, R19
;Click_FM_AVR.c,283 :: 		mikrobus_logWrite( "station 3 tuned", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr32_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr32_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,285 :: 		WordToStr( receivedSignalStrengthIndicator, text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R5, R27
	LDS        R2, _receivedSignalStrengthIndicator+0
	LDS        R3, _receivedSignalStrengthIndicator+1
	CALL       _WordToStr+0
;Click_FM_AVR.c,286 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr33_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr33_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,287 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,288 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr34_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr34_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,290 :: 		FloatToStr( channelFrequency_, text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R6, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R7, R27
	LDS        R2, _channelFrequency_+0
	LDS        R3, _channelFrequency_+1
	LDS        R4, _channelFrequency_+2
	LDS        R5, _channelFrequency_+3
	CALL       _FloatToStr+0
;Click_FM_AVR.c,291 :: 		mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr35_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr35_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,292 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,293 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr36_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr36_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,294 :: 		}
L_end_fm_caseStation3:
	POP        R7
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _fm_caseStation3

_fm_caseTuneUp:

;Click_FM_AVR.c,296 :: 		void fm_caseTuneUp( )
;Click_FM_AVR.c,298 :: 		errorFlag_ = fm_fineTuneUp( );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	PUSH       R7
	CALL       _fm_fineTuneUp+0
	STS        _errorFlag_+0, R16
;Click_FM_AVR.c,300 :: 		Delay_ms(100);
	LDI        R18, 5
	LDI        R17, 15
	LDI        R16, 242
L_fm_caseTuneUp36:
	DEC        R16
	BRNE       L_fm_caseTuneUp36
	DEC        R17
	BRNE       L_fm_caseTuneUp36
	DEC        R18
	BRNE       L_fm_caseTuneUp36
;Click_FM_AVR.c,302 :: 		fm_endTune( );
	CALL       _fm_endTune+0
;Click_FM_AVR.c,304 :: 		Delay_ms(10);
	LDI        R17, 104
	LDI        R16, 229
L_fm_caseTuneUp38:
	DEC        R16
	BRNE       L_fm_caseTuneUp38
	DEC        R17
	BRNE       L_fm_caseTuneUp38
;Click_FM_AVR.c,306 :: 		if (errorFlag_ == 0)
	LDS        R16, _errorFlag_+0
	CPI        R16, 0
	BREQ       L__fm_caseTuneUp88
	JMP        L_fm_caseTuneUp40
L__fm_caseTuneUp88:
;Click_FM_AVR.c,308 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
	CALL       _fm_getReceivedSignalStrengthIndicator+0
	STS        _receivedSignalStrengthIndicator+0, R16
	LDI        R27, 0
	STS        _receivedSignalStrengthIndicator+1, R27
;Click_FM_AVR.c,309 :: 		channelFrequency_ = fm_getChannelFrequency( );
	CALL       _fm_getChannelFrequency+0
	STS        _channelFrequency_+0, R16
	STS        _channelFrequency_+1, R17
	STS        _channelFrequency_+2, R18
	STS        _channelFrequency_+3, R19
;Click_FM_AVR.c,310 :: 		stationFrequency_ = fm_getChannel( );
	CALL       _fm_getChannel+0
	STS        _stationFrequency_+0, R16
	STS        _stationFrequency_+1, R17
;Click_FM_AVR.c,312 :: 		mikrobus_logWrite( "tune up", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr37_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr37_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,314 :: 		WordToStr( receivedSignalStrengthIndicator, text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R5, R27
	LDS        R2, _receivedSignalStrengthIndicator+0
	LDS        R3, _receivedSignalStrengthIndicator+1
	CALL       _WordToStr+0
;Click_FM_AVR.c,315 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr38_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr38_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,316 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,317 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr39_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr39_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,319 :: 		FloatToStr( channelFrequency_, text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R6, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R7, R27
	LDS        R2, _channelFrequency_+0
	LDS        R3, _channelFrequency_+1
	LDS        R4, _channelFrequency_+2
	LDS        R5, _channelFrequency_+3
	CALL       _FloatToStr+0
;Click_FM_AVR.c,320 :: 		mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr40_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr40_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,321 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,322 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr41_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr41_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,323 :: 		}
	JMP        L_fm_caseTuneUp41
L_fm_caseTuneUp40:
;Click_FM_AVR.c,326 :: 		mikrobus_logWrite( "error", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr42_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr42_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,327 :: 		}
L_fm_caseTuneUp41:
;Click_FM_AVR.c,328 :: 		}
L_end_fm_caseTuneUp:
	POP        R7
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _fm_caseTuneUp

_fm_caseTuneDown:

;Click_FM_AVR.c,330 :: 		void fm_caseTuneDown( )
;Click_FM_AVR.c,332 :: 		fm_fineTuneDown( );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	PUSH       R7
	CALL       _fm_fineTuneDown+0
;Click_FM_AVR.c,334 :: 		Delay_ms(100);
	LDI        R18, 5
	LDI        R17, 15
	LDI        R16, 242
L_fm_caseTuneDown42:
	DEC        R16
	BRNE       L_fm_caseTuneDown42
	DEC        R17
	BRNE       L_fm_caseTuneDown42
	DEC        R18
	BRNE       L_fm_caseTuneDown42
;Click_FM_AVR.c,336 :: 		fm_endTune( );
	CALL       _fm_endTune+0
;Click_FM_AVR.c,338 :: 		Delay_ms(10);
	LDI        R17, 104
	LDI        R16, 229
L_fm_caseTuneDown44:
	DEC        R16
	BRNE       L_fm_caseTuneDown44
	DEC        R17
	BRNE       L_fm_caseTuneDown44
;Click_FM_AVR.c,340 :: 		if (errorFlag_ == 0)
	LDS        R16, _errorFlag_+0
	CPI        R16, 0
	BREQ       L__fm_caseTuneDown90
	JMP        L_fm_caseTuneDown46
L__fm_caseTuneDown90:
;Click_FM_AVR.c,342 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
	CALL       _fm_getReceivedSignalStrengthIndicator+0
	STS        _receivedSignalStrengthIndicator+0, R16
	LDI        R27, 0
	STS        _receivedSignalStrengthIndicator+1, R27
;Click_FM_AVR.c,343 :: 		channelFrequency_ = fm_getChannelFrequency( );
	CALL       _fm_getChannelFrequency+0
	STS        _channelFrequency_+0, R16
	STS        _channelFrequency_+1, R17
	STS        _channelFrequency_+2, R18
	STS        _channelFrequency_+3, R19
;Click_FM_AVR.c,344 :: 		stationFrequency_ = fm_getChannel( );
	CALL       _fm_getChannel+0
	STS        _stationFrequency_+0, R16
	STS        _stationFrequency_+1, R17
;Click_FM_AVR.c,346 :: 		mikrobus_logWrite( "tune up", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr43_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr43_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,348 :: 		WordToStr( receivedSignalStrengthIndicator, text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R4, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R5, R27
	LDS        R2, _receivedSignalStrengthIndicator+0
	LDS        R3, _receivedSignalStrengthIndicator+1
	CALL       _WordToStr+0
;Click_FM_AVR.c,349 :: 		mikrobus_logWrite( "rssi:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr44_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr44_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,350 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,351 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr45_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr45_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,353 :: 		FloatToStr( channelFrequency_, text );
	LDI        R27, #lo_addr(_text+0)
	MOV        R6, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R7, R27
	LDS        R2, _channelFrequency_+0
	LDS        R3, _channelFrequency_+1
	LDS        R4, _channelFrequency_+2
	LDS        R5, _channelFrequency_+3
	CALL       _FloatToStr+0
;Click_FM_AVR.c,354 :: 		mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr46_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr46_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,355 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, #lo_addr(_text+0)
	MOV        R2, R27
	LDI        R27, hi_addr(_text+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,356 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr47_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr47_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,357 :: 		}
	JMP        L_fm_caseTuneDown47
L_fm_caseTuneDown46:
;Click_FM_AVR.c,360 :: 		mikrobus_logWrite( "error", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr48_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr48_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,361 :: 		}
L_fm_caseTuneDown47:
;Click_FM_AVR.c,362 :: 		}
L_end_fm_caseTuneDown:
	POP        R7
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _fm_caseTuneDown

_fm_caseWrongCommand:

;Click_FM_AVR.c,364 :: 		void fm_caseWrongCommand( )
;Click_FM_AVR.c,366 :: 		mikrobus_logWrite( "wrong command", _LOG_LINE );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr49_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr49_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,367 :: 		}
L_end_fm_caseWrongCommand:
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _fm_caseWrongCommand

_systemInit:

;Click_FM_AVR.c,369 :: 		void systemInit( )
;Click_FM_AVR.c,371 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_AN_PIN,  _GPIO_INPUT );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	CLR        R4
	CLR        R3
	CLR        R2
	CALL       _mikrobus_gpioInit+0
;Click_FM_AVR.c,372 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, 1
	MOV        R3, R27
	CLR        R2
	CALL       _mikrobus_gpioInit+0
;Click_FM_AVR.c,373 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN,  _GPIO_OUTPUT );
	LDI        R27, 1
	MOV        R4, R27
	LDI        R27, 2
	MOV        R3, R27
	CLR        R2
	CALL       _mikrobus_gpioInit+0
;Click_FM_AVR.c,374 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
	CLR        R4
	LDI        R27, 7
	MOV        R3, R27
	CLR        R2
	CALL       _mikrobus_gpioInit+0
;Click_FM_AVR.c,376 :: 		mikrobus_i2cInit( _MIKROBUS1, &_FM_I2C_CFG[0] );
	LDI        R16, #lo_addr(__FM_I2C_CFG+0)
	LDI        R17, hi_addr(__FM_I2C_CFG+0)
	MOV        R3, R16
	MOV        R4, R17
	CLR        R2
	CALL       _mikrobus_i2cInit+0
;Click_FM_AVR.c,378 :: 		mikrobus_logInit( _LOG_USBUART, 9600 );
	LDI        R27, 128
	MOV        R3, R27
	LDI        R27, 37
	MOV        R4, R27
	LDI        R27, 0
	MOV        R5, R27
	MOV        R6, R27
	LDI        R27, 16
	MOV        R2, R27
	CALL       _mikrobus_logInit+0
;Click_FM_AVR.c,380 :: 		Delay_ms(100);
	LDI        R18, 5
	LDI        R17, 15
	LDI        R16, 242
L_systemInit48:
	DEC        R16
	BRNE       L_systemInit48
	DEC        R17
	BRNE       L_systemInit48
	DEC        R18
	BRNE       L_systemInit48
;Click_FM_AVR.c,382 :: 		mikrobus_logWrite( "system init done", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr50_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr50_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,383 :: 		}
L_end_systemInit:
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _systemInit

_applicationInit:

;Click_FM_AVR.c,385 :: 		void applicationInit( )
;Click_FM_AVR.c,387 :: 		fm_i2cDriverInit( (T_FM_P)&_MIKROBUS1_GPIO, (T_FM_P)&_MIKROBUS1_I2C, 0x10 );
	PUSH       R2
	PUSH       R3
	PUSH       R4
	PUSH       R5
	PUSH       R6
	LDI        R27, 16
	MOV        R6, R27
	LDI        R27, #lo_addr(__MIKROBUS1_I2C+0)
	MOV        R4, R27
	LDI        R27, hi_addr(__MIKROBUS1_I2C+0)
	MOV        R5, R27
	LDI        R27, #lo_addr(__MIKROBUS1_GPIO+0)
	MOV        R2, R27
	LDI        R27, hi_addr(__MIKROBUS1_GPIO+0)
	MOV        R3, R27
	CALL       _fm_i2cDriverInit+0
;Click_FM_AVR.c,389 :: 		Delay_ms(500);
	LDI        R18, 21
	LDI        R17, 75
	LDI        R16, 191
L_applicationInit50:
	DEC        R16
	BRNE       L_applicationInit50
	DEC        R17
	BRNE       L_applicationInit50
	DEC        R18
	BRNE       L_applicationInit50
	NOP
;Click_FM_AVR.c,391 :: 		fm_powerUp( );
	CALL       _fm_powerup+0
;Click_FM_AVR.c,393 :: 		fm_basicSettings( );
	CALL       _fm_basicSettings+0
;Click_FM_AVR.c,395 :: 		fm_setVolume( volumeLevel_ );
	LDS        R2, _volumeLevel_+0
	CALL       _fm_setVolume+0
;Click_FM_AVR.c,397 :: 		fm_setSnrThreshold( snrThreshold_ );
	LDS        R2, _snrThreshold_+0
	CALL       _fm_setSnrThreshold+0
;Click_FM_AVR.c,399 :: 		fm_setSeekThreshold( seekThreshold_ );
	LDS        R2, _seekThreshold_+0
	LDS        R3, _seekThreshold_+1
	CALL       _fm_setSeekThreshold+0
;Click_FM_AVR.c,401 :: 		fm_setSeekImpulseDetectionThreshold( impulseDetectionThreshold_ );
	LDS        R2, _impulseDetectionThreshold_+0
	CALL       _fm_setSeekImpulseDetectionThreshold+0
;Click_FM_AVR.c,403 :: 		mikrobus_logWrite( "application init done", _LOG_LINE );
	LDI        R27, 2
	MOV        R4, R27
	LDI        R27, #lo_addr(?lstr51_Click_FM_AVR+0)
	MOV        R2, R27
	LDI        R27, hi_addr(?lstr51_Click_FM_AVR+0)
	MOV        R3, R27
	CALL       _mikrobus_logWrite+0
;Click_FM_AVR.c,404 :: 		}
L_end_applicationInit:
	POP        R6
	POP        R5
	POP        R4
	POP        R3
	POP        R2
	RET
; end of _applicationInit

_applicationTask:

;Click_FM_AVR.c,406 :: 		void applicationTask( )
;Click_FM_AVR.c,408 :: 		dataReady_ = UART_Rdy_Ptr( );
	LDS        R30, _UART_Rdy_Ptr+0
	LDS        R31, _UART_Rdy_Ptr+1
	ICALL
	STS        _dataReady_+0, R16
;Click_FM_AVR.c,410 :: 		if (dataReady_ != 0)
	CPI        R16, 0
	BRNE       L__applicationTask95
	JMP        L_applicationTask52
L__applicationTask95:
;Click_FM_AVR.c,412 :: 		receivedData_ = UART_Rd_Ptr( );
	LDS        R30, _UART_Rd_Ptr+0
	LDS        R31, _UART_Rd_Ptr+1
	ICALL
	STS        _receivedData_+0, R16
;Click_FM_AVR.c,414 :: 		switch (receivedData_)
	JMP        L_applicationTask53
;Click_FM_AVR.c,416 :: 		case '+' :
L_applicationTask55:
;Click_FM_AVR.c,418 :: 		fm_casePlus( );
	CALL       _fm_casePlus+0
;Click_FM_AVR.c,420 :: 		break;
	JMP        L_applicationTask54
;Click_FM_AVR.c,422 :: 		case '-' :
L_applicationTask56:
;Click_FM_AVR.c,424 :: 		fm_caseMinus( );
	CALL       _fm_caseMinus+0
;Click_FM_AVR.c,426 :: 		break;
	JMP        L_applicationTask54
;Click_FM_AVR.c,428 :: 		case 's' :
L_applicationTask57:
;Click_FM_AVR.c,430 :: 		fm_caseSeek( );
	CALL       _fm_caseSeek+0
;Click_FM_AVR.c,432 :: 		break;
	JMP        L_applicationTask54
;Click_FM_AVR.c,434 :: 		case 't' :
L_applicationTask58:
;Click_FM_AVR.c,436 :: 		fm_caseTune( );
	CALL       _fm_caseTune+0
;Click_FM_AVR.c,438 :: 		break;
	JMP        L_applicationTask54
;Click_FM_AVR.c,440 :: 		case 'm' :
L_applicationTask59:
;Click_FM_AVR.c,442 :: 		fm_caseMemorize( );
	CALL       _fm_caseMemorize+0
;Click_FM_AVR.c,444 :: 		break;
	JMP        L_applicationTask54
;Click_FM_AVR.c,446 :: 		case 'i' :
L_applicationTask60:
;Click_FM_AVR.c,448 :: 		fm_caseMute( );
	CALL       _fm_caseMute+0
;Click_FM_AVR.c,450 :: 		break;
	JMP        L_applicationTask54
;Click_FM_AVR.c,452 :: 		case '1' :
L_applicationTask61:
;Click_FM_AVR.c,454 :: 		fm_caseStation1( );
	CALL       _fm_caseStation1+0
;Click_FM_AVR.c,456 :: 		break;
	JMP        L_applicationTask54
;Click_FM_AVR.c,458 :: 		case '2' :
L_applicationTask62:
;Click_FM_AVR.c,460 :: 		fm_caseStation2( );
	CALL       _fm_caseStation2+0
;Click_FM_AVR.c,462 :: 		break;
	JMP        L_applicationTask54
;Click_FM_AVR.c,464 :: 		case '3' :
L_applicationTask63:
;Click_FM_AVR.c,466 :: 		fm_caseStation3( );
	CALL       _fm_caseStation3+0
;Click_FM_AVR.c,468 :: 		break;
	JMP        L_applicationTask54
;Click_FM_AVR.c,470 :: 		case '.' :
L_applicationTask64:
;Click_FM_AVR.c,472 :: 		fm_caseTuneUp( );
	CALL       _fm_caseTuneUp+0
;Click_FM_AVR.c,474 :: 		break;
	JMP        L_applicationTask54
;Click_FM_AVR.c,476 :: 		case ',' :
L_applicationTask65:
;Click_FM_AVR.c,478 :: 		fm_caseTuneDown( );
	CALL       _fm_caseTuneDown+0
;Click_FM_AVR.c,480 :: 		break;
	JMP        L_applicationTask54
;Click_FM_AVR.c,482 :: 		default :
L_applicationTask66:
;Click_FM_AVR.c,484 :: 		fm_caseWrongCommand( );
	CALL       _fm_caseWrongCommand+0
;Click_FM_AVR.c,486 :: 		break;
	JMP        L_applicationTask54
;Click_FM_AVR.c,488 :: 		}
L_applicationTask53:
	LDS        R16, _receivedData_+0
	CPI        R16, 43
	BRNE       L__applicationTask96
	JMP        L_applicationTask55
L__applicationTask96:
	LDS        R16, _receivedData_+0
	CPI        R16, 45
	BRNE       L__applicationTask97
	JMP        L_applicationTask56
L__applicationTask97:
	LDS        R16, _receivedData_+0
	CPI        R16, 115
	BRNE       L__applicationTask98
	JMP        L_applicationTask57
L__applicationTask98:
	LDS        R16, _receivedData_+0
	CPI        R16, 116
	BRNE       L__applicationTask99
	JMP        L_applicationTask58
L__applicationTask99:
	LDS        R16, _receivedData_+0
	CPI        R16, 109
	BRNE       L__applicationTask100
	JMP        L_applicationTask59
L__applicationTask100:
	LDS        R16, _receivedData_+0
	CPI        R16, 105
	BRNE       L__applicationTask101
	JMP        L_applicationTask60
L__applicationTask101:
	LDS        R16, _receivedData_+0
	CPI        R16, 49
	BRNE       L__applicationTask102
	JMP        L_applicationTask61
L__applicationTask102:
	LDS        R16, _receivedData_+0
	CPI        R16, 50
	BRNE       L__applicationTask103
	JMP        L_applicationTask62
L__applicationTask103:
	LDS        R16, _receivedData_+0
	CPI        R16, 51
	BRNE       L__applicationTask104
	JMP        L_applicationTask63
L__applicationTask104:
	LDS        R16, _receivedData_+0
	CPI        R16, 46
	BRNE       L__applicationTask105
	JMP        L_applicationTask64
L__applicationTask105:
	LDS        R16, _receivedData_+0
	CPI        R16, 44
	BRNE       L__applicationTask106
	JMP        L_applicationTask65
L__applicationTask106:
	JMP        L_applicationTask66
L_applicationTask54:
;Click_FM_AVR.c,489 :: 		}
L_applicationTask52:
;Click_FM_AVR.c,490 :: 		}
L_end_applicationTask:
	RET
; end of _applicationTask

_main:
	LDI        R27, 255
	OUT        SPL+0, R27
	LDI        R27, 0
	OUT        SPL+1, R27

;Click_FM_AVR.c,492 :: 		void main( )
;Click_FM_AVR.c,494 :: 		systemInit( );
	CALL       _systemInit+0
;Click_FM_AVR.c,495 :: 		applicationInit( );
	CALL       _applicationInit+0
;Click_FM_AVR.c,497 :: 		while (1)
L_main67:
;Click_FM_AVR.c,499 :: 		applicationTask( );
	CALL       _applicationTask+0
;Click_FM_AVR.c,500 :: 		}
	JMP        L_main67
;Click_FM_AVR.c,501 :: 		}
L_end_main:
L__main_end_loop:
	JMP        L__main_end_loop
; end of _main
