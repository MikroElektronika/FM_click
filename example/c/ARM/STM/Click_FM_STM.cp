#line 1 "C:/Users/aleksandar.paunovic/Desktop/FM Click/example/c/ARM/STM/Click_FM_STM.c"
#line 1 "c:/users/aleksandar.paunovic/desktop/fm click/example/c/arm/stm/click_fm_types.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"





typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int int32_t;
typedef signed long long int64_t;


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long int uint32_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef signed int int_least16_t;
typedef signed long int int_least32_t;
typedef signed long long int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned int uint_least16_t;
typedef unsigned long int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef signed long int int_fast8_t;
typedef signed long int int_fast16_t;
typedef signed long int int_fast32_t;
typedef signed long long int_fast64_t;


typedef unsigned long int uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long long uint_fast64_t;


typedef signed long int intptr_t;
typedef unsigned long int uintptr_t;


typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
#line 1 "c:/users/aleksandar.paunovic/desktop/fm click/example/c/arm/stm/click_fm_config.h"
#line 1 "c:/users/aleksandar.paunovic/desktop/fm click/example/c/arm/stm/click_fm_types.h"
#line 3 "c:/users/aleksandar.paunovic/desktop/fm click/example/c/arm/stm/click_fm_config.h"
const uint32_t _FM_I2C_CFG[ 1 ] =
{
 100000
};
#line 1 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"
#line 58 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
extern const uint16_t _FM_POWER_CONFIGURATION;
extern const uint16_t _FM_CHANNEL;
extern const uint16_t _FM_SYSTEM_CONFIGURATION_1;
extern const uint16_t _FM_SYSTEM_CONFIGURATION_2;
extern const uint16_t _FM_SYSTEM_CONFIGURATION_3;
extern const uint16_t _FM_TEST_1;
extern const uint16_t _FM_TEST_2;
extern const uint16_t _FM_BOOT_CONFIGURATION;
extern const uint16_t _FM_STATUS_RSSI;
extern const uint16_t _FM_READ_CHANNEL;
extern const uint16_t _FM_RDS_A;
extern const uint16_t _FM_RDS_B;
extern const uint16_t _FM_RDS_C;
extern const uint16_t _FM_RDS_D;
extern const uint16_t _FM_DEVICE_ID;
extern const uint16_t _FM_CHIP_ID;


extern const uint16_t _FM_SOFTMUTE_MASK;
extern const uint16_t _FM_SOFTMUTE_ENABLE;
extern const uint16_t _FM_SOFTMUTE_DISABLE;

extern const uint16_t _FM_MUTE_MASK;
extern const uint16_t _FM_MUTE_ENABLE;
extern const uint16_t _FM_MUTE_DISABLE;

extern const uint16_t _FM_STEREO_MASK;
extern const uint16_t _FM_STEREO;
extern const uint16_t _FM_FORCE_MONO;

extern const uint16_t _FM_RDS_MODE_MASK;
extern const uint16_t _FM_RDS_MODE_STANDARD;
extern const uint16_t _FM_RDS_MODE_VERBOSE;

extern const uint16_t _FM_SEEK_MODE_MASK;
extern const uint16_t _FM_SEEK_MODE_WRAP;
extern const uint16_t _FM_SEEK_MODE_STOP;

extern const uint16_t _FM_SEEK_DIRECTION_MASK;
extern const uint16_t _FM_SEEK_DIRECTION_DOWN;
extern const uint16_t _FM_SEEK_DIRECTION_UP;

extern const uint16_t _FM_SEEK_MASK;
extern const uint16_t _FM_SEEK_DISABLE;
extern const uint16_t _FM_SEEK_ENABLE;

extern const uint16_t _FM_POWERUP_DISABLE_MASK;
extern const uint16_t _FM_POWERUP_DISABLE_LOW;
extern const uint16_t _FM_POWERUP_DISABLE_HIGH;

