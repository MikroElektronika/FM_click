
_fm_casePlus:

;Click_FM_PIC.c,53 :: 		void fm_casePlus( )
;Click_FM_PIC.c,55 :: 		errorFlag = fm_volumeUp( );
	CALL        _fm_volumeUp+0, 0
	MOVF        R0, 0 
	MOVWF       _errorFlag+0 
;Click_FM_PIC.c,57 :: 		if (errorFlag == 0)
	MOVF        R0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_fm_casePlus0
;Click_FM_PIC.c,59 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr1_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr1_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,60 :: 		mikrobus_logWrite( "   *     volume up                          *  ", _LOG_LINE );
	MOVLW       ?lstr2_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr2_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,61 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr3_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr3_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,62 :: 		}
	GOTO        L_fm_casePlus1
L_fm_casePlus0:
;Click_FM_PIC.c,65 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr4_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr4_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,66 :: 		mikrobus_logWrite( "   *     volume max                         *  ", _LOG_LINE );
	MOVLW       ?lstr5_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr5_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,67 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr6_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr6_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,68 :: 		}
L_fm_casePlus1:
;Click_FM_PIC.c,69 :: 		}
L_end_fm_casePlus:
	RETURN      0
; end of _fm_casePlus

_fm_caseMinus:

;Click_FM_PIC.c,71 :: 		void fm_caseMinus( )
;Click_FM_PIC.c,73 :: 		errorFlag = fm_volumeDown( );
	CALL        _fm_volumeDown+0, 0
	MOVF        R0, 0 
	MOVWF       _errorFlag+0 
;Click_FM_PIC.c,75 :: 		if (errorFlag == 0)
	MOVF        R0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_fm_caseMinus2
;Click_FM_PIC.c,77 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr7_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr7_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,78 :: 		mikrobus_logWrite( "   *     volume down                        *  ", _LOG_LINE );
	MOVLW       ?lstr8_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr8_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,79 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr9_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr9_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,80 :: 		}
	GOTO        L_fm_caseMinus3
L_fm_caseMinus2:
;Click_FM_PIC.c,83 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr10_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr10_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,84 :: 		mikrobus_logWrite( "   *     volume min                         *  ", _LOG_LINE );
	MOVLW       ?lstr11_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr11_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,85 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr12_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr12_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,86 :: 		}
L_fm_caseMinus3:
;Click_FM_PIC.c,87 :: 		}
L_end_fm_caseMinus:
	RETURN      0
; end of _fm_caseMinus

_fm_caseSeek:

;Click_FM_PIC.c,89 :: 		void fm_caseSeek( )
;Click_FM_PIC.c,91 :: 		fm_seek( );
	CALL        _fm_seek+0, 0
;Click_FM_PIC.c,93 :: 		Delay_ms(100);
	MOVLW       9
	MOVWF       R11, 0
	MOVLW       30
	MOVWF       R12, 0
	MOVLW       228
	MOVWF       R13, 0
L_fm_caseSeek4:
	DECFSZ      R13, 1, 1
	BRA         L_fm_caseSeek4
	DECFSZ      R12, 1, 1
	BRA         L_fm_caseSeek4
	DECFSZ      R11, 1, 1
	BRA         L_fm_caseSeek4
	NOP
;Click_FM_PIC.c,95 :: 		fm_endSeek( );
	CALL        _fm_endSeek+0, 0
;Click_FM_PIC.c,97 :: 		Delay_ms(10);
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_fm_caseSeek5:
	DECFSZ      R13, 1, 1
	BRA         L_fm_caseSeek5
	DECFSZ      R12, 1, 1
	BRA         L_fm_caseSeek5
	NOP
	NOP
;Click_FM_PIC.c,99 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
	CALL        _fm_getReceivedSignalStrengthIndicator+0, 0
	MOVF        R0, 0 
	MOVWF       _receivedSignalStrengthIndicator+0 
	MOVLW       0
	MOVWF       _receivedSignalStrengthIndicator+1 
;Click_FM_PIC.c,100 :: 		channelFrequency_ = fm_getChannelFrequency( );
	CALL        _fm_getChannelFrequency+0, 0
	MOVF        R0, 0 
	MOVWF       _channelFrequency_+0 
	MOVF        R1, 0 
	MOVWF       _channelFrequency_+1 
	MOVF        R2, 0 
	MOVWF       _channelFrequency_+2 
	MOVF        R3, 0 
	MOVWF       _channelFrequency_+3 
;Click_FM_PIC.c,101 :: 		stationFrequency = fm_getChannel( );
	CALL        _fm_getChannel+0, 0
	MOVF        R0, 0 
	MOVWF       _stationFrequency+0 
	MOVF        R1, 0 
	MOVWF       _stationFrequency+1 
;Click_FM_PIC.c,103 :: 		WordToStr( receivedSignalStrengthIndicator, text );
	MOVF        _receivedSignalStrengthIndicator+0, 0 
	MOVWF       FARG_WordToStr_input+0 
	MOVF        _receivedSignalStrengthIndicator+1, 0 
	MOVWF       FARG_WordToStr_input+1 
	MOVLW       _text+0
	MOVWF       FARG_WordToStr_output+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_WordToStr_output+1 
	CALL        _WordToStr+0, 0
;Click_FM_PIC.c,104 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr13_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr13_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,105 :: 		mikrobus_logWrite( "   *     station found                      *  ", _LOG_LINE );
	MOVLW       ?lstr14_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr14_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,106 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
	MOVLW       ?lstr15_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr15_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,107 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,108 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
	MOVLW       ?lstr16_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr16_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,110 :: 		FloatToStr( channelFrequency_, text );
	MOVF        _channelFrequency_+0, 0 
	MOVWF       FARG_FloatToStr_fnum+0 
	MOVF        _channelFrequency_+1, 0 
	MOVWF       FARG_FloatToStr_fnum+1 
	MOVF        _channelFrequency_+2, 0 
	MOVWF       FARG_FloatToStr_fnum+2 
	MOVF        _channelFrequency_+3, 0 
	MOVWF       FARG_FloatToStr_fnum+3 
	MOVLW       _text+0
	MOVWF       FARG_FloatToStr_str+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_FloatToStr_str+1 
	CALL        _FloatToStr+0, 0
;Click_FM_PIC.c,111 :: 		mikrobus_logWrite( "   *     channel frequency:", _LOG_TEXT );
	MOVLW       ?lstr17_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr17_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,112 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,113 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
	MOVLW       ?lstr18_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr18_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,114 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr19_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr19_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,115 :: 		}
L_end_fm_caseSeek:
	RETURN      0
; end of _fm_caseSeek

_fm_caseTune:

