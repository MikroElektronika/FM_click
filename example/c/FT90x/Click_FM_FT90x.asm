_fm_casePlus:
;Click_FM_FT90x.c,54 :: 		void fm_casePlus( )
;Click_FM_FT90x.c,56 :: 		errorFlag = fm_volumeUp( );
CALL	_fm_volumeUp+0
STA.B	_errorFlag+0, R0
;Click_FM_FT90x.c,58 :: 		if (errorFlag == 0)
CMP.B	R0, #0
JMPC	R30, Z, #0, L_fm_casePlus0
;Click_FM_FT90x.c,60 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr1_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,61 :: 		mikrobus_logWrite( "   *     volume up                          *  ", _LOG_LINE );
LDK.L	R0, #?lstr2_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,62 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr3_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,63 :: 		}
JMP	L_fm_casePlus1
L_fm_casePlus0:
;Click_FM_FT90x.c,66 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr4_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,67 :: 		mikrobus_logWrite( "   *     volume max                         *  ", _LOG_LINE );
LDK.L	R0, #?lstr5_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,68 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr6_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,69 :: 		}
L_fm_casePlus1:
;Click_FM_FT90x.c,70 :: 		}
L_end_fm_casePlus:
RETURN	
; end of _fm_casePlus
_fm_caseMinus:
;Click_FM_FT90x.c,72 :: 		void fm_caseMinus( )
;Click_FM_FT90x.c,74 :: 		errorFlag = fm_volumeDown( );
CALL	_fm_volumeDown+0
STA.B	_errorFlag+0, R0
;Click_FM_FT90x.c,76 :: 		if (errorFlag == 0)
CMP.B	R0, #0
JMPC	R30, Z, #0, L_fm_caseMinus2
;Click_FM_FT90x.c,78 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr7_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,79 :: 		mikrobus_logWrite( "   *     volume down                        *  ", _LOG_LINE );
LDK.L	R0, #?lstr8_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,80 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr9_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,81 :: 		}
JMP	L_fm_caseMinus3
L_fm_caseMinus2:
;Click_FM_FT90x.c,84 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr10_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,85 :: 		mikrobus_logWrite( "   *     volume min                         *  ", _LOG_LINE );
LDK.L	R0, #?lstr11_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,86 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr12_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,87 :: 		}
L_fm_caseMinus3:
;Click_FM_FT90x.c,88 :: 		}
L_end_fm_caseMinus:
RETURN	
; end of _fm_caseMinus
_fm_caseSeek:
;Click_FM_FT90x.c,90 :: 		void fm_caseSeek( )
;Click_FM_FT90x.c,92 :: 		fm_seek( );
CALL	_fm_seek+0
;Click_FM_FT90x.c,94 :: 		Delay_ms(100);
LPM.L	R28, #3333331
NOP	
L_fm_caseSeek4:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_fm_caseSeek4
JMP	$+8
	#3333331
NOP	
NOP	
;Click_FM_FT90x.c,96 :: 		fm_endSeek( );
CALL	_fm_endSeek+0
;Click_FM_FT90x.c,98 :: 		Delay_ms(10);
LPM.L	R28, #333331
NOP	
L_fm_caseSeek6:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_fm_caseSeek6
JMP	$+8
	#333331
NOP	
NOP	
;Click_FM_FT90x.c,100 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
CALL	_fm_getReceivedSignalStrengthIndicator+0
STA.S	_receivedSignalStrengthIndicator+0, R0
;Click_FM_FT90x.c,101 :: 		channelFrequency_ = fm_getChannelFrequency( );
CALL	_fm_getChannelFrequency+0
STA.L	_channelFrequency_+0, R0
;Click_FM_FT90x.c,102 :: 		stationFrequency = fm_getChannel( );
CALL	_fm_getChannel+0
STA.S	_stationFrequency+0, R0
;Click_FM_FT90x.c,104 :: 		WordToStr( receivedSignalStrengthIndicator, text );
LDA.S	R0, _receivedSignalStrengthIndicator+0
LDK.L	R1, #_text+0
CALL	_WordToStr+0
;Click_FM_FT90x.c,105 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr13_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,106 :: 		mikrobus_logWrite( "   *     station found                      *  ", _LOG_LINE );
LDK.L	R0, #?lstr14_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,107 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
LDK.L	R0, #?lstr15_Click_FM_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,108 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,109 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
LDK.L	R0, #?lstr16_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,111 :: 		FloatToStr( channelFrequency_, text );
LDA.L	R0, _channelFrequency_+0
LDK.L	R1, #_text+0
CALL	_FloatToStr+0
;Click_FM_FT90x.c,112 :: 		mikrobus_logWrite( "   *     channel frequency:", _LOG_TEXT );
LDK.L	R0, #?lstr17_Click_FM_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,113 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,114 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
LDK.L	R0, #?lstr18_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,115 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr19_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,116 :: 		}
L_end_fm_caseSeek:
RETURN	
; end of _fm_caseSeek
_fm_caseTune:
;Click_FM_FT90x.c,118 :: 		void fm_caseTune( )
;Click_FM_FT90x.c,120 :: 		fm_tune( 90.9 );
LDK.L	R0, #1119210701
LDL.L	R0, R0, #1119210701
CALL	_fm_tune+0
;Click_FM_FT90x.c,122 :: 		Delay_ms(100);
LPM.L	R28, #3333331
NOP	
L_fm_caseTune8:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_fm_caseTune8
JMP	$+8
	#3333331