extern const uint16_t _FM_POWERUP_ENABLE_MASK;
extern const uint16_t _FM_POWERUP_ENABLE_LOW;
extern const uint16_t _FM_POWERUP_ENABLE_HIGH;


extern const uint16_t _FM_TUNE_MASK;
extern const uint16_t _FM_TUNE_DISABLE;
extern const uint16_t _FM_TUNE_ENABLE;


extern const uint16_t _FM_RDS_INTERRUPT_MASK;
extern const uint16_t _FM_RDS_INTERRUPT_DISABLE;
extern const uint16_t _FM_RDS_INTERRUPT_ENABLE;

extern const uint16_t _FM_SEEK_TUNE_COMPLETE_INTERRUPT_MASK;
extern const uint16_t _FM_SEEK_TUNE_COMPLETE_INTERRUPT_DISABLE;
extern const uint16_t _FM_SEEK_TUNE_COMPLETE_INTERRUPT_ENABLE;

extern const uint16_t _FM_RDS_MASK;
extern const uint16_t _FM_RDS_DISABLE;
extern const uint16_t _FM_RDS_ENABLE;

extern const uint16_t _FM_DE_EMPHASIS_MASK;
extern const uint16_t _FM_DE_EMPHASIS_USA;
extern const uint16_t _FM_DE_EMPHASIS_EUROPE_AUSTRALIA_JAPAN;

extern const uint16_t _FM_AGC_MASK;
extern const uint16_t _FM_AGC_ENABLE;
extern const uint16_t _FM_AGC_DISABLE;

extern const uint16_t _FM_STEREO_MONO_BLEND_LEVEL_MASK;
extern const uint16_t _FM_STEREO_MONO_BLEND_LEVEL_31_49_RSSI;
extern const uint16_t _FM_STEREO_MONO_BLEND_LEVEL_37_55_RSSI;
extern const uint16_t _FM_STEREO_MONO_BLEND_LEVEL_19_37_RSSI;
extern const uint16_t _FM_STEREO_MONO_BLEND_LEVEL_25_43_RSSI;

extern const uint16_t _FM_GPIO3_MASK;
extern const uint16_t _FM_GPIO3_HIGH_IMPENDANCE;
extern const uint16_t _FM_GPIO3_MONO_STEREO_INDICATOR;
extern const uint16_t _FM_GPIO3_LOW;
extern const uint16_t _FM_GPIO3_HIGH;

extern const uint16_t _FM_GPIO2_MASK;
extern const uint16_t _FM_GPIO2_HIGH_IMPEDANCE;
extern const uint16_t _FM_GPIO2_STC_RDS_INTERRUPT;
extern const uint16_t _FM_GPIO2_LOW;
extern const uint16_t _FM_GPIO2_HIGH;

extern const uint16_t _FM_GPIO1_MASK;
extern const uint16_t _FM_GPIO1_HIGH_IMPEDANCE;
extern const uint16_t _FM_GPIO1_RESERVED;
extern const uint16_t _FM_GPIO1_LOW;
extern const uint16_t _FM_GPIO1_HIGH;


extern const uint16_t _FM_BAND_MASK;
extern const uint16_t _FM_BAND_USA_EUROPE_87P5_108_MHZ;
extern const uint16_t _FM_BAND_JAPAN_WIDE_76_108_MHZ;
extern const uint16_t _FM_BAND_JAPAN_76_90_MHZ;
extern const uint16_t _FM_BAND_RESERVED;

extern const uint16_t _FM_CHANNEL_SPACING_MASK;
extern const uint16_t _FM_CHANNEL_SPACING_USA_AUSTRALIA_200_KHZ;
extern const uint16_t _FM_CHANNEL_SPACING_EUROPE_JAPAN_100_KHZ;
extern const uint16_t _FM_CHANNEL_SPACING_50_KHZ ;