;Click_FM_PIC.c,117 :: 		void fm_caseTune( )
;Click_FM_PIC.c,119 :: 		fm_tune( 90.9 );
	MOVLW       205
	MOVWF       FARG_fm_tune_channelFrequency+0 
	MOVLW       204
	MOVWF       FARG_fm_tune_channelFrequency+1 
	MOVLW       53
	MOVWF       FARG_fm_tune_channelFrequency+2 
	MOVLW       133
	MOVWF       FARG_fm_tune_channelFrequency+3 
	CALL        _fm_tune+0, 0
;Click_FM_PIC.c,121 :: 		Delay_ms(100);
	MOVLW       9
	MOVWF       R11, 0
	MOVLW       30
	MOVWF       R12, 0
	MOVLW       228
	MOVWF       R13, 0
L_fm_caseTune6:
	DECFSZ      R13, 1, 1
	BRA         L_fm_caseTune6
	DECFSZ      R12, 1, 1
	BRA         L_fm_caseTune6
	DECFSZ      R11, 1, 1
	BRA         L_fm_caseTune6
	NOP
;Click_FM_PIC.c,123 :: 		fm_endTune( );
	CALL        _fm_endTune+0, 0
;Click_FM_PIC.c,125 :: 		Delay_ms(10);
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_fm_caseTune7:
	DECFSZ      R13, 1, 1
	BRA         L_fm_caseTune7
	DECFSZ      R12, 1, 1
	BRA         L_fm_caseTune7
	NOP
	NOP
;Click_FM_PIC.c,127 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
	CALL        _fm_getReceivedSignalStrengthIndicator+0, 0
	MOVF        R0, 0 
	MOVWF       _receivedSignalStrengthIndicator+0 
	MOVLW       0
	MOVWF       _receivedSignalStrengthIndicator+1 
;Click_FM_PIC.c,128 :: 		tunedFrequency_ = fm_getChannelFrequency( );
	CALL        _fm_getChannelFrequency+0, 0
	MOVF        R0, 0 
	MOVWF       _tunedFrequency_+0 
	MOVF        R1, 0 
	MOVWF       _tunedFrequency_+1 
	MOVF        R2, 0 
	MOVWF       _tunedFrequency_+2 
	MOVF        R3, 0 
	MOVWF       _tunedFrequency_+3 
;Click_FM_PIC.c,129 :: 		stationFrequency = fm_getChannel( );
	CALL        _fm_getChannel+0, 0
	MOVF        R0, 0 
	MOVWF       _stationFrequency+0 
	MOVF        R1, 0 
	MOVWF       _stationFrequency+1 
;Click_FM_PIC.c,131 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr20_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr20_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,132 :: 		mikrobus_logWrite( "   *     tune complete                      *  ", _LOG_LINE );
	MOVLW       ?lstr21_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr21_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,134 :: 		WordToStr( receivedSignalStrengthIndicator, text );
	MOVF        _receivedSignalStrengthIndicator+0, 0 
	MOVWF       FARG_WordToStr_input+0 
	MOVF        _receivedSignalStrengthIndicator+1, 0 
	MOVWF       FARG_WordToStr_input+1 
	MOVLW       _text+0
	MOVWF       FARG_WordToStr_output+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_WordToStr_output+1 
	CALL        _WordToStr+0, 0
;Click_FM_PIC.c,135 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
	MOVLW       ?lstr22_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr22_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,136 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,137 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
	MOVLW       ?lstr23_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr23_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,139 :: 		FloatToStr( tunedFrequency_, text );
	MOVF        _tunedFrequency_+0, 0 
	MOVWF       FARG_FloatToStr_fnum+0 
	MOVF        _tunedFrequency_+1, 0 
	MOVWF       FARG_FloatToStr_fnum+1 
	MOVF        _tunedFrequency_+2, 0 
	MOVWF       FARG_FloatToStr_fnum+2 
	MOVF        _tunedFrequency_+3, 0 
	MOVWF       FARG_FloatToStr_fnum+3 
	MOVLW       _text+0
	MOVWF       FARG_FloatToStr_str+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_FloatToStr_str+1 
	CALL        _FloatToStr+0, 0
;Click_FM_PIC.c,140 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
	MOVLW       ?lstr24_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr24_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,141 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,142 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
	MOVLW       ?lstr25_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr25_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,143 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr26_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr26_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,144 :: 		}
L_end_fm_caseTune:
	RETURN      0
; end of _fm_caseTune

_fm_caseMemorize:

;Click_FM_PIC.c,146 :: 		void fm_caseMemorize( )
;Click_FM_PIC.c,148 :: 		if (memory_ == 0)
	MOVF        _memory_+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_fm_caseMemorize8
;Click_FM_PIC.c,150 :: 		station1 = stationFrequency;
	MOVF        _stationFrequency+0, 0 
	MOVWF       _station1+0 
	MOVF        _stationFrequency+1, 0 
	MOVWF       _station1+1 
;Click_FM_PIC.c,151 :: 		memory_ += 1;
	INCF        _memory_+0, 1 
;Click_FM_PIC.c,153 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr27_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr27_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,154 :: 		mikrobus_logWrite( "   *     station 1 memorized                *  ", _LOG_LINE );
	MOVLW       ?lstr28_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr28_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,155 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr29_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr29_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,156 :: 		}
	GOTO        L_fm_caseMemorize9
L_fm_caseMemorize8:
;Click_FM_PIC.c,157 :: 		else if (memory_ == 1)
	MOVF        _memory_+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_fm_caseMemorize10
;Click_FM_PIC.c,159 :: 		station2 = stationFrequency;
	MOVF        _stationFrequency+0, 0 
	MOVWF       _station2+0 
	MOVF        _stationFrequency+1, 0 
	MOVWF       _station2+1 
;Click_FM_PIC.c,160 :: 		memory_ += 1;
	INCF        _memory_+0, 1 
;Click_FM_PIC.c,162 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr30_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr30_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,163 :: 		mikrobus_logWrite( "   *     station 2 memorized                *  ", _LOG_LINE );
	MOVLW       ?lstr31_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr31_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,164 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr32_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr32_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,165 :: 		}
	GOTO        L_fm_caseMemorize11
L_fm_caseMemorize10:
;Click_FM_PIC.c,166 :: 		else if (memory_ == 2)
	MOVF        _memory_+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_fm_caseMemorize12
;Click_FM_PIC.c,168 :: 		station3 = stationFrequency;
	MOVF        _stationFrequency+0, 0 
	MOVWF       _station3+0 
	MOVF        _stationFrequency+1, 0 
	MOVWF       _station3+1 