NOP	
NOP	
;Click_FM_FT90x.c,124 :: 		fm_endTune( );
CALL	_fm_endTune+0
;Click_FM_FT90x.c,126 :: 		Delay_ms(10);
LPM.L	R28, #333331
NOP	
L_fm_caseTune10:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_fm_caseTune10
JMP	$+8
	#333331
NOP	
NOP	
;Click_FM_FT90x.c,128 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
CALL	_fm_getReceivedSignalStrengthIndicator+0
STA.S	_receivedSignalStrengthIndicator+0, R0
;Click_FM_FT90x.c,129 :: 		tunedFrequency_ = fm_getChannelFrequency( );
CALL	_fm_getChannelFrequency+0
STA.L	_tunedFrequency_+0, R0
;Click_FM_FT90x.c,130 :: 		stationFrequency = fm_getChannel( );
CALL	_fm_getChannel+0
STA.S	_stationFrequency+0, R0
;Click_FM_FT90x.c,132 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr20_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,133 :: 		mikrobus_logWrite( "   *     tune complete                      *  ", _LOG_LINE );
LDK.L	R0, #?lstr21_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,135 :: 		WordToStr( receivedSignalStrengthIndicator, text );
LDA.S	R0, _receivedSignalStrengthIndicator+0
LDK.L	R1, #_text+0
CALL	_WordToStr+0
;Click_FM_FT90x.c,136 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
LDK.L	R0, #?lstr22_Click_FM_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,137 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,138 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
LDK.L	R0, #?lstr23_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,140 :: 		FloatToStr( tunedFrequency_, text );
LDA.L	R0, _tunedFrequency_+0
LDK.L	R1, #_text+0
CALL	_FloatToStr+0
;Click_FM_FT90x.c,141 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
LDK.L	R0, #?lstr24_Click_FM_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,142 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,143 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
LDK.L	R0, #?lstr25_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,144 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr26_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,145 :: 		}
L_end_fm_caseTune:
RETURN	
; end of _fm_caseTune
_fm_caseMemorize:
;Click_FM_FT90x.c,147 :: 		void fm_caseMemorize( )
;Click_FM_FT90x.c,149 :: 		if (memory_ == 0)
LDA.B	R0, _memory_+0
CMP.B	R0, #0
JMPC	R30, Z, #0, L_fm_caseMemorize12
;Click_FM_FT90x.c,151 :: 		station1 = stationFrequency;
LDA.S	R0, _stationFrequency+0
STA.S	_station1+0, R0
;Click_FM_FT90x.c,152 :: 		memory_ += 1;
LDA.B	R0, _memory_+0
ADD.L	R0, R0, #1
STA.B	_memory_+0, R0
;Click_FM_FT90x.c,154 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr27_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,155 :: 		mikrobus_logWrite( "   *     station 1 memorized                *  ", _LOG_LINE );
LDK.L	R0, #?lstr28_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,156 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr29_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,157 :: 		}
JMP	L_fm_caseMemorize13
L_fm_caseMemorize12:
;Click_FM_FT90x.c,158 :: 		else if (memory_ == 1)
LDA.B	R0, _memory_+0
CMP.B	R0, #1
JMPC	R30, Z, #0, L_fm_caseMemorize14
;Click_FM_FT90x.c,160 :: 		station2 = stationFrequency;
LDA.S	R0, _stationFrequency+0
STA.S	_station2+0, R0
;Click_FM_FT90x.c,161 :: 		memory_ += 1;
LDA.B	R0, _memory_+0
ADD.L	R0, R0, #1
STA.B	_memory_+0, R0
;Click_FM_FT90x.c,163 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr30_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,164 :: 		mikrobus_logWrite( "   *     station 2 memorized                *  ", _LOG_LINE );
LDK.L	R0, #?lstr31_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,165 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr32_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,166 :: 		}
JMP	L_fm_caseMemorize15
L_fm_caseMemorize14:
;Click_FM_FT90x.c,167 :: 		else if (memory_ == 2)
LDA.B	R0, _memory_+0
CMP.B	R0, #2
JMPC	R30, Z, #0, L_fm_caseMemorize16
;Click_FM_FT90x.c,169 :: 		station3 = stationFrequency;
LDA.S	R0, _stationFrequency+0
STA.S	_station3+0, R0
;Click_FM_FT90x.c,170 :: 		memory_ += 1;
LDA.B	R0, _memory_+0
ADD.L	R0, R0, #1
STA.B	_memory_+0, R0
;Click_FM_FT90x.c,172 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr33_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,173 :: 		mikrobus_logWrite( "   *     station 3 memorized                *  ", _LOG_LINE );
LDK.L	R0, #?lstr34_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,174 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr35_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,175 :: 		}
JMP	L_fm_caseMemorize17
L_fm_caseMemorize16:
;Click_FM_FT90x.c,176 :: 		else if (memory_ == 3)
LDA.B	R0, _memory_+0
CMP.B	R0, #3
JMPC	R30, Z, #0, L_fm_caseMemorize18
;Click_FM_FT90x.c,178 :: 		station1 = stationFrequency;
LDA.S	R0, _stationFrequency+0
STA.S	_station1+0, R0
;Click_FM_FT90x.c,179 :: 		memory_ = 1;
LDK.L	R0, #1
STA.B	_memory_+0, R0
;Click_FM_FT90x.c,181 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr36_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,182 :: 		mikrobus_logWrite( "   *     station 1 memorized                *  ", _LOG_LINE );
LDK.L	R0, #?lstr37_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,183 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr38_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,184 :: 		}
L_fm_caseMemorize18:
L_fm_caseMemorize17:
L_fm_caseMemorize15:
L_fm_caseMemorize13:
;Click_FM_FT90x.c,185 :: 		}
L_end_fm_caseMemorize:
RETURN	
; end of _fm_caseMemorize
_fm_caseMute:
;Click_FM_FT90x.c,187 :: 		void fm_caseMute( )
;Click_FM_FT90x.c,189 :: 		if (mute_ == 0)
LDA.B	R0, _mute_+0
CMP.B	R0, #0
JMPC	R30, Z, #0, L_fm_caseMute19
;Click_FM_FT90x.c,191 :: 		fm_muteEnable( );
CALL	_fm_muteEnable+0
;Click_FM_FT90x.c,193 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr39_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,194 :: 		mikrobus_logWrite( "   *     mute enabled                       *  ", _LOG_LINE );
LDK.L	R0, #?lstr40_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,195 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr41_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,197 :: 		mute_ = 1;
LDK.L	R0, #1
STA.B	_mute_+0, R0
;Click_FM_FT90x.c,198 :: 		}
JMP	L_fm_caseMute20
L_fm_caseMute19:
;Click_FM_FT90x.c,199 :: 		else if (mute_ == 1)
LDA.B	R0, _mute_+0
CMP.B	R0, #1
JMPC	R30, Z, #0, L_fm_caseMute21
;Click_FM_FT90x.c,201 :: 		fm_muteDisable( );
CALL	_fm_muteDisable+0
;Click_FM_FT90x.c,203 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr42_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,204 :: 		mikrobus_logWrite( "   *     mute disabled                      *  ", _LOG_LINE );
LDK.L	R0, #?lstr43_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,205 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr44_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,207 :: 		mute_ = 0;
LDK.L	R0, #0
STA.B	_mute_+0, R0
;Click_FM_FT90x.c,208 :: 		}
L_fm_caseMute21:
L_fm_caseMute20:
;Click_FM_FT90x.c,209 :: 		}
L_end_fm_caseMute:
RETURN	
; end of _fm_caseMute
_fm_caseStation1:
;Click_FM_FT90x.c,211 :: 		void fm_caseStation1( )
;Click_FM_FT90x.c,213 :: 		fm_tuneChannel( station1 );
LDA.S	R0, _station1+0
CALL	_fm_tuneChannel+0
;Click_FM_FT90x.c,215 :: 		Delay_ms(100);
LPM.L	R28, #3333331
NOP	
L_fm_caseStation122:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_fm_caseStation122
JMP	$+8
	#3333331