extern const uint16_t _FM_SOFTMUTE_ATTACK_RECOVER_RATE_MASK;
extern const uint16_t _FM_SOFTMUTE_ATTACK_RECOVER_RATE_FASTEST;
extern const uint16_t _FM_SOFTMUTE_ATTACK_RECOVER_RATE_FAST;
extern const uint16_t _FM_SOFTMUTE_ATTACK_RECOVER_RATE_SLOW;
extern const uint16_t _FM_SOFTMUTE_ATTACK_RECOVER_RATE_SLOWEST;

extern const uint16_t _FM_SOFTMUTE_ATTENUATION_MASK;
extern const uint16_t _FM_SOFTMUTE_ATTENUATION_16_DB;
extern const uint16_t _FM_SOFTMUTE_ATTENUATION_14_DB;
extern const uint16_t _FM_SOFTMUTE_ATTENUATION_12_DB;
extern const uint16_t _FM_SOFTMUTE_ATTENUATION_10_DB;

extern const uint16_t _FM_EXTENDED_VOLUME_RANGE_MASK;
extern const uint16_t _FM_EXTENDED_VOLUME_RANGE_DISABLED;
extern const uint16_t _FM_EXTENDED_VOLUME_RANGE_ENABLED;


extern const uint16_t _FM_CRYSTAL_OSCYLATOR_MASK;
extern const uint16_t _FM_CRYSTAL_OSCYLATOR_DISABLE;
extern const uint16_t _FM_CRYSTAL_OSCYLATOR_ENABLE;

extern const uint16_t _FM_AUDIO_HIGH_Z_MASK;
extern const uint16_t _FM_AUDIO_HIGH_Z_DISABLE;
extern const uint16_t _FM_AUDIO_HIGH_Z_ENABLE;


extern const uint16_t _FM_RDS_READY_MASK;
extern const uint16_t _FM_SEEK_TUNE_COMPLETE_MASK;
extern const uint16_t _FM_SEEK_FAIL_BAND_LIMIT_MASK;
extern const uint16_t _FM_AFC_RAIL_MASK;
extern const uint16_t _FM_RDS_SYNCHRONIZED_MASK;
extern const uint16_t _FM_STEREO_MONO_INDICATOR_MASK;
#line 223 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
void fm_i2cDriverInit( const uint8_t*  gpioObj,  const uint8_t*  i2cObj, uint8_t slave);
#line 239 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
void fm_readRegisters( uint16_t *registerBuffer );
#line 249 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
void fm_writeRegisters( uint16_t *registerBuffer );
#line 263 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
void fm_setBits( uint16_t *registerBuffer, uint16_t registerAddress, uint16_t bitsMask, uint16_t bitsValue );
#line 275 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_setSeekThreshold( uint16_t seekThreshold );
#line 288 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_setVolume( uint8_t volumeLevel );
#line 300 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_setSnrThreshold( uint8_t snrThreshold );
#line 312 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_setSeekImpulseDetectionThreshold( uint8_t impulseDetectionThreshold );
#line 325 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_getErrorsBlockA( void );
#line 334 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_getReceivedSignalStrengthIndicator( void );
#line 347 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_getErrorsBlockB( void );
#line 360 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_getErrorsBlockC( void );
#line 373 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_getErrorsBlockD( void );
#line 382 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
float fm_getChannelFrequency( void );
#line 392 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
void fm_powerup( void );
#line 400 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
void fm_basicSettings( void );
#line 407 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
void fm_powerdown( void );
#line 416 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint16_t fm_getChannel( void );
#line 425 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
void fm_tuneChannel( uint16_t channel_ );
#line 437 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_tune( float channelFrequency );
#line 446 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
void fm_endTune( void );
#line 454 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
void fm_seek( void );
#line 464 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
void fm_endSeek( void );
#line 475 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_volumeUp( void );
#line 486 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_volumeDown( void );
#line 493 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
void fm_muteEnable( void );
#line 500 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
void fm_muteDisable( void );
#line 509 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_fineTuneUp( void );
#line 518 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_fineTuneDown( void );
#line 528 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_getIntPin( void );
#line 538 "c:/users/aleksandar.paunovic/desktop/fm click/library/__fm_driver.h"
uint8_t fm_getAnPin( void );
#line 60 "C:/Users/aleksandar.paunovic/Desktop/FM Click/example/c/ARM/STM/Click_FM_STM.c"
char text[50];