;Click_FM_PIC.c,169 :: 		memory_ += 1;
	INCF        _memory_+0, 1 
;Click_FM_PIC.c,171 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr33_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr33_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,172 :: 		mikrobus_logWrite( "   *     station 3 memorized                *  ", _LOG_LINE );
	MOVLW       ?lstr34_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr34_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,173 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr35_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr35_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,174 :: 		}
	GOTO        L_fm_caseMemorize13
L_fm_caseMemorize12:
;Click_FM_PIC.c,175 :: 		else if (memory_ == 3)
	MOVF        _memory_+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_fm_caseMemorize14
;Click_FM_PIC.c,177 :: 		station1 = stationFrequency;
	MOVF        _stationFrequency+0, 0 
	MOVWF       _station1+0 
	MOVF        _stationFrequency+1, 0 
	MOVWF       _station1+1 
;Click_FM_PIC.c,178 :: 		memory_ = 1;
	MOVLW       1
	MOVWF       _memory_+0 
;Click_FM_PIC.c,180 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr36_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr36_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,181 :: 		mikrobus_logWrite( "   *     station 1 memorized                *  ", _LOG_LINE );
	MOVLW       ?lstr37_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr37_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,182 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr38_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr38_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,183 :: 		}
L_fm_caseMemorize14:
L_fm_caseMemorize13:
L_fm_caseMemorize11:
L_fm_caseMemorize9:
;Click_FM_PIC.c,184 :: 		}
L_end_fm_caseMemorize:
	RETURN      0
; end of _fm_caseMemorize

_fm_caseMute:

;Click_FM_PIC.c,186 :: 		void fm_caseMute( )
;Click_FM_PIC.c,188 :: 		if (mute_ == 0)
	MOVF        _mute_+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_fm_caseMute15
;Click_FM_PIC.c,190 :: 		fm_muteEnable( );
	CALL        _fm_muteEnable+0, 0
;Click_FM_PIC.c,192 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr39_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr39_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,193 :: 		mikrobus_logWrite( "   *     mute enabled                       *  ", _LOG_LINE );
	MOVLW       ?lstr40_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr40_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,194 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr41_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr41_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,196 :: 		mute_ = 1;
	MOVLW       1
	MOVWF       _mute_+0 
;Click_FM_PIC.c,197 :: 		}
	GOTO        L_fm_caseMute16
L_fm_caseMute15:
;Click_FM_PIC.c,198 :: 		else if (mute_ == 1)
	MOVF        _mute_+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_fm_caseMute17
;Click_FM_PIC.c,200 :: 		fm_muteDisable( );
	CALL        _fm_muteDisable+0, 0
;Click_FM_PIC.c,202 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr42_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr42_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,203 :: 		mikrobus_logWrite( "   *     mute disabled                      *  ", _LOG_LINE );
	MOVLW       ?lstr43_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr43_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,204 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr44_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr44_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,206 :: 		mute_ = 0;
	CLRF        _mute_+0 
;Click_FM_PIC.c,207 :: 		}
L_fm_caseMute17:
L_fm_caseMute16:
;Click_FM_PIC.c,208 :: 		}
L_end_fm_caseMute:
	RETURN      0
; end of _fm_caseMute

_fm_caseStation1:

;Click_FM_PIC.c,210 :: 		void fm_caseStation1( )
;Click_FM_PIC.c,212 :: 		fm_tuneChannel( station1 );
	MOVF        _station1+0, 0 
	MOVWF       FARG_fm_tuneChannel_channel_+0 
	MOVF        _station1+1, 0 
	MOVWF       FARG_fm_tuneChannel_channel_+1 
	CALL        _fm_tuneChannel+0, 0
;Click_FM_PIC.c,214 :: 		Delay_ms(100);
	MOVLW       9
	MOVWF       R11, 0
	MOVLW       30
	MOVWF       R12, 0
	MOVLW       228
	MOVWF       R13, 0
L_fm_caseStation118:
	DECFSZ      R13, 1, 1
	BRA         L_fm_caseStation118
	DECFSZ      R12, 1, 1
	BRA         L_fm_caseStation118
	DECFSZ      R11, 1, 1
	BRA         L_fm_caseStation118
	NOP
;Click_FM_PIC.c,216 :: 		fm_endTune( );
	CALL        _fm_endTune+0, 0
;Click_FM_PIC.c,218 :: 		Delay_ms(10);
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_fm_caseStation119:
	DECFSZ      R13, 1, 1
	BRA         L_fm_caseStation119
	DECFSZ      R12, 1, 1
	BRA         L_fm_caseStation119
	NOP
	NOP
;Click_FM_PIC.c,220 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
	CALL        _fm_getReceivedSignalStrengthIndicator+0, 0
	MOVF        R0, 0 
	MOVWF       _receivedSignalStrengthIndicator+0 
	MOVLW       0
	MOVWF       _receivedSignalStrengthIndicator+1 
;Click_FM_PIC.c,221 :: 		channelFrequency_ = fm_getChannelFrequency( );
	CALL        _fm_getChannelFrequency+0, 0
	MOVF        R0, 0 
	MOVWF       _channelFrequency_+0 
	MOVF        R1, 0 
	MOVWF       _channelFrequency_+1 
	MOVF        R2, 0 
	MOVWF       _channelFrequency_+2 
	MOVF        R3, 0 
	MOVWF       _channelFrequency_+3 
;Click_FM_PIC.c,223 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr45_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr45_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,224 :: 		mikrobus_logWrite( "   *     station 1 tuned                    *  ", _LOG_LINE );
	MOVLW       ?lstr46_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr46_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,226 :: 		WordToStr( receivedSignalStrengthIndicator, text );
	MOVF        _receivedSignalStrengthIndicator+0, 0 
	MOVWF       FARG_WordToStr_input+0 
	MOVF        _receivedSignalStrengthIndicator+1, 0 
	MOVWF       FARG_WordToStr_input+1 
	MOVLW       _text+0
	MOVWF       FARG_WordToStr_output+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_WordToStr_output+1 
	CALL        _WordToStr+0, 0
;Click_FM_PIC.c,227 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
	MOVLW       ?lstr47_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr47_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,228 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,229 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
	MOVLW       ?lstr48_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr48_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,231 :: 		FloatToStr( channelFrequency_, text );
	MOVF        _channelFrequency_+0, 0 
	MOVWF       FARG_FloatToStr_fnum+0 
	MOVF        _channelFrequency_+1, 0 
	MOVWF       FARG_FloatToStr_fnum+1 
	MOVF        _channelFrequency_+2, 0 
	MOVWF       FARG_FloatToStr_fnum+2 
	MOVF        _channelFrequency_+3, 0 
	MOVWF       FARG_FloatToStr_fnum+3 
	MOVLW       _text+0
	MOVWF       FARG_FloatToStr_str+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_FloatToStr_str+1 
	CALL        _FloatToStr+0, 0