NOP	
NOP	
;Click_FM_FT90x.c,217 :: 		fm_endTune( );
CALL	_fm_endTune+0
;Click_FM_FT90x.c,219 :: 		Delay_ms(10);
LPM.L	R28, #333331
NOP	
L_fm_caseStation124:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_fm_caseStation124
JMP	$+8
	#333331
NOP	
NOP	
;Click_FM_FT90x.c,221 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
CALL	_fm_getReceivedSignalStrengthIndicator+0
STA.S	_receivedSignalStrengthIndicator+0, R0
;Click_FM_FT90x.c,222 :: 		channelFrequency_ = fm_getChannelFrequency( );
CALL	_fm_getChannelFrequency+0
STA.L	_channelFrequency_+0, R0
;Click_FM_FT90x.c,224 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr45_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,225 :: 		mikrobus_logWrite( "   *     station 1 tuned                    *  ", _LOG_LINE );
LDK.L	R0, #?lstr46_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,227 :: 		WordToStr( receivedSignalStrengthIndicator, text );
LDA.S	R0, _receivedSignalStrengthIndicator+0
LDK.L	R1, #_text+0
CALL	_WordToStr+0
;Click_FM_FT90x.c,228 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
LDK.L	R0, #?lstr47_Click_FM_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,229 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,230 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
LDK.L	R0, #?lstr48_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,232 :: 		FloatToStr( channelFrequency_, text );
LDA.L	R0, _channelFrequency_+0
LDK.L	R1, #_text+0
CALL	_FloatToStr+0
;Click_FM_FT90x.c,233 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
LDK.L	R0, #?lstr49_Click_FM_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,234 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,235 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
LDK.L	R0, #?lstr50_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,236 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr51_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,237 :: 		}
L_end_fm_caseStation1:
RETURN	
; end of _fm_caseStation1
_fm_caseStation2:
;Click_FM_FT90x.c,239 :: 		void fm_caseStation2( )
;Click_FM_FT90x.c,241 :: 		fm_tuneChannel( station2 );
LDA.S	R0, _station2+0
CALL	_fm_tuneChannel+0
;Click_FM_FT90x.c,243 :: 		Delay_ms(100);
LPM.L	R28, #3333331
NOP	
L_fm_caseStation226:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_fm_caseStation226
JMP	$+8
	#3333331