uint16_t receivedSignalStrengthIndicator;
uint16_t seekThreshold_ = 0x19;
uint16_t stationFrequency_;
uint16_t station1_;
uint16_t station2_;
uint16_t station3_;
uint16_t station4_;
uint16_t station5_;

uint8_t impulseDetectionThreshold_ = 0x08;
uint8_t snrThreshold_ = 0x04;
uint8_t volumeLevel_ = 10;
uint8_t memory_ = 0;
uint8_t mute_ = 0;
uint8_t receivedData_;
uint8_t dataReady_;
uint8_t errorFlag_;

float channelFrequency_;
float tunedFrequency_;
float tuneFreq = 107.0;

void fm_casePlus( )
{
 errorFlag_ = fm_volumeUp( );

 if (errorFlag_ == 0)
 {
 mikrobus_logWrite( "volume up", _LOG_LINE );
 }
 else
 {
 mikrobus_logWrite( "volume max", _LOG_LINE );
 }
}

void fm_caseMinus( )
{
 errorFlag_ = fm_volumeDown( );

 if (errorFlag_ == 0)
 {
 mikrobus_logWrite( "volume down", _LOG_LINE );
 }
 else
 {
 mikrobus_logWrite( "volume min", _LOG_LINE );
 }
}

void fm_caseSeek( )
{
 fm_seek( );

 Delay_ms(100);

 fm_endSeek( );

 Delay_ms(10);

 receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
 channelFrequency_ = fm_getChannelFrequency( );
 stationFrequency_ = fm_getChannel( );

 WordToStr( receivedSignalStrengthIndicator, text );
 mikrobus_logWrite( "station found", _LOG_LINE );
 mikrobus_logWrite( "rssi:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " dBuV", _LOG_LINE );

 FloatToStr( channelFrequency_, text );
 mikrobus_logWrite( "channel frequency:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " MHz", _LOG_LINE );
}

void fm_caseTune( )
{
 errorFlag_ = fm_tune( tuneFreq );

 Delay_ms(100);

 fm_endTune( );

 Delay_ms(10);

 if (errorFlag_ == 0)
 {
 receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
 tunedFrequency_ = fm_getChannelFrequency( );
 stationFrequency_ = fm_getChannel( );

 mikrobus_logWrite( "tune complete", _LOG_LINE );

 WordToStr( receivedSignalStrengthIndicator, text );
 mikrobus_logWrite( "rssi:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " dBuV", _LOG_LINE );

 FloatToStr( tunedFrequency_, text );
 mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " MHz", _LOG_LINE );
 }
 else
 {
 mikrobus_logWrite( "frequency not in valid range", _LOG_TEXT );
 }
}

void fm_caseMemorize( )
{
 switch (memory_)
 {
 case 0 :
 {
 station1_ = stationFrequency_;
 memory_ += 1;

 mikrobus_logWrite( "station 1 memorized", _LOG_LINE );

 break;
 }
 case 1 :
 {
 station2_ = stationFrequency_;
 memory_ += 1;

 mikrobus_logWrite( "station 2 memorized", _LOG_LINE );

 break;
 }
 case 2 :
 {
 station3_ = stationFrequency_;
 memory_ += 1;

 mikrobus_logWrite( "station 3 memorized", _LOG_LINE );

 break;
 }
 case 3 :
 {
 station4_ = stationFrequency_;
 memory_ += 1;

 mikrobus_logWrite( "station 4 memorized", _LOG_LINE );

 break;
 }
 case 4 :
 {
 station5_ = stationFrequency_;
 memory_ = 0;

 mikrobus_logWrite( "station 5 memorized", _LOG_LINE );

 break;
 }
 default :
 {
 break;
 }
 }
}

void fm_caseMute( )
{
 if (mute_ == 0)
 {
 fm_muteEnable( );

 mikrobus_logWrite( "mute enabled", _LOG_LINE );

 mute_ = 1;
 }
 else if (mute_ == 1)
 {
 fm_muteDisable( );

 mikrobus_logWrite( "mute disabled", _LOG_LINE );

 mute_ = 0;
 }
}

void fm_caseStation1( )
{
 fm_tuneChannel( station1_ );

 Delay_ms(100);

 fm_endTune( );

 Delay_ms(10);

 receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
 channelFrequency_ = fm_getChannelFrequency( );

 mikrobus_logWrite( "station 1 tuned", _LOG_LINE );

 WordToStr( receivedSignalStrengthIndicator, text );
 mikrobus_logWrite( "rssi:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " dBuV", _LOG_LINE );

 FloatToStr( channelFrequency_, text );
 mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " MHz", _LOG_LINE );
}

void fm_caseStation2( )
{
 fm_tuneChannel( station2_ );

 Delay_ms(100);

 fm_endTune( );

 Delay_ms(10);

 receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
 channelFrequency_ = fm_getChannelFrequency( );

 mikrobus_logWrite( "station 2 tuned", _LOG_LINE );

 WordToStr( receivedSignalStrengthIndicator, text );
 mikrobus_logWrite( "rssi:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " dBuV", _LOG_LINE );

 FloatToStr( channelFrequency_, text );
 mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " MHz", _LOG_LINE );
}

void fm_caseStation3( )
{
 fm_tuneChannel( station3_ );

 Delay_ms(100);

 fm_endTune( );

 Delay_ms(10);

 receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
 channelFrequency_ = fm_getChannelFrequency( );

 mikrobus_logWrite( "station 3 tuned", _LOG_LINE );

 WordToStr( receivedSignalStrengthIndicator, text );
 mikrobus_logWrite( "rssi:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " dBuV", _LOG_LINE );

 FloatToStr( channelFrequency_, text );
 mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " MHz", _LOG_LINE );
}

void fm_caseStation4( )
{
 fm_tuneChannel( station4_ );

 Delay_ms(100);

 fm_endTune( );

 Delay_ms(10);

 receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
 channelFrequency_ = fm_getChannelFrequency( );

 mikrobus_logWrite( "station 4 tuned", _LOG_LINE );

 WordToStr( receivedSignalStrengthIndicator, text );
 mikrobus_logWrite( "rssi:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " dBuV", _LOG_LINE );

 FloatToStr( channelFrequency_, text );
 mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " MHz", _LOG_LINE );
}

void fm_caseStation5( )
{
 fm_tuneChannel( station5_ );

 Delay_ms(100);

 fm_endTune( );

 Delay_ms(10);

 receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
 channelFrequency_ = fm_getChannelFrequency( );

 mikrobus_logWrite( "station 5 tuned", _LOG_LINE );

 WordToStr( receivedSignalStrengthIndicator, text );
 mikrobus_logWrite( "rssi:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " dBuV", _LOG_LINE );

 FloatToStr( channelFrequency_, text );
 mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " MHz", _LOG_LINE );
}

void fm_caseTuneUp( )
{
 errorFlag_ = fm_fineTuneUp( );

 if (errorFlag_ == 0)
 {
 Delay_ms(100);

 fm_endTune( );

 Delay_ms(10);

 receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
 channelFrequency_ = fm_getChannelFrequency( );
 stationFrequency_ = fm_getChannel( );

 mikrobus_logWrite( "tune up", _LOG_LINE );

 WordToStr( receivedSignalStrengthIndicator, text );
 mikrobus_logWrite( "rssi:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " dBuV", _LOG_LINE );

 FloatToStr( channelFrequency_, text );
 mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " MHz", _LOG_LINE );
 }
 else
 {
 mikrobus_logWrite( "upper band limit reached", _LOG_LINE );
 }
}

void fm_caseTuneDown( )
{
 errorFlag_ = fm_fineTuneDown( );

 if (errorFlag_ == 0)
 {
 Delay_ms(100);

 fm_endTune( );

 Delay_ms(10);

 receivedSignalStrengthIndicator = fm_getReceivedSignalStrengthIndicator( );
 channelFrequency_ = fm_getChannelFrequency( );
 stationFrequency_ = fm_getChannel( );

 mikrobus_logWrite( "tune up", _LOG_LINE );

 WordToStr( receivedSignalStrengthIndicator, text );
 mikrobus_logWrite( "rssi:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " dBuV", _LOG_LINE );

 FloatToStr( channelFrequency_, text );
 mikrobus_logWrite( "tuned frequency:", _LOG_TEXT );
 mikrobus_logWrite( text, _LOG_TEXT );
 mikrobus_logWrite( " MHz", _LOG_LINE );
 }
 else
 {
 mikrobus_logWrite( "lower band limit reached", _LOG_LINE );
 }
}

void fm_caseWrongCommand( )
{
 mikrobus_logWrite( "wrong command", _LOG_LINE );
}

void systemInit( )
{
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_AN_PIN, _GPIO_INPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );

 mikrobus_i2cInit( _MIKROBUS1, &_FM_I2C_CFG[0] );

 mikrobus_logInit( _LOG_USBUART_A, 9600 );

 Delay_ms(100);

 mikrobus_logWrite( "system init done", _LOG_LINE );
}

void applicationInit( )
{
 fm_i2cDriverInit( ( const uint8_t* )&_MIKROBUS1_GPIO, ( const uint8_t* )&_MIKROBUS1_I2C, 0x10 );

 Delay_ms(500);

 fm_powerUp( );

 fm_basicSettings( );

 fm_setVolume( volumeLevel_ );

 fm_setSnrThreshold( snrThreshold_ );

 fm_setSeekThreshold( seekThreshold_ );

 fm_setSeekImpulseDetectionThreshold( impulseDetectionThreshold_ );

 mikrobus_logWrite( "application init done", _LOG_LINE );
}

void applicationTask( )
{
 dataReady_ = UART_Rdy_Ptr( );

 if (dataReady_ != 0)
 {
 receivedData_ = UART_Rd_Ptr( );

 switch (receivedData_)
 {
 case '+' :
 {
 fm_casePlus( );

 break;
 }
 case '-' :
 {
 fm_caseMinus( );

 break;
 }
 case 's' :
 {
 fm_caseSeek( );

 break;
 }
 case 't' :
 {
 fm_caseTune( );

 break;
 }
 case 'm' :
 {
 fm_caseMemorize( );

 break;
 }
 case 'i' :
 {
 fm_caseMute( );

 break;
 }
 case '1' :
 {
 fm_caseStation1( );

 break;
 }
 case '2' :
 {
 fm_caseStation2( );

 break;
 }
 case '3' :
 {
 fm_caseStation3( );

 break;
 }
 case '4' :
 {
 fm_caseStation4( );

 break;
 }
 case '5' :
 {
 fm_caseStation5( );

 break;
 }
 case '.' :
 {
 fm_caseTuneUp( );

 break;
 }
 case ',' :
 {
 fm_caseTuneDown( );

 break;
 }
 default :
 {
 fm_caseWrongCommand( );

 break;
 }
 }
 }
}

void main( )
{
 systemInit( );
 applicationInit( );

 while (1)
 {
 applicationTask( );
 }
}