;Click_FM_PIC.c,232 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
	MOVLW       ?lstr49_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr49_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,233 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,234 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
	MOVLW       ?lstr50_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr50_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,235 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr51_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr51_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,236 :: 		}
L_end_fm_caseStation1:
	RETURN      0
; end of _fm_caseStation1

_fm_caseStation2:

;Click_FM_PIC.c,238 :: 		void fm_caseStation2( )
;Click_FM_PIC.c,240 :: 		fm_tuneChannel( station2 );
	MOVF        _station2+0, 0 
	MOVWF       FARG_fm_tuneChannel_channel_+0 
	MOVF        _station2+1, 0 
	MOVWF       FARG_fm_tuneChannel_channel_+1 
	CALL        _fm_tuneChannel+0, 0
;Click_FM_PIC.c,242 :: 		Delay_ms(100);
	MOVLW       9
	MOVWF       R11, 0
	MOVLW       30
	MOVWF       R12, 0
	MOVLW       228
	MOVWF       R13, 0
L_fm_caseStation220:
	DECFSZ      R13, 1, 1
	BRA         L_fm_caseStation220
	DECFSZ      R12, 1, 1
	BRA         L_fm_caseStation220
	DECFSZ      R11, 1, 1
	BRA         L_fm_caseStation220
	NOP
;Click_FM_PIC.c,244 :: 		fm_endTune( );
	CALL        _fm_endTune+0, 0
;Click_FM_PIC.c,246 :: 		Delay_ms(10);
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_fm_caseStation221:
	DECFSZ      R13, 1, 1
	BRA         L_fm_caseStation221
	DECFSZ      R12, 1, 1
	BRA         L_fm_caseStation221
	NOP
	NOP
;Click_FM_PIC.c,248 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
	CALL        _fm_getReceivedSignalStrengthIndicator+0, 0
	MOVF        R0, 0 
	MOVWF       _receivedSignalStrengthIndicator+0 
	MOVLW       0
	MOVWF       _receivedSignalStrengthIndicator+1 
;Click_FM_PIC.c,249 :: 		channelFrequency_ = fm_getChannelFrequency( );
	CALL        _fm_getChannelFrequency+0, 0
	MOVF        R0, 0 
	MOVWF       _channelFrequency_+0 
	MOVF        R1, 0 
	MOVWF       _channelFrequency_+1 
	MOVF        R2, 0 
	MOVWF       _channelFrequency_+2 
	MOVF        R3, 0 
	MOVWF       _channelFrequency_+3 
;Click_FM_PIC.c,251 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr52_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr52_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,252 :: 		mikrobus_logWrite( "   *     station 2 tuned                    *  ", _LOG_LINE );
	MOVLW       ?lstr53_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr53_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,254 :: 		WordToStr( receivedSignalStrengthIndicator, text );
	MOVF        _receivedSignalStrengthIndicator+0, 0 
	MOVWF       FARG_WordToStr_input+0 
	MOVF        _receivedSignalStrengthIndicator+1, 0 
	MOVWF       FARG_WordToStr_input+1 
	MOVLW       _text+0
	MOVWF       FARG_WordToStr_output+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_WordToStr_output+1 
	CALL        _WordToStr+0, 0
;Click_FM_PIC.c,255 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
	MOVLW       ?lstr54_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr54_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,256 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,257 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
	MOVLW       ?lstr55_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr55_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,259 :: 		FloatToStr( channelFrequency_, text );
	MOVF        _channelFrequency_+0, 0 
	MOVWF       FARG_FloatToStr_fnum+0 
	MOVF        _channelFrequency_+1, 0 
	MOVWF       FARG_FloatToStr_fnum+1 
	MOVF        _channelFrequency_+2, 0 
	MOVWF       FARG_FloatToStr_fnum+2 
	MOVF        _channelFrequency_+3, 0 
	MOVWF       FARG_FloatToStr_fnum+3 
	MOVLW       _text+0
	MOVWF       FARG_FloatToStr_str+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_FloatToStr_str+1 
	CALL        _FloatToStr+0, 0
;Click_FM_PIC.c,260 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
	MOVLW       ?lstr56_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr56_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,261 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,262 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
	MOVLW       ?lstr57_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr57_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,263 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr58_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr58_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,264 :: 		}
L_end_fm_caseStation2:
	RETURN      0
; end of _fm_caseStation2

_fm_caseStation3:

;Click_FM_PIC.c,266 :: 		void fm_caseStation3( )
;Click_FM_PIC.c,268 :: 		fm_tuneChannel( station3 );
	MOVF        _station3+0, 0 
	MOVWF       FARG_fm_tuneChannel_channel_+0 
	MOVF        _station3+1, 0 
	MOVWF       FARG_fm_tuneChannel_channel_+1 
	CALL        _fm_tuneChannel+0, 0
;Click_FM_PIC.c,270 :: 		Delay_ms(100);
	MOVLW       9
	MOVWF       R11, 0
	MOVLW       30
	MOVWF       R12, 0
	MOVLW       228
	MOVWF       R13, 0
L_fm_caseStation322:
	DECFSZ      R13, 1, 1
	BRA         L_fm_caseStation322
	DECFSZ      R12, 1, 1
	BRA         L_fm_caseStation322
	DECFSZ      R11, 1, 1
	BRA         L_fm_caseStation322
	NOP
;Click_FM_PIC.c,272 :: 		fm_endTune( );
	CALL        _fm_endTune+0, 0
;Click_FM_PIC.c,274 :: 		Delay_ms(10);
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_fm_caseStation323:
	DECFSZ      R13, 1, 1
	BRA         L_fm_caseStation323
	DECFSZ      R12, 1, 1
	BRA         L_fm_caseStation323
	NOP
	NOP
;Click_FM_PIC.c,276 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
	CALL        _fm_getReceivedSignalStrengthIndicator+0, 0
	MOVF        R0, 0 
	MOVWF       _receivedSignalStrengthIndicator+0 
	MOVLW       0
	MOVWF       _receivedSignalStrengthIndicator+1 
;Click_FM_PIC.c,277 :: 		channelFrequency_ = fm_getChannelFrequency( );
	CALL        _fm_getChannelFrequency+0, 0
	MOVF        R0, 0 
	MOVWF       _channelFrequency_+0 
	MOVF        R1, 0 
	MOVWF       _channelFrequency_+1 
	MOVF        R2, 0 
	MOVWF       _channelFrequency_+2 
	MOVF        R3, 0 
	MOVWF       _channelFrequency_+3 