NOP	
NOP	
;Click_FM_FT90x.c,245 :: 		fm_endTune( );
CALL	_fm_endTune+0
;Click_FM_FT90x.c,247 :: 		Delay_ms(10);
LPM.L	R28, #333331
NOP	
L_fm_caseStation228:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_fm_caseStation228
JMP	$+8
	#333331
NOP	
NOP	
;Click_FM_FT90x.c,249 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
CALL	_fm_getReceivedSignalStrengthIndicator+0
STA.S	_receivedSignalStrengthIndicator+0, R0
;Click_FM_FT90x.c,250 :: 		channelFrequency_ = fm_getChannelFrequency( );
CALL	_fm_getChannelFrequency+0
STA.L	_channelFrequency_+0, R0
;Click_FM_FT90x.c,252 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr52_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,253 :: 		mikrobus_logWrite( "   *     station 2 tuned                    *  ", _LOG_LINE );
LDK.L	R0, #?lstr53_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,255 :: 		WordToStr( receivedSignalStrengthIndicator, text );
LDA.S	R0, _receivedSignalStrengthIndicator+0
LDK.L	R1, #_text+0
CALL	_WordToStr+0
;Click_FM_FT90x.c,256 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
LDK.L	R0, #?lstr54_Click_FM_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,257 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,258 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
LDK.L	R0, #?lstr55_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,260 :: 		FloatToStr( channelFrequency_, text );
LDA.L	R0, _channelFrequency_+0
LDK.L	R1, #_text+0
CALL	_FloatToStr+0
;Click_FM_FT90x.c,261 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
LDK.L	R0, #?lstr56_Click_FM_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,262 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,263 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
LDK.L	R0, #?lstr57_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,264 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr58_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,265 :: 		}
L_end_fm_caseStation2:
RETURN	
; end of _fm_caseStation2
_fm_caseStation3:
;Click_FM_FT90x.c,267 :: 		void fm_caseStation3( )
;Click_FM_FT90x.c,269 :: 		fm_tuneChannel( station3 );
LDA.S	R0, _station3+0
CALL	_fm_tuneChannel+0
;Click_FM_FT90x.c,271 :: 		Delay_ms(100);
LPM.L	R28, #3333331
NOP	
L_fm_caseStation330:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_fm_caseStation330
JMP	$+8
	#3333331
NOP	
NOP	
;Click_FM_FT90x.c,273 :: 		fm_endTune( );
CALL	_fm_endTune+0
;Click_FM_FT90x.c,275 :: 		Delay_ms(10);
LPM.L	R28, #333331
NOP	
L_fm_caseStation332:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_fm_caseStation332
JMP	$+8
	#333331
