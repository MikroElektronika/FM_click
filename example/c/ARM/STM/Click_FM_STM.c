/*
Example for FM Click

    Date          : Nov 2018.
    Author        : Aleksandar Paunovic

Test configuration STM32 :
    
    MCU              : STM32F107VCT6
    Dev. Board       : EasyMx PRO v7 for STM32
    ARM Compiler ver : v6.0.0.0

---

Description :

The application is composed of three sections :

- System Initialization - Initializing AN pin as input, RST pin as output, CS pin as output and INT pin as input, initializing I2C and LOG functionalities
- Application Initialization - Initializing I2C driver, powering up device, setting basic settings for Europe, setting values of seek threshold, volume,
  snr threshold and impulse detection threshold
- Application Task - Waits for valid user input and executes functions based on set of valid commands
- Commands :
  '+' - volume up
  '-' - volume down
  's' - seek
  't' - tune
  'm' - memorize current station
  'i' - mute enable/disable
  '1' - station 1 tune
  '2' - station 2 tune
  '3' - station 3 tune
  '4' - station 4 tune
  '5' - station 5 tune
  '.' - fine tune up
  ',' - fine tune down)

Additional Functions :

- void fm_casePlus( )     - Increases volume
- void fm_caseMinus( )    - Decreases volume
- void fm_caseSeek( )     - Seeks next station
- void fm_caseTune( )     - Tunes default station
- void fm_caseMemorize( ) - Memorizes current station
- void fm_caseStation1( ) - Tunes memorized station 1
- void fm_caseStation2( ) - Tunes memorized station 2
- void fm_caseStation3( ) - Tunes memorized station 3
- void fm_caseStation4( ) - Tunes memorized station 4
- void fm_caseStation5( ) - Tunes memorized station 5
- void fm_caseMute( )     - Mutes device
- void fm_caseTuneUp( )   - Fine tunes frequency
- void fm_caseTuneDown( ) - Fine tunes frequency
*/

#include "Click_FM_types.h"
#include "Click_FM_config.h"


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
    mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_AN_PIN,  _GPIO_INPUT );
    mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
    mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN,  _GPIO_OUTPUT );
    mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );

    mikrobus_i2cInit( _MIKROBUS1, &_FM_I2C_CFG[0] );

    mikrobus_logInit( _LOG_USBUART_A, 9600 );

    Delay_ms(100);

    mikrobus_logWrite( "system init done", _LOG_LINE );
}

void applicationInit( )
{
    fm_i2cDriverInit( (T_FM_P)&_MIKROBUS1_GPIO, (T_FM_P)&_MIKROBUS1_I2C, 0x10 );

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