;Click_FM_PIC.c,279 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr59_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr59_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,280 :: 		mikrobus_logWrite( "   *     station 3 tuned                    *  ", _LOG_LINE );
	MOVLW       ?lstr60_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr60_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,282 :: 		WordToStr( receivedSignalStrengthIndicator, text );
	MOVF        _receivedSignalStrengthIndicator+0, 0 
	MOVWF       FARG_WordToStr_input+0 
	MOVF        _receivedSignalStrengthIndicator+1, 0 
	MOVWF       FARG_WordToStr_input+1 
	MOVLW       _text+0
	MOVWF       FARG_WordToStr_output+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_WordToStr_output+1 
	CALL        _WordToStr+0, 0
;Click_FM_PIC.c,283 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
	MOVLW       ?lstr61_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr61_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,284 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,285 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
	MOVLW       ?lstr62_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr62_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,287 :: 		FloatToStr( channelFrequency_, text );
	MOVF        _channelFrequency_+0, 0 
	MOVWF       FARG_FloatToStr_fnum+0 
	MOVF        _channelFrequency_+1, 0 
	MOVWF       FARG_FloatToStr_fnum+1 
	MOVF        _channelFrequency_+2, 0 
	MOVWF       FARG_FloatToStr_fnum+2 
	MOVF        _channelFrequency_+3, 0 
	MOVWF       FARG_FloatToStr_fnum+3 
	MOVLW       _text+0
	MOVWF       FARG_FloatToStr_str+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_FloatToStr_str+1 
	CALL        _FloatToStr+0, 0
;Click_FM_PIC.c,288 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
	MOVLW       ?lstr63_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr63_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,289 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,290 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
	MOVLW       ?lstr64_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr64_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,291 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr65_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr65_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,292 :: 		}
L_end_fm_caseStation3:
	RETURN      0
; end of _fm_caseStation3

_fm_caseTuneUp:

;Click_FM_PIC.c,294 :: 		void fm_caseTuneUp( )
;Click_FM_PIC.c,296 :: 		fm_fineTuneUp( );
	CALL        _fm_fineTuneUp+0, 0
;Click_FM_PIC.c,298 :: 		Delay_ms(100);
	MOVLW       9
	MOVWF       R11, 0
	MOVLW       30
	MOVWF       R12, 0
	MOVLW       228
	MOVWF       R13, 0
L_fm_caseTuneUp24:
	DECFSZ      R13, 1, 1
	BRA         L_fm_caseTuneUp24
	DECFSZ      R12, 1, 1
	BRA         L_fm_caseTuneUp24
	DECFSZ      R11, 1, 1
	BRA         L_fm_caseTuneUp24
	NOP
;Click_FM_PIC.c,300 :: 		fm_endTune( );
	CALL        _fm_endTune+0, 0
;Click_FM_PIC.c,302 :: 		Delay_ms(10);
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_fm_caseTuneUp25:
	DECFSZ      R13, 1, 1
	BRA         L_fm_caseTuneUp25
	DECFSZ      R12, 1, 1
	BRA         L_fm_caseTuneUp25
	NOP
	NOP
;Click_FM_PIC.c,304 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
	CALL        _fm_getReceivedSignalStrengthIndicator+0, 0
	MOVF        R0, 0 
	MOVWF       _receivedSignalStrengthIndicator+0 
	MOVLW       0
	MOVWF       _receivedSignalStrengthIndicator+1 
;Click_FM_PIC.c,305 :: 		channelFrequency_ = fm_getChannelFrequency( );
	CALL        _fm_getChannelFrequency+0, 0
	MOVF        R0, 0 
	MOVWF       _channelFrequency_+0 
	MOVF        R1, 0 
	MOVWF       _channelFrequency_+1 
	MOVF        R2, 0 
	MOVWF       _channelFrequency_+2 
	MOVF        R3, 0 
	MOVWF       _channelFrequency_+3 
;Click_FM_PIC.c,306 :: 		stationFrequency = fm_getChannel( );
	CALL        _fm_getChannel+0, 0
	MOVF        R0, 0 
	MOVWF       _stationFrequency+0 
	MOVF        R1, 0 
	MOVWF       _stationFrequency+1 
;Click_FM_PIC.c,308 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr66_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr66_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,309 :: 		mikrobus_logWrite( "   *     tune up                            *  ", _LOG_LINE );
	MOVLW       ?lstr67_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr67_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,311 :: 		WordToStr( receivedSignalStrengthIndicator, text );
	MOVF        _receivedSignalStrengthIndicator+0, 0 
	MOVWF       FARG_WordToStr_input+0 
	MOVF        _receivedSignalStrengthIndicator+1, 0 
	MOVWF       FARG_WordToStr_input+1 
	MOVLW       _text+0
	MOVWF       FARG_WordToStr_output+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_WordToStr_output+1 
	CALL        _WordToStr+0, 0
;Click_FM_PIC.c,312 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
	MOVLW       ?lstr68_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr68_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,313 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,314 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
	MOVLW       ?lstr69_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr69_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,316 :: 		FloatToStr( channelFrequency_, text );
	MOVF        _channelFrequency_+0, 0 
	MOVWF       FARG_FloatToStr_fnum+0 
	MOVF        _channelFrequency_+1, 0 
	MOVWF       FARG_FloatToStr_fnum+1 
	MOVF        _channelFrequency_+2, 0 
	MOVWF       FARG_FloatToStr_fnum+2 
	MOVF        _channelFrequency_+3, 0 
	MOVWF       FARG_FloatToStr_fnum+3 
	MOVLW       _text+0
	MOVWF       FARG_FloatToStr_str+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_FloatToStr_str+1 
	CALL        _FloatToStr+0, 0
;Click_FM_PIC.c,317 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
	MOVLW       ?lstr70_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr70_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,318 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,319 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
	MOVLW       ?lstr71_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr71_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,320 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr72_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr72_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,321 :: 		}
L_end_fm_caseTuneUp:
	RETURN      0
; end of _fm_caseTuneUp

_fm_caseTuneDown:

;Click_FM_PIC.c,323 :: 		void fm_caseTuneDown( )
;Click_FM_PIC.c,325 :: 		fm_fineTuneDown( );
	CALL        _fm_fineTuneDown+0, 0
;Click_FM_PIC.c,327 :: 		Delay_ms(100);
	MOVLW       9
	MOVWF       R11, 0
	MOVLW       30
	MOVWF       R12, 0
	MOVLW       228
	MOVWF       R13, 0