NOP	
NOP	
;Click_FM_FT90x.c,277 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
CALL	_fm_getReceivedSignalStrengthIndicator+0
STA.S	_receivedSignalStrengthIndicator+0, R0
;Click_FM_FT90x.c,278 :: 		channelFrequency_ = fm_getChannelFrequency( );
CALL	_fm_getChannelFrequency+0
STA.L	_channelFrequency_+0, R0
;Click_FM_FT90x.c,280 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr59_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,281 :: 		mikrobus_logWrite( "   *     station 3 tuned                    *  ", _LOG_LINE );
LDK.L	R0, #?lstr60_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,283 :: 		WordToStr( receivedSignalStrengthIndicator, text );
LDA.S	R0, _receivedSignalStrengthIndicator+0
LDK.L	R1, #_text+0
CALL	_WordToStr+0
;Click_FM_FT90x.c,284 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
LDK.L	R0, #?lstr61_Click_FM_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,285 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,286 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
LDK.L	R0, #?lstr62_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,288 :: 		FloatToStr( channelFrequency_, text );
LDA.L	R0, _channelFrequency_+0
LDK.L	R1, #_text+0
CALL	_FloatToStr+0
;Click_FM_FT90x.c,289 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
LDK.L	R0, #?lstr63_Click_FM_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,290 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,291 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
LDK.L	R0, #?lstr64_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,292 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr65_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,293 :: 		}
L_end_fm_caseStation3:
RETURN	
; end of _fm_caseStation3
_fm_caseTuneUp:
;Click_FM_FT90x.c,295 :: 		void fm_caseTuneUp( )
;Click_FM_FT90x.c,297 :: 		fm_fineTuneUp( );
CALL	_fm_fineTuneUp+0
;Click_FM_FT90x.c,299 :: 		Delay_ms(100);
LPM.L	R28, #3333331
NOP	
L_fm_caseTuneUp34:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_fm_caseTuneUp34
JMP	$+8
	#3333331
NOP	
NOP	
;Click_FM_FT90x.c,301 :: 		fm_endTune( );
CALL	_fm_endTune+0
;Click_FM_FT90x.c,303 :: 		Delay_ms(10);
LPM.L	R28, #333331
NOP	
L_fm_caseTuneUp36:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_fm_caseTuneUp36
JMP	$+8
	#333331
NOP	
NOP	
;Click_FM_FT90x.c,305 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
CALL	_fm_getReceivedSignalStrengthIndicator+0
STA.S	_receivedSignalStrengthIndicator+0, R0
;Click_FM_FT90x.c,306 :: 		channelFrequency_ = fm_getChannelFrequency( );
CALL	_fm_getChannelFrequency+0
STA.L	_channelFrequency_+0, R0
;Click_FM_FT90x.c,307 :: 		stationFrequency = fm_getChannel( );
CALL	_fm_getChannel+0
STA.S	_stationFrequency+0, R0
;Click_FM_FT90x.c,309 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr66_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,310 :: 		mikrobus_logWrite( "   *     tune up                            *  ", _LOG_LINE );
LDK.L	R0, #?lstr67_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,312 :: 		WordToStr( receivedSignalStrengthIndicator, text );
LDA.S	R0, _receivedSignalStrengthIndicator+0
LDK.L	R1, #_text+0
CALL	_WordToStr+0
;Click_FM_FT90x.c,313 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
LDK.L	R0, #?lstr68_Click_FM_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,314 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,315 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
LDK.L	R0, #?lstr69_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,317 :: 		FloatToStr( channelFrequency_, text );
LDA.L	R0, _channelFrequency_+0
LDK.L	R1, #_text+0
CALL	_FloatToStr+0
;Click_FM_FT90x.c,318 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
LDK.L	R0, #?lstr70_Click_FM_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,319 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,320 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
LDK.L	R0, #?lstr71_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,321 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr72_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,322 :: 		}
L_end_fm_caseTuneUp:
RETURN	
; end of _fm_caseTuneUp
_fm_caseTuneDown:
;Click_FM_FT90x.c,324 :: 		void fm_caseTuneDown( )
;Click_FM_FT90x.c,326 :: 		fm_fineTuneDown( );
CALL	_fm_fineTuneDown+0
;Click_FM_FT90x.c,328 :: 		Delay_ms(100);
LPM.L	R28, #3333331
NOP	
L_fm_caseTuneDown38:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_fm_caseTuneDown38
JMP	$+8
	#3333331