L_fm_caseTuneDown26:
	DECFSZ      R13, 1, 1
	BRA         L_fm_caseTuneDown26
	DECFSZ      R12, 1, 1
	BRA         L_fm_caseTuneDown26
	DECFSZ      R11, 1, 1
	BRA         L_fm_caseTuneDown26
	NOP
;Click_FM_PIC.c,329 :: 		fm_endTune( );
	CALL        _fm_endTune+0, 0
;Click_FM_PIC.c,331 :: 		Delay_ms(10);
	MOVLW       208
	MOVWF       R12, 0
	MOVLW       201
	MOVWF       R13, 0
L_fm_caseTuneDown27:
	DECFSZ      R13, 1, 1
	BRA         L_fm_caseTuneDown27
	DECFSZ      R12, 1, 1
	BRA         L_fm_caseTuneDown27
	NOP
	NOP
;Click_FM_PIC.c,333 :: 		receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
	CALL        _fm_getReceivedSignalStrengthIndicator+0, 0
	MOVF        R0, 0 
	MOVWF       _receivedSignalStrengthIndicator+0 
	MOVLW       0
	MOVWF       _receivedSignalStrengthIndicator+1 
;Click_FM_PIC.c,334 :: 		channelFrequency_ = fm_getChannelFrequency( );
	CALL        _fm_getChannelFrequency+0, 0
	MOVF        R0, 0 
	MOVWF       _channelFrequency_+0 
	MOVF        R1, 0 
	MOVWF       _channelFrequency_+1 
	MOVF        R2, 0 
	MOVWF       _channelFrequency_+2 
	MOVF        R3, 0 
	MOVWF       _channelFrequency_+3 
;Click_FM_PIC.c,335 :: 		stationFrequency = fm_getChannel( );
	CALL        _fm_getChannel+0, 0
	MOVF        R0, 0 
	MOVWF       _stationFrequency+0 
	MOVF        R1, 0 
	MOVWF       _stationFrequency+1 
;Click_FM_PIC.c,337 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr73_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr73_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,338 :: 		mikrobus_logWrite( "   *     tune down                          *  ", _LOG_LINE );
	MOVLW       ?lstr74_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr74_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,340 :: 		WordToStr( receivedSignalStrengthIndicator, text );
	MOVF        _receivedSignalStrengthIndicator+0, 0 
	MOVWF       FARG_WordToStr_input+0 
	MOVF        _receivedSignalStrengthIndicator+1, 0 
	MOVWF       FARG_WordToStr_input+1 
	MOVLW       _text+0
	MOVWF       FARG_WordToStr_output+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_WordToStr_output+1 
	CALL        _WordToStr+0, 0
;Click_FM_PIC.c,341 :: 		mikrobus_logWrite( "   *     rssi:", _LOG_TEXT );
	MOVLW       ?lstr75_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr75_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,342 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,343 :: 		mikrobus_logWrite( " dBuV", _LOG_LINE );
	MOVLW       ?lstr76_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr76_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,345 :: 		FloatToStr( channelFrequency_, text );
	MOVF        _channelFrequency_+0, 0 
	MOVWF       FARG_FloatToStr_fnum+0 
	MOVF        _channelFrequency_+1, 0 
	MOVWF       FARG_FloatToStr_fnum+1 
	MOVF        _channelFrequency_+2, 0 
	MOVWF       FARG_FloatToStr_fnum+2 
	MOVF        _channelFrequency_+3, 0 
	MOVWF       FARG_FloatToStr_fnum+3 
	MOVLW       _text+0
	MOVWF       FARG_FloatToStr_str+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_FloatToStr_str+1 
	CALL        _FloatToStr+0, 0
;Click_FM_PIC.c,346 :: 		mikrobus_logWrite( "   *     tuned frequency:", _LOG_TEXT );
	MOVLW       ?lstr77_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr77_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,347 :: 		mikrobus_logWrite( text, _LOG_TEXT );
	MOVLW       _text+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(_text+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,348 :: 		mikrobus_logWrite( " MHz", _LOG_LINE );
	MOVLW       ?lstr78_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr78_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,349 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr79_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr79_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,350 :: 		}
L_end_fm_caseTuneDown:
	RETURN      0
; end of _fm_caseTuneDown

_fm_caseWrongCommand:

;Click_FM_PIC.c,352 :: 		void fm_caseWrongCommand( )
;Click_FM_PIC.c,354 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr80_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr80_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,355 :: 		mikrobus_logWrite( "   *     wrong command                      *  ", _LOG_LINE );
	MOVLW       ?lstr81_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr81_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,356 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr82_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr82_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,357 :: 		}
L_end_fm_caseWrongCommand:
	RETURN      0
; end of _fm_caseWrongCommand

_systemInit:

;Click_FM_PIC.c,359 :: 		void systemInit( )
;Click_FM_PIC.c,361 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_AN_PIN,  _GPIO_INPUT );
	CLRF        FARG_mikrobus_gpioInit_bus+0 
	CLRF        FARG_mikrobus_gpioInit_pin+0 
	MOVLW       1
	MOVWF       FARG_mikrobus_gpioInit_direction+0 
	CALL        _mikrobus_gpioInit+0, 0
;Click_FM_PIC.c,362 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
	CLRF        FARG_mikrobus_gpioInit_bus+0 
	MOVLW       1
	MOVWF       FARG_mikrobus_gpioInit_pin+0 
	CLRF        FARG_mikrobus_gpioInit_direction+0 
	CALL        _mikrobus_gpioInit+0, 0
;Click_FM_PIC.c,363 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN,  _GPIO_OUTPUT );
	CLRF        FARG_mikrobus_gpioInit_bus+0 
	MOVLW       2
	MOVWF       FARG_mikrobus_gpioInit_pin+0 
	CLRF        FARG_mikrobus_gpioInit_direction+0 
	CALL        _mikrobus_gpioInit+0, 0
;Click_FM_PIC.c,364 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
	CLRF        FARG_mikrobus_gpioInit_bus+0 
	MOVLW       7
	MOVWF       FARG_mikrobus_gpioInit_pin+0 
	MOVLW       1
	MOVWF       FARG_mikrobus_gpioInit_direction+0 
	CALL        _mikrobus_gpioInit+0, 0
;Click_FM_PIC.c,366 :: 		mikrobus_i2cInit( _MIKROBUS1, &_FM_I2C_CFG[0] );
	CLRF        FARG_mikrobus_i2cInit_bus+0 
	MOVLW       __FM_I2C_CFG+0
	MOVWF       FARG_mikrobus_i2cInit_cfg+0 
	MOVLW       hi_addr(__FM_I2C_CFG+0)
	MOVWF       FARG_mikrobus_i2cInit_cfg+1 
	MOVLW       higher_addr(__FM_I2C_CFG+0)
	MOVWF       FARG_mikrobus_i2cInit_cfg+2 
	CALL        _mikrobus_i2cInit+0, 0
;Click_FM_PIC.c,368 :: 		mikrobus_logInit( _LOG_USBUART, 115200 );
	MOVLW       16
	MOVWF       FARG_mikrobus_logInit_port+0 
	MOVLW       0
	MOVWF       FARG_mikrobus_logInit_baud+0 
	MOVLW       194
	MOVWF       FARG_mikrobus_logInit_baud+1 
	MOVLW       1
	MOVWF       FARG_mikrobus_logInit_baud+2 
	MOVLW       0
	MOVWF       FARG_mikrobus_logInit_baud+3 
	CALL        _mikrobus_logInit+0, 0
;Click_FM_PIC.c,370 :: 		Delay_ms(100);
	MOVLW       9
	MOVWF       R11, 0
	MOVLW       30
	MOVWF       R12, 0
	MOVLW       228
	MOVWF       R13, 0
L_systemInit28:
	DECFSZ      R13, 1, 1
	BRA         L_systemInit28
	DECFSZ      R12, 1, 1
	BRA         L_systemInit28
	DECFSZ      R11, 1, 1
	BRA         L_systemInit28
	NOP
;Click_FM_PIC.c,372 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr83_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr83_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,373 :: 		mikrobus_logWrite( "   *     system init done                   *  ", _LOG_LINE );
	MOVLW       ?lstr84_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr84_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,374 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr85_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr85_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,375 :: 		}
L_end_systemInit:
	RETURN      0
; end of _systemInit

_applicationInit:

;Click_FM_PIC.c,377 :: 		void applicationInit( )
;Click_FM_PIC.c,379 :: 		fm_i2cDriverInit( (T_FM_P)&_MIKROBUS1_GPIO, (T_FM_P)&_MIKROBUS1_I2C, 0x10 );
	MOVLW       __MIKROBUS1_GPIO+0
	MOVWF       FARG_fm_i2cDriverInit_gpioObj+0 
	MOVLW       hi_addr(__MIKROBUS1_GPIO+0)
	MOVWF       FARG_fm_i2cDriverInit_gpioObj+1 
	MOVLW       higher_addr(__MIKROBUS1_GPIO+0)
	MOVWF       FARG_fm_i2cDriverInit_gpioObj+2 
	MOVLW       __MIKROBUS1_I2C+0
	MOVWF       FARG_fm_i2cDriverInit_i2cObj+0 
	MOVLW       hi_addr(__MIKROBUS1_I2C+0)
	MOVWF       FARG_fm_i2cDriverInit_i2cObj+1 
	MOVLW       higher_addr(__MIKROBUS1_I2C+0)
	MOVWF       FARG_fm_i2cDriverInit_i2cObj+2 
	MOVLW       16
	MOVWF       FARG_fm_i2cDriverInit_slave+0 
	CALL        _fm_i2cDriverInit+0, 0
;Click_FM_PIC.c,381 :: 		Delay_ms(500);
	MOVLW       41
	MOVWF       R11, 0
	MOVLW       150
	MOVWF       R12, 0
	MOVLW       127
	MOVWF       R13, 0
L_applicationInit29:
	DECFSZ      R13, 1, 1
	BRA         L_applicationInit29
	DECFSZ      R12, 1, 1
	BRA         L_applicationInit29
	DECFSZ      R11, 1, 1
	BRA         L_applicationInit29
;Click_FM_PIC.c,383 :: 		fm_powerUp( );
	CALL        _fm_powerup+0, 0
;Click_FM_PIC.c,385 :: 		fm_basicSettings( );
	CALL        _fm_basicSettings+0, 0
;Click_FM_PIC.c,387 :: 		fm_setVolume( volumeLevel_ );
	MOVF        _volumeLevel_+0, 0 
	MOVWF       FARG_fm_setVolume_volumeLevel+0 
	CALL        _fm_setVolume+0, 0
;Click_FM_PIC.c,389 :: 		fm_setSnrThreshold( snrThreshold_ );
	MOVF        _snrThreshold_+0, 0 
	MOVWF       FARG_fm_setSnrThreshold_snrThreshold+0 
	CALL        _fm_setSnrThreshold+0, 0
;Click_FM_PIC.c,391 :: 		fm_setSeekThreshold( seekThreshold_ );
	MOVF        _seekThreshold_+0, 0 
	MOVWF       FARG_fm_setSeekThreshold_seekThreshold+0 
	MOVF        _seekThreshold_+1, 0 
	MOVWF       FARG_fm_setSeekThreshold_seekThreshold+1 
	CALL        _fm_setSeekThreshold+0, 0
;Click_FM_PIC.c,393 :: 		fm_setSeekImpulseDetectionThreshold( impulseDetectionThreshold_ );
	MOVF        _impulseDetectionThreshold_+0, 0 
	MOVWF       FARG_fm_setSeekImpulseDetectionThreshold_impulseDetectionThreshold+0 
	CALL        _fm_setSeekImpulseDetectionThreshold+0, 0
;Click_FM_PIC.c,395 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr86_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr86_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,396 :: 		mikrobus_logWrite( "   *     application init done              *  ", _LOG_LINE );
	MOVLW       ?lstr87_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr87_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,397 :: 		mikrobus_logWrite( "   ******************************************  ", _LOG_LINE );
	MOVLW       ?lstr88_Click_FM_PIC+0
	MOVWF       FARG_mikrobus_logWrite_data_+0 
	MOVLW       hi_addr(?lstr88_Click_FM_PIC+0)
	MOVWF       FARG_mikrobus_logWrite_data_+1 
	MOVLW       2
	MOVWF       FARG_mikrobus_logWrite_format+0 
	CALL        _mikrobus_logWrite+0, 0
;Click_FM_PIC.c,398 :: 		}
L_end_applicationInit:
	RETURN      0
; end of _applicationInit

_applicationTask:

;Click_FM_PIC.c,400 :: 		void applicationTask( )
;Click_FM_PIC.c,402 :: 		dataReady = UART_Rdy_Ptr( );
	MOVF        _UART_Rdy_Ptr+0, 0 
	MOVWF       R0 
	MOVF        _UART_Rdy_Ptr+1, 0 
	MOVWF       R1 
	CALL        _____DoIFC+0, 0
	MOVF        R0, 0 
	MOVWF       _dataReady+0 
;Click_FM_PIC.c,404 :: 		if (dataReady != 0)
	MOVF        R0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_applicationTask30