NOP	
NOP	
;Click_FM_FT90x.c,330 :: 		fm_endTune( );
CALL	_fm_endTune+0
;Click_FM_FT90x.c,332 :: 		Delay_ms(10);
LPM.L	R28, #333331
NOP	
L_fm_caseTuneDown40:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_fm_caseTuneDown40
JMP	$+8
	#333331
NOP	
NOP	
;Click_FM_FT90x.c,334 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
CALL	_fm_getReceivedSignalStrengthIndicator+0
STA.S	_receivedSignalStrengthIndicator+0, R0
;Click_FM_FT90x.c,335 :: 		channelFrequency_ = fm_getChannelFrequency( );
CALL	_fm_getChannelFrequency+0
STA.L	_channelFrequency_+0, R0
;Click_FM_FT90x.c,336 :: 		stationFrequency = fm_getChannel( );
CALL	_fm_getChannel+0
STA.S	_stationFrequency+0, R0
;Click_FM_FT90x.c,338 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr73_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,339 :: 		mikrobus_logWrite( "   *     tune down                          *  ", _LOG_LINE );
LDK.L	R0, #?lstr74_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,341 :: 		WordToStr( receivedSignalStrengthIndicator, text );
LDA.S	R0, _receivedSignalStrengthIndicator+0
LDK.L	R1, #_text+0
CALL	_WordToStr+0
;Click_FM_FT90x.c,342 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
LDK.L	R0, #?lstr75_Click_FM_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,343 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,344 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
LDK.L	R0, #?lstr76_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,346 :: 		FloatToStr( channelFrequency_, text );
LDA.L	R0, _channelFrequency_+0
LDK.L	R1, #_text+0
CALL	_FloatToStr+0
;Click_FM_FT90x.c,347 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
LDK.L	R0, #?lstr77_Click_FM_FT90x+0
LDK.L	R1, #1
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,348 :: 		mikrobus_logWrite( text, _LOG_TEXT );
LDK.L	R1, #1
LDK.L	R0, #_text+0
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,349 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
LDK.L	R0, #?lstr78_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,350 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr79_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,351 :: 		}
L_end_fm_caseTuneDown:
RETURN	
; end of _fm_caseTuneDown
_fm_caseWrongCommand:
;Click_FM_FT90x.c,353 :: 		void fm_caseWrongCommand( )
;Click_FM_FT90x.c,355 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr80_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,356 :: 		mikrobus_logWrite( "   *     wrong command                      *  ", _LOG_LINE );
LDK.L	R0, #?lstr81_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,357 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr82_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,358 :: 		}
L_end_fm_caseWrongCommand:
RETURN	
; end of _fm_caseWrongCommand
_systemInit:
;Click_FM_FT90x.c,360 :: 		void systemInit( )
;Click_FM_FT90x.c,362 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_AN_PIN,  _GPIO_INPUT );
LDK.L	R2, #1
LDK.L	R1, #0
LDK.L	R0, #0
CALL	_mikrobus_gpioInit+0
;Click_FM_FT90x.c,363 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
LDK.L	R2, #0
LDK.L	R1, #1
LDK.L	R0, #0
CALL	_mikrobus_gpioInit+0
;Click_FM_FT90x.c,364 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN,  _GPIO_OUTPUT );
LDK.L	R2, #0
LDK.L	R1, #2
LDK.L	R0, #0
CALL	_mikrobus_gpioInit+0
;Click_FM_FT90x.c,365 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
LDK.L	R2, #1
LDK.L	R1, #7
LDK.L	R0, #0
CALL	_mikrobus_gpioInit+0
;Click_FM_FT90x.c,367 :: 		mikrobus_i2cInit( _MIKROBUS1, &_FM_I2C_CFG[0] );
LDK.L	R1, #__FM_I2C_CFG+0
LDK.L	R0, #0
CALL	_mikrobus_i2cInit+0
;Click_FM_FT90x.c,369 :: 		mikrobus_logInit( _LOG_USBUART, 115200 );
LDK.L	R1, #115200
LDK.L	R0, #16
CALL	_mikrobus_logInit+0
;Click_FM_FT90x.c,371 :: 		Delay_ms(100);
LPM.L	R28, #3333331
NOP	
L_systemInit42:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_systemInit42
JMP	$+8
	#3333331
NOP	
NOP	
;Click_FM_FT90x.c,373 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr83_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,374 :: 		mikrobus_logWrite( "   *     system init done                   *  ", _LOG_LINE );
LDK.L	R0, #?lstr84_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,375 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr85_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,376 :: 		}
L_end_systemInit:
RETURN	
; end of _systemInit
_applicationInit:
;Click_FM_FT90x.c,378 :: 		void applicationInit( )
;Click_FM_FT90x.c,380 :: 		fm_i2cDriverInit( (T_FM_P)&_MIKROBUS1_GPIO, (T_FM_P)&_MIKROBUS1_I2C, 0x10 );
LDK.L	R2, #16
LDK.L	R1, #__MIKROBUS1_I2C+0
LDK.L	R0, #__MIKROBUS1_GPIO+0
CALL	_fm_i2cDriverInit+0
;Click_FM_FT90x.c,382 :: 		Delay_ms(500);
LPM.L	R28, #16666665
NOP	
L_applicationInit44:
SUB.L	R28, R28, #1
CMP.L	R28, #0
JMPC	R30, Z, #0, L_applicationInit44
JMP	$+8
	#16666665
;Click_FM_FT90x.c,384 :: 		fm_powerUp( );
CALL	_fm_powerup+0
;Click_FM_FT90x.c,386 :: 		fm_basicSettings( );
CALL	_fm_basicSettings+0
;Click_FM_FT90x.c,388 :: 		fm_setVolume( volumeLevel_ );
LDA.B	R0, _volumeLevel_+0
CALL	_fm_setVolume+0
;Click_FM_FT90x.c,390 :: 		fm_setSnrThreshold( snrThreshold_ );
LDA.B	R0, _snrThreshold_+0
CALL	_fm_setSnrThreshold+0
;Click_FM_FT90x.c,392 :: 		fm_setSeekThreshold( seekThreshold_ );
LDA.S	R0, _seekThreshold_+0
CALL	_fm_setSeekThreshold+0
;Click_FM_FT90x.c,394 :: 		fm_setSeekImpulseDetectionThreshold( impulseDetectionThreshold_ );
LDA.B	R0, _impulseDetectionThreshold_+0
CALL	_fm_setSeekImpulseDetectionThreshold+0
;Click_FM_FT90x.c,396 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr86_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,397 :: 		mikrobus_logWrite( "   *     application init done              *  ", _LOG_LINE );
LDK.L	R0, #?lstr87_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,398 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
LDK.L	R0, #?lstr88_Click_FM_FT90x+0
LDK.L	R1, #2
CALL	_mikrobus_logWrite+0
;Click_FM_FT90x.c,399 :: 		}
L_end_applicationInit:
RETURN	
; end of _applicationInit
_applicationTask:
;Click_FM_FT90x.c,401 :: 		void applicationTask( )
;Click_FM_FT90x.c,403 :: 		dataReady = UART_Rdy_Ptr( );
LDA.L	R6, _UART_Rdy_Ptr+0
CALLI	R6
STA.B	_dataReady+0, R0
;Click_FM_FT90x.c,405 :: 		if (dataReady != 0)
CMP.B	R0, #0
JMPC	R30, Z, #1, L_applicationTask46
;Click_FM_FT90x.c,407 :: 		receivedData = UART_Rd_Ptr( );
LDA.L	R6, _UART_Rd_Ptr+0
CALLI	R6
STA.B	_receivedData+0, R0
;Click_FM_FT90x.c,409 :: 		switch (receivedData)
JMP	L_applicationTask47
;Click_FM_FT90x.c,411 :: 		case '+' :
L_applicationTask49:
;Click_FM_FT90x.c,413 :: 		fm_casePlus( );
CALL	_fm_casePlus+0
;Click_FM_FT90x.c,415 :: 		break;
JMP	L_applicationTask48
;Click_FM_FT90x.c,417 :: 		case '-' :
L_applicationTask50:
;Click_FM_FT90x.c,419 :: 		fm_caseMinus( );
CALL	_fm_caseMinus+0
;Click_FM_FT90x.c,421 :: 		break;
JMP	L_applicationTask48
;Click_FM_FT90x.c,423 :: 		case 's' :
L_applicationTask51:
;Click_FM_FT90x.c,425 :: 		fm_caseSeek( );
CALL	_fm_caseSeek+0
;Click_FM_FT90x.c,427 :: 		break;
JMP	L_applicationTask48
;Click_FM_FT90x.c,429 :: 		case 't' :
L_applicationTask52:
;Click_FM_FT90x.c,431 :: 		fm_caseTune( );
CALL	_fm_caseTune+0
;Click_FM_FT90x.c,433 :: 		break;
JMP	L_applicationTask48
;Click_FM_FT90x.c,435 :: 		case 'm' :
L_applicationTask53:
;Click_FM_FT90x.c,437 :: 		fm_caseMemorize( );
CALL	_fm_caseMemorize+0
;Click_FM_FT90x.c,439 :: 		break;
JMP	L_applicationTask48
;Click_FM_FT90x.c,441 :: 		case 'i' :
L_applicationTask54:
;Click_FM_FT90x.c,443 :: 		fm_caseMute( );
CALL	_fm_caseMute+0
;Click_FM_FT90x.c,445 :: 		break;
JMP	L_applicationTask48
;Click_FM_FT90x.c,447 :: 		case '1' :
L_applicationTask55:
;Click_FM_FT90x.c,449 :: 		fm_caseStation1( );
CALL	_fm_caseStation1+0
;Click_FM_FT90x.c,451 :: 		break;
JMP	L_applicationTask48
;Click_FM_FT90x.c,453 :: 		case '2' :
L_applicationTask56:
;Click_FM_FT90x.c,455 :: 		fm_caseStation2( );
CALL	_fm_caseStation2+0
;Click_FM_FT90x.c,457 :: 		break;
JMP	L_applicationTask48
;Click_FM_FT90x.c,459 :: 		case '3' :
L_applicationTask57:
;Click_FM_FT90x.c,461 :: 		fm_caseStation3( );
CALL	_fm_caseStation3+0
;Click_FM_FT90x.c,463 :: 		break;
JMP	L_applicationTask48
;Click_FM_FT90x.c,465 :: 		case '.' :
L_applicationTask58:
;Click_FM_FT90x.c,467 :: 		fm_caseTuneUp( );
CALL	_fm_caseTuneUp+0
;Click_FM_FT90x.c,469 :: 		break;
JMP	L_applicationTask48
;Click_FM_FT90x.c,471 :: 		case ',' :
L_applicationTask59:
;Click_FM_FT90x.c,473 :: 		fm_caseTuneDown( );
CALL	_fm_caseTuneDown+0
;Click_FM_FT90x.c,475 :: 		break;
JMP	L_applicationTask48
;Click_FM_FT90x.c,477 :: 		default :
L_applicationTask60:
;Click_FM_FT90x.c,479 :: 		fm_caseWrongCommand( );
CALL	_fm_caseWrongCommand+0
;Click_FM_FT90x.c,481 :: 		break;
JMP	L_applicationTask48
;Click_FM_FT90x.c,483 :: 		}
L_applicationTask47:
LDA.B	R0, _receivedData+0
CMP.B	R0, #43
JMPC	R30, Z, #1, L_applicationTask49
LDA.B	R0, _receivedData+0
CMP.B	R0, #45
JMPC	R30, Z, #1, L_applicationTask50
LDA.B	R0, _receivedData+0
CMP.B	R0, #115
JMPC	R30, Z, #1, L_applicationTask51
LDA.B	R0, _receivedData+0
CMP.B	R0, #116
JMPC	R30, Z, #1, L_applicationTask52
LDA.B	R0, _receivedData+0
CMP.B	R0, #109
JMPC	R30, Z, #1, L_applicationTask53
LDA.B	R0, _receivedData+0
CMP.B	R0, #105
JMPC	R30, Z, #1, L_applicationTask54
LDA.B	R0, _receivedData+0
CMP.B	R0, #49
JMPC	R30, Z, #1, L_applicationTask55
LDA.B	R0, _receivedData+0
CMP.B	R0, #50
JMPC	R30, Z, #1, L_applicationTask56
LDA.B	R0, _receivedData+0
CMP.B	R0, #51
JMPC	R30, Z, #1, L_applicationTask57
LDA.B	R0, _receivedData+0
CMP.B	R0, #46
JMPC	R30, Z, #1, L_applicationTask58
LDA.B	R0, _receivedData+0
CMP.B	R0, #44
JMPC	R30, Z, #1, L_applicationTask59
JMP	L_applicationTask60
L_applicationTask48:
;Click_FM_FT90x.c,484 :: 		}
L_applicationTask46:
;Click_FM_FT90x.c,485 :: 		}
L_end_applicationTask:
RETURN	
; end of _applicationTask
_main:
;Click_FM_FT90x.c,487 :: 		void main( )
LDK.L	SP, #43605
;Click_FM_FT90x.c,489 :: 		systemInit( );
CALL	_systemInit+0
;Click_FM_FT90x.c,490 :: 		applicationInit( );
CALL	_applicationInit+0
;Click_FM_FT90x.c,492 :: 		while (1)
L_main61:
;Click_FM_FT90x.c,494 :: 		applicationTask( );
CALL	_applicationTask+0
;Click_FM_FT90x.c,495 :: 		}
JMP	L_main61
;Click_FM_FT90x.c,496 :: 		}
L_end_main:
L__main_end_loop:
JMP	L__main_end_loop
; end of _main