;Click_FM_PIC.c,406 :: 		receivedData = UART_Rd_Ptr( );
	MOVF        _UART_Rd_Ptr+0, 0 
	MOVWF       R0 
	MOVF        _UART_Rd_Ptr+1, 0 
	MOVWF       R1 
	CALL        _____DoIFC+0, 0
	MOVF        R0, 0 
	MOVWF       _receivedData+0 
;Click_FM_PIC.c,408 :: 		switch (receivedData)
	GOTO        L_applicationTask31
;Click_FM_PIC.c,410 :: 		case '+' :
L_applicationTask33:
;Click_FM_PIC.c,412 :: 		fm_casePlus( );
	CALL        _fm_casePlus+0, 0
;Click_FM_PIC.c,414 :: 		break;
	GOTO        L_applicationTask32
;Click_FM_PIC.c,416 :: 		case '-' :
L_applicationTask34:
;Click_FM_PIC.c,418 :: 		fm_caseMinus( );
	CALL        _fm_caseMinus+0, 0
;Click_FM_PIC.c,420 :: 		break;
	GOTO        L_applicationTask32
;Click_FM_PIC.c,422 :: 		case 's' :
L_applicationTask35:
;Click_FM_PIC.c,424 :: 		fm_caseSeek( );
	CALL        _fm_caseSeek+0, 0
;Click_FM_PIC.c,426 :: 		break;
	GOTO        L_applicationTask32
;Click_FM_PIC.c,428 :: 		case 't' :
L_applicationTask36:
;Click_FM_PIC.c,430 :: 		fm_caseTune( );
	CALL        _fm_caseTune+0, 0
;Click_FM_PIC.c,432 :: 		break;
	GOTO        L_applicationTask32
;Click_FM_PIC.c,434 :: 		case 'm' :
L_applicationTask37:
;Click_FM_PIC.c,436 :: 		fm_caseMemorize( );
	CALL        _fm_caseMemorize+0, 0
;Click_FM_PIC.c,438 :: 		break;
	GOTO        L_applicationTask32
;Click_FM_PIC.c,440 :: 		case 'i' :
L_applicationTask38:
;Click_FM_PIC.c,442 :: 		fm_caseMute( );
	CALL        _fm_caseMute+0, 0
;Click_FM_PIC.c,444 :: 		break;
	GOTO        L_applicationTask32
;Click_FM_PIC.c,446 :: 		case '1' :
L_applicationTask39:
;Click_FM_PIC.c,448 :: 		fm_caseStation1( );
	CALL        _fm_caseStation1+0, 0
;Click_FM_PIC.c,450 :: 		break;
	GOTO        L_applicationTask32
;Click_FM_PIC.c,452 :: 		case '2' :
L_applicationTask40:
;Click_FM_PIC.c,454 :: 		fm_caseStation2( );
	CALL        _fm_caseStation2+0, 0
;Click_FM_PIC.c,456 :: 		break;
	GOTO        L_applicationTask32
;Click_FM_PIC.c,458 :: 		case '3' :
L_applicationTask41:
;Click_FM_PIC.c,460 :: 		fm_caseStation3( );
	CALL        _fm_caseStation3+0, 0
;Click_FM_PIC.c,462 :: 		break;
	GOTO        L_applicationTask32
;Click_FM_PIC.c,464 :: 		case '.' :
L_applicationTask42:
;Click_FM_PIC.c,466 :: 		fm_caseTuneUp( );
	CALL        _fm_caseTuneUp+0, 0
;Click_FM_PIC.c,468 :: 		break;
	GOTO        L_applicationTask32
;Click_FM_PIC.c,470 :: 		case ',' :
L_applicationTask43:
;Click_FM_PIC.c,472 :: 		fm_caseTuneDown( );
	CALL        _fm_caseTuneDown+0, 0
;Click_FM_PIC.c,474 :: 		break;
	GOTO        L_applicationTask32
;Click_FM_PIC.c,476 :: 		default :
L_applicationTask44:
;Click_FM_PIC.c,478 :: 		fm_caseWrongCommand( );
	CALL        _fm_caseWrongCommand+0, 0
;Click_FM_PIC.c,480 :: 		break;
	GOTO        L_applicationTask32
;Click_FM_PIC.c,482 :: 		}
L_applicationTask31:
	MOVF        _receivedData+0, 0 
	XORLW       43
	BTFSC       STATUS+0, 2 
	GOTO        L_applicationTask33
	MOVF        _receivedData+0, 0 
	XORLW       45
	BTFSC       STATUS+0, 2 
	GOTO        L_applicationTask34
	MOVF        _receivedData+0, 0 
	XORLW       115
	BTFSC       STATUS+0, 2 
	GOTO        L_applicationTask35
	MOVF        _receivedData+0, 0 
	XORLW       116
	BTFSC       STATUS+0, 2 
	GOTO        L_applicationTask36
	MOVF        _receivedData+0, 0 
	XORLW       109
	BTFSC       STATUS+0, 2 
	GOTO        L_applicationTask37
	MOVF        _receivedData+0, 0 
	XORLW       105
	BTFSC       STATUS+0, 2 
	GOTO        L_applicationTask38
	MOVF        _receivedData+0, 0 
	XORLW       49
	BTFSC       STATUS+0, 2 
	GOTO        L_applicationTask39
	MOVF        _receivedData+0, 0 
	XORLW       50
	BTFSC       STATUS+0, 2 
	GOTO        L_applicationTask40
	MOVF        _receivedData+0, 0 
	XORLW       51
	BTFSC       STATUS+0, 2 
	GOTO        L_applicationTask41
	MOVF        _receivedData+0, 0 
	XORLW       46
	BTFSC       STATUS+0, 2 
	GOTO        L_applicationTask42
	MOVF        _receivedData+0, 0 
	XORLW       44
	BTFSC       STATUS+0, 2 
	GOTO        L_applicationTask43
	GOTO        L_applicationTask44
L_applicationTask32:
;Click_FM_PIC.c,483 :: 		}
L_applicationTask30:
;Click_FM_PIC.c,484 :: 		}
L_end_applicationTask:
	RETURN      0
; end of _applicationTask

_main:

;Click_FM_PIC.c,486 :: 		void main( )
;Click_FM_PIC.c,488 :: 		systemInit( );
	CALL        _systemInit+0, 0
;Click_FM_PIC.c,489 :: 		applicationInit( );
	CALL        _applicationInit+0, 0
;Click_FM_PIC.c,491 :: 		while (1)
L_main45:
;Click_FM_PIC.c,493 :: 		applicationTask( );
	CALL        _applicationTask+0, 0
;Click_FM_PIC.c,494 :: 		}
	GOTO        L_main45
;Click_FM_PIC.c,495 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
