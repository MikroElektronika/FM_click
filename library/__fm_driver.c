/*
    __fm_driver.c

-----------------------------------------------------------------------------

  This file is part of mikroSDK.

  Copyright (c) 2017, MikroElektonika - http://www.mikroe.com

  All rights reserved.

----------------------------------------------------------------------------- */

#include "__fm_driver.h"
#include "__fm_hal.c"

/* ------------------------------------------------------------------- MACROS */

/* register addresses */
const uint16_t _FM_DEVICE_ID                             = 0x000E;
const uint16_t _FM_CHIP_ID                               = 0x000F;
const uint16_t _FM_POWER_CONFIGURATION                   = 0x0000;
const uint16_t _FM_CHANNEL                               = 0x0001;
const uint16_t _FM_SYSTEM_CONFIGURATION_1                = 0x0002;
const uint16_t _FM_SYSTEM_CONFIGURATION_2                = 0x0003;
const uint16_t _FM_SYSTEM_CONFIGURATION_3                = 0x0004;
const uint16_t _FM_TEST_1                                = 0x0005;
const uint16_t _FM_TEST_2                                = 0x0006;
const uint16_t _FM_BOOT_CONFIGURATION                    = 0x0007;
const uint16_t _FM_STATUS_RSSI                           = 0x0008;
const uint16_t _FM_READ_CHANNEL                          = 0x0009;
const uint16_t _FM_RDS_A                                 = 0x000A;
const uint16_t _FM_RDS_B                                 = 0x000B;
const uint16_t _FM_RDS_C                                 = 0x000C;
const uint16_t _FM_RDS_D                                 = 0x000D;

/* power configuration register */
const uint16_t _FM_SOFTMUTE_MASK                         = 0x7FFF;
const uint16_t _FM_SOFTMUTE_ENABLE                       = 0x0000;
const uint16_t _FM_SOFTMUTE_DISABLE                      = 0x8000;

const uint16_t _FM_MUTE_MASK                             = 0xBFFF;
const uint16_t _FM_MUTE_ENABLE                           = 0x0000;
const uint16_t _FM_MUTE_DISABLE                          = 0x4000;

const uint16_t _FM_STEREO_MASK                           = 0xDFFF;
const uint16_t _FM_STEREO                                = 0x0000;
const uint16_t _FM_FORCE_MONO                            = 0x2000;

const uint16_t _FM_RDS_MODE_MASK                         = 0xF7FF;
const uint16_t _FM_RDS_MODE_STANDARD                     = 0x0000;
const uint16_t _FM_RDS_MODE_VERBOSE                      = 0x0800;

const uint16_t _FM_SEEK_MODE_MASK                        = 0xFBFF;
const uint16_t _FM_SEEK_MODE_WRAP                        = 0x0000;
const uint16_t _FM_SEEK_MODE_STOP                        = 0x0400;

const uint16_t _FM_SEEK_DIRECTION_MASK                   = 0xFDFF;
const uint16_t _FM_SEEK_DIRECTION_DOWN                   = 0x0000;
const uint16_t _FM_SEEK_DIRECTION_UP                     = 0x0200;

const uint16_t _FM_SEEK_MASK                             = 0xFEFF;
const uint16_t _FM_SEEK_DISABLE                          = 0x0000;
const uint16_t _FM_SEEK_ENABLE                           = 0x0100;

const uint16_t _FM_POWERUP_DISABLE_MASK                  = 0xFFBF;
const uint16_t _FM_POWERUP_DISABLE_LOW                   = 0x0000;
const uint16_t _FM_POWERUP_DISABLE_HIGH                  = 0x0040;

const uint16_t _FM_POWERUP_ENABLE_MASK                   = 0xFFFE;
const uint16_t _FM_POWERUP_ENABLE_LOW                    = 0x0000;
const uint16_t _FM_POWERUP_ENABLE_HIGH                   = 0x0001;

/* channel */
const uint16_t _FM_TUNE_MASK                             = 0x7FFF;
const uint16_t _FM_TUNE_DISABLE                          = 0x0000;
const uint16_t _FM_TUNE_ENABLE                           = 0x8000;

/* system configuration 1 */
const uint16_t _FM_RDS_INTERRUPT_MASK                    = 0x7FFF;
const uint16_t _FM_RDS_INTERRUPT_DISABLE                 = 0x0000;
const uint16_t _FM_RDS_INTERRUPT_ENABLE                  = 0x8000;

const uint16_t _FM_SEEK_TUNE_COMPLETE_INTERRUPT_MASK     = 0xBFFF;
const uint16_t _FM_SEEK_TUNE_COMPLETE_INTERRUPT_DISABLE  = 0x0000;
const uint16_t _FM_SEEK_TUNE_COMPLETE_INTERRUPT_ENABLE   = 0x4000;

const uint16_t _FM_RDS_MASK                              = 0xEFFF;
const uint16_t _FM_RDS_DISABLE                           = 0x0000;
const uint16_t _FM_RDS_ENABLE                            = 0x1000;

const uint16_t _FM_DE_EMPHASIS_MASK                      = 0xF7FF;
const uint16_t _FM_DE_EMPHASIS_USA                       = 0x0000;
const uint16_t _FM_DE_EMPHASIS_EUROPE_AUSTRALIA_JAPAN    = 0x0800;

const uint16_t _FM_AGC_MASK                              = 0xFBFF;
const uint16_t _FM_AGC_ENABLE                            = 0x0000;
const uint16_t _FM_AGC_DISABLE                           = 0x0400;

const uint16_t _FM_STEREO_MONO_BLEND_LEVEL_MASK          = 0xFF3F;
const uint16_t _FM_STEREO_MONO_BLEND_LEVEL_31_49_RSSI    = 0x0000;
const uint16_t _FM_STEREO_MONO_BLEND_LEVEL_37_55_RSSI    = 0x0040;
const uint16_t _FM_STEREO_MONO_BLEND_LEVEL_19_37_RSSI    = 0x0080;
const uint16_t _FM_STEREO_MONO_BLEND_LEVEL_25_43_RSSI    = 0x00C0;

const uint16_t _FM_GPIO3_MASK                            = 0xFFCF;
const uint16_t _FM_GPIO3_HIGH_IMPENDANCE                 = 0x0000;
const uint16_t _FM_GPIO3_MONO_STEREO_INDICATOR           = 0x0001;
const uint16_t _FM_GPIO3_LOW                             = 0x0002;
const uint16_t _FM_GPIO3_HIGH                            = 0x0003;

const uint16_t _FM_GPIO2_MASK                            = 0xFFF3;
const uint16_t _FM_GPIO2_HIGH_IMPEDANCE                  = 0x0000;
const uint16_t _FM_GPIO2_STC_RDS_INTERRUPT               = 0x0004;
const uint16_t _FM_GPIO2_LOW                             = 0x0008;
const uint16_t _FM_GPIO2_HIGH                            = 0x000C;

const uint16_t _FM_GPIO1_MASK                            = 0xFFFC;
const uint16_t _FM_GPIO1_HIGH_IMPEDANCE                  = 0x0000;
const uint16_t _FM_GPIO1_RESERVED                        = 0x0001;
const uint16_t _FM_GPIO1_LOW                             = 0x0002;
const uint16_t _FM_GPIO1_HIGH                            = 0x0003;

/* system configuration 2 */
const uint16_t _FM_BAND_MASK                             = 0xFF3F;
const uint16_t _FM_BAND_USA_EUROPE_87P5_108_MHZ          = 0x0000;
const uint16_t _FM_BAND_JAPAN_WIDE_76_108_MHZ            = 0x0040;
const uint16_t _FM_BAND_JAPAN_76_90_MHZ                  = 0x0080;
const uint16_t _FM_BAND_RESERVED                         = 0x00C0;

const uint16_t _FM_CHANNEL_SPACING_MASK                  = 0xFFCF;
const uint16_t _FM_CHANNEL_SPACING_USA_AUSTRALIA_200_KHZ = 0x0000;
const uint16_t _FM_CHANNEL_SPACING_EUROPE_JAPAN_100_KHZ  = 0x0010;
const uint16_t _FM_CHANNEL_SPACING_50_KHZ                = 0x0020;

/* system configuration 3 */
const uint16_t _FM_SOFTMUTE_ATTACK_RECOVER_RATE_MASK     = 0x3FFF;
const uint16_t _FM_SOFTMUTE_ATTACK_RECOVER_RATE_FASTEST  = 0x0000;
const uint16_t _FM_SOFTMUTE_ATTACK_RECOVER_RATE_FAST     = 0x4000;
const uint16_t _FM_SOFTMUTE_ATTACK_RECOVER_RATE_SLOW     = 0x8000;
const uint16_t _FM_SOFTMUTE_ATTACK_RECOVER_RATE_SLOWEST  = 0xC000;

const uint16_t _FM_SOFTMUTE_ATTENUATION_MASK             = 0xCFFF;
const uint16_t _FM_SOFTMUTE_ATTENUATION_16_DB            = 0x0000;
const uint16_t _FM_SOFTMUTE_ATTENUATION_14_DB            = 0x1000;
const uint16_t _FM_SOFTMUTE_ATTENUATION_12_DB            = 0x2000;
const uint16_t _FM_SOFTMUTE_ATTENUATION_10_DB            = 0x3000;

const uint16_t _FM_EXTENDED_VOLUME_RANGE_MASK            = 0xFEFF;
const uint16_t _FM_EXTENDED_VOLUME_RANGE_DISABLED        = 0x0000;
const uint16_t _FM_EXTENDED_VOLUME_RANGE_ENABLED         = 0x0100;

/* test 1 */
const uint16_t _FM_CRYSTAL_OSCYLATOR_MASK                = 0x7FFF;
const uint16_t _FM_CRYSTAL_OSCYLATOR_DISABLE             = 0x0000;
const uint16_t _FM_CRYSTAL_OSCYLATOR_ENABLE              = 0x8000;

const uint16_t _FM_AUDIO_HIGH_Z_MASK                     = 0xBFFF;
const uint16_t _FM_AUDIO_HIGH_Z_DISABLE                  = 0x0000;
const uint16_t _FM_AUDIO_HIGH_Z_ENABLE                   = 0x4000;

/* status RSSI */
const uint16_t _FM_RDS_READY_MASK                        = 0x8000;
const uint16_t _FM_SEEK_TUNE_COMPLETE_MASK               = 0x4000;
const uint16_t _FM_SEEK_FAIL_BAND_LIMIT_MASK             = 0x2000;
const uint16_t _FM_AFC_RAIL_MASK                         = 0x1000;
const uint16_t _FM_RDS_SYNCHRONIZED_MASK                 = 0x0800;
const uint16_t _FM_STEREO_MONO_INDICATOR_MASK            = 0x0100;

/* ---------------------------------------------------------------- VARIABLES */

#ifdef   __FM_DRV_I2C__
static uint8_t _slaveAddress;
#endif

/* -------------------------------------------- PRIVATE FUNCTION DECLARATIONS */

static void fm_modeSelect( void );

/* --------------------------------------------- PRIVATE FUNCTION DEFINITIONS */

static void fm_modeSelect( void )
{
    hal_gpio_rstSet(0);

    hal_gpio_csSet(1);
    Delay_10ms( );

    hal_gpio_rstSet(1);
}

/* --------------------------------------------------------- PUBLIC FUNCTIONS */

#ifdef   __FM_DRV_SPI__

void fm_spiDriverInit(T_FM_P gpioObj, T_FM_P spiObj)
{
    hal_spiMap( (T_HAL_P)spiObj );
    hal_gpioMap( (T_HAL_P)gpioObj );

    // ... power ON
    // ... configure CHIP
}

#endif
#ifdef   __FM_DRV_I2C__

void fm_i2cDriverInit(T_FM_P gpioObj, T_FM_P i2cObj, uint8_t slave)
{
    _slaveAddress = slave;
    hal_i2cMap( (T_HAL_P)i2cObj );
    hal_gpioMap( (T_HAL_P)gpioObj );

    // ... power ON
    // ... configure CHIP
}

#endif
#ifdef   __FM_DRV_UART__

void fm_uartDriverInit(T_FM_P gpioObj, T_FM_P uartObj)
{
    hal_uartMap( (T_HAL_P)uartObj );
    hal_gpioMap( (T_HAL_P)gpioObj );

    // ... power ON
    // ... configure CHIP
}

#endif

/* ----------------------------------------------------------- IMPLEMENTATION */

void fm_readRegisters( uint16_t *registerBuffer )
{
    uint8_t auxBuffer1[32];
    uint8_t auxBuffer2[32];
    uint8_t i;
    uint8_t j;

    hal_i2cStart( );
    hal_i2cRead( _slaveAddress, auxBuffer1, 32, END_MODE_STOP );
    
    for (i = 0; i < 16; i++)
    {
        auxBuffer2[ i + 16 ] = auxBuffer1[ i ];
    }
    for (i = 0; i < 16; i++)
    {
        auxBuffer2[ i ] = auxBuffer1[ i + 16 ];
    }
    
    j = 0;
    
    for (i = 0; i < 16; i ++)
    {
        registerBuffer[ i ] = auxBuffer2[ j ];
        registerBuffer[ i ] <<= 8;
        j += 1;
        registerBuffer[ i ] |= auxBuffer2[ j ];
        j += 1;
    }
}

void fm_writeRegisters( uint16_t *registerBuffer )
{
    uint8_t auxBuffer[32];
    uint8_t i;
    uint8_t j;
    
    j = 0;
    
    for (i = 0; i < 16; i ++)
    {
        auxBuffer[ j ] = registerBuffer[ i ] >> 8;
        j += 1;
        auxBuffer[ j ] = registerBuffer[ i ];
        j += 1;
    }
    
    hal_i2cStart( );
    hal_i2cWrite( _slaveAddress, auxBuffer, 32, END_MODE_STOP );
}

void fm_setBits( uint16_t *registerBuffer, uint16_t registerAddress, uint16_t bitsMask, uint16_t bitsValue )
{
    registerBuffer[ registerAddress ] &= bitsMask;
    registerBuffer[ registerAddress ] |= bitsValue;
}

uint8_t fm_setSeekThreshold( uint16_t seekThreshold )
{
    uint16_t regBuffer[16];

    if (seekThreshold < 128)
    {
        fm_readRegisters( regBuffer );

        regBuffer[_FM_SYSTEM_CONFIGURATION_2] &= 0x00FF;
        seekThreshold <<= 8;
        regBuffer[_FM_SYSTEM_CONFIGURATION_2] |= seekThreshold;

        fm_writeRegisters( regBuffer );

        return 0;
    }
    else
    {
        return 1;
    }
}

uint8_t fm_setVolume( uint8_t volumeLevel )
{
    uint16_t regBuffer[16];

    if (volumeLevel < 16)
    {
        fm_readRegisters( regBuffer );

        regBuffer[_FM_SYSTEM_CONFIGURATION_2] &= 0xFFF0;
        regBuffer[_FM_SYSTEM_CONFIGURATION_2] |= volumeLevel;

        fm_writeRegisters( regBuffer );

        return 0;
    }
    else
    {
        return 1;
    }
}

uint8_t fm_setSnrThreshold( uint8_t snrThreshold )
{
    uint16_t regBuffer[16];

    if (snrThreshold < 8)
    {
        fm_readRegisters( regBuffer );

        regBuffer[_FM_SYSTEM_CONFIGURATION_3] &= 0xFF0F;
        snrThreshold <<= 4;
        regBuffer[_FM_SYSTEM_CONFIGURATION_3] |= snrThreshold;

        fm_writeRegisters( regBuffer );

        return 0;
    }
    else
    {
        return 1;
    }
}

uint8_t fm_setSeekImpulseDetectionThreshold( uint8_t impulseDetectionThreshold )
{
    uint16_t regBuffer[16];

    if (impulseDetectionThreshold < 16)
    {
        fm_readRegisters( regBuffer );

        regBuffer[_FM_SYSTEM_CONFIGURATION_3] &= 0xFFF0;
        regBuffer[_FM_SYSTEM_CONFIGURATION_3] |= impulseDetectionThreshold;

        fm_writeRegisters( regBuffer );

        return 0;
    }
    else
    {
        return 1;
    }
}

uint8_t fm_getErrorsBlockA( void )
{
    uint16_t regBuffer[16];
    uint16_t auxVariable;
    
    uint8_t nErrors;

    fm_readRegisters( regBuffer );

    auxVariable = regBuffer[_FM_STATUS_RSSI];

    auxVariable &= 0x0600;
    auxVariable >>= 9;
    auxVariable &= 0x0003;

    nErrors = auxVariable;

    return nErrors;
}

uint8_t fm_getReceivedSignalStrengthIndicator( void )
{
    uint16_t regBuffer[16];
    uint16_t auxVariable;

    uint8_t rssiValue;

    fm_readRegisters( regBuffer );

    auxVariable = regBuffer[_FM_STATUS_RSSI];

    auxVariable &= 0x00FF;

    rssiValue = auxVariable;

    return rssiValue;
}

uint8_t fm_getErrorsBlockB( void )
{
    uint16_t regBuffer[16];
    uint16_t auxVariable;

    uint8_t nErrors;

    fm_readRegisters( regBuffer );

    auxVariable = regBuffer[_FM_READ_CHANNEL];

    auxVariable &= 0xC000;
    auxVariable >>= 14;
    auxVariable &= 0x0003;

    nErrors = auxVariable;

    return nErrors;
}

uint8_t fm_getErrorsBlockC( void )
{
    uint16_t regBuffer[16];
    uint16_t auxVariable;

    uint8_t nErrors;

    fm_readRegisters( regBuffer );

    auxVariable = regBuffer[_FM_READ_CHANNEL];

    auxVariable &= 0x3000;
    auxVariable >>= 12;
    auxVariable &= 0x0003;

    nErrors = auxVariable;

    return nErrors;
}

uint8_t fm_getErrorsBlockD( void )
{
    uint16_t regBuffer[16];
    uint16_t auxVariable;

    uint8_t nErrors;

    fm_readRegisters( regBuffer );

    auxVariable = regBuffer[_FM_READ_CHANNEL];

    auxVariable &= 0x0C00;
    auxVariable >>= 10;
    auxVariable &= 0x0003;

    nErrors = auxVariable;

    return nErrors;
}

float fm_getChannelFrequency( void )
{
    uint16_t regBuffer[16];
    uint16_t channel_;
    uint16_t b;
    uint16_t s;
    float channelFrequency_;
    float space_;
    float band_;

    fm_readRegisters( regBuffer );

    b = regBuffer[ _FM_SYSTEM_CONFIGURATION_2 ];
    b &= 0x00C0;
    b >>= 6;
    b &= 0x0003;

    s = regBuffer[ _FM_SYSTEM_CONFIGURATION_2 ];
    s &= 0x0030;
    s >>= 4;
    s &= 0x0003;

    if (b == 0)
    {
        band_ = 87.5;
    }
    else if (b == 1)
    {
        band_ = 76.0;
    }
    else if (b == 2)
    {
        band_ = 76.0;
    }

    if (s == 0)
    {
        space_ = 0.2;
    }
    else if (s == 1)
    {
        space_ = 0.1;
    }
    else if (s == 2)
    {
        space_ = 0.05;
    }

    channel_ = regBuffer[_FM_READ_CHANNEL];

    channel_ &= 0x03FF;
    
    channelFrequency_  = channel_ * space_;
    channelFrequency_ += band_;
    
    return channelFrequency_;
}

void fm_powerup( void )
{
    uint16_t regBuffer[16];
    
    fm_modeSelect( );

    Delay_100ms( );    /* wait for device to settle */
    
    fm_readRegisters( regBuffer );
    
    fm_setBits( regBuffer,   _FM_TEST_1,   _FM_AUDIO_HIGH_Z_MASK,        _FM_AUDIO_HIGH_Z_DISABLE );
    fm_setBits( regBuffer,   _FM_TEST_1,   _FM_CRYSTAL_OSCYLATOR_MASK,   _FM_CRYSTAL_OSCYLATOR_ENABLE );
    
    fm_writeRegisters( regBuffer );
    
    Delay_1sec( );     /* waiting for crystal oscylator to settle -- minimum 500 ms */
    
    fm_readRegisters( regBuffer );
    
    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_POWERUP_ENABLE_MASK,    _FM_POWERUP_ENABLE_HIGH );
    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_POWERUP_DISABLE_MASK,   _FM_POWERUP_DISABLE_LOW );
    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_MUTE_MASK,              _FM_MUTE_DISABLE );

    fm_writeRegisters( regBuffer );
    
    Delay_100ms( );    /* waiting for device to powerup */
}

void fm_basicSettings( void )
{
    uint16_t regBuffer[16];

    fm_readRegisters( regBuffer );

    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_SOFTMUTE_MASK,          _FM_SOFTMUTE_DISABLE );
    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_MUTE_MASK,              _FM_MUTE_DISABLE );
    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_STEREO_MASK,            _FM_STEREO );
    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_RDS_MODE_MASK,          _FM_RDS_MODE_STANDARD );
    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_SEEK_MODE_MASK,         _FM_SEEK_MODE_WRAP );
    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_SEEK_DIRECTION_MASK,    _FM_SEEK_DIRECTION_UP );
    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_SEEK_MASK,              _FM_SEEK_DISABLE );
    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_POWERUP_DISABLE_MASK,   _FM_POWERUP_DISABLE_LOW );
    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_POWERUP_ENABLE_MASK,    _FM_POWERUP_ENABLE_HIGH );
    
    fm_setBits( regBuffer,   _FM_CHANNEL,   _FM_TUNE_MASK,   _FM_TUNE_DISABLE );

    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_1,   _FM_RDS_INTERRUPT_MASK,                _FM_RDS_INTERRUPT_DISABLE );
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_1,   _FM_SEEK_TUNE_COMPLETE_INTERRUPT_MASK, _FM_SEEK_TUNE_COMPLETE_INTERRUPT_ENABLE );
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_1,   _FM_RDS_MASK,                          _FM_RDS_DISABLE );
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_1,   _FM_DE_EMPHASIS_MASK,                  _FM_DE_EMPHASIS_EUROPE_AUSTRALIA_JAPAN );
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_1,   _FM_AGC_MASK,                          _FM_AGC_ENABLE );
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_1,   _FM_STEREO_MONO_BLEND_LEVEL_MASK,      _FM_STEREO_MONO_BLEND_LEVEL_31_49_RSSI );
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_1,   _FM_GPIO3_MASK,                        _FM_GPIO3_HIGH_IMPENDANCE );
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_1,   _FM_GPIO2_MASK,                        _FM_GPIO2_STC_RDS_INTERRUPT );
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_1,   _FM_GPIO1_MASK,                        _FM_GPIO1_HIGH_IMPEDANCE );

    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_2,   _FM_BAND_MASK,                         _FM_BAND_USA_EUROPE_87P5_108_MHZ );
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_2,   _FM_CHANNEL_SPACING_MASK,              _FM_CHANNEL_SPACING_EUROPE_JAPAN_100_KHZ );
    
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_3,   _FM_SOFTMUTE_ATTACK_RECOVER_RATE_MASK, _FM_SOFTMUTE_ATTACK_RECOVER_RATE_FASTEST );
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_3,   _FM_SOFTMUTE_ATTENUATION_MASK,         _FM_SOFTMUTE_ATTENUATION_16_DB );
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_3,   _FM_EXTENDED_VOLUME_RANGE_MASK,        _FM_EXTENDED_VOLUME_RANGE_DISABLED );

    fm_writeRegisters( regBuffer );
}

void fm_powerdown( void )
{
    uint16_t regBuffer[16];

    fm_readRegisters( regBuffer );

    fm_setBits( regBuffer,   _FM_TEST_1,   _FM_AUDIO_HIGH_Z_MASK,   _FM_AUDIO_HIGH_Z_ENABLE );
    
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_1,   _FM_RDS_MASK,     _FM_RDS_DISABLE );
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_1,   _FM_GPIO1_MASK,   _FM_GPIO1_LOW );
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_1,   _FM_GPIO2_MASK,   _FM_GPIO2_LOW );
    fm_setBits( regBuffer,   _FM_SYSTEM_CONFIGURATION_1,   _FM_GPIO3_MASK,   _FM_GPIO3_LOW );
    
    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_POWERUP_ENABLE_MASK,    _FM_POWERUP_ENABLE_LOW );
    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_POWERUP_DISABLE_MASK,   _FM_POWERUP_DISABLE_HIGH );
    fm_setBits( regBuffer,   _FM_POWER_CONFIGURATION,   _FM_MUTE_MASK,              _FM_MUTE_ENABLE );

    fm_writeRegisters( regBuffer );

    Delay_1sec( );    /* powerdown time */
}

uint16_t fm_getChannel( void )
{
    uint16_t regBuffer[16];
    uint16_t channel_;
    
    fm_readRegisters( regBuffer );

    channel_ = regBuffer[_FM_READ_CHANNEL];

    channel_ &= 0x03FF;
    
    return channel_;
}

void fm_tuneChannel( uint16_t channel_ )
{
    uint16_t regBuffer[16];
    
    fm_readRegisters( regBuffer );

    channel_ &= 0x03FF;

    regBuffer[_FM_CHANNEL] &= 0x0000;
    regBuffer[_FM_CHANNEL] |= channel_;
    
    fm_setBits( regBuffer, _FM_CHANNEL, _FM_TUNE_MASK, _FM_TUNE_ENABLE );
    
    fm_writeRegisters( regBuffer );
}

uint8_t fm_tune( float channelFrequency )
{
    uint16_t channelLimitUp;
    uint16_t regBuffer[16];
    uint16_t channel_;
    uint16_t b;
    uint16_t s;
    float bandLimitDown;
    float bandLimitUp;
    float space_;
    float band_;
    float aux_;

    fm_readRegisters( regBuffer );

    b = regBuffer[ _FM_SYSTEM_CONFIGURATION_2 ];
    b &= 0x00C0;
    b >>= 6;
    b &= 0x0003;

    s = regBuffer[ _FM_SYSTEM_CONFIGURATION_2 ];
    s &= 0x0030;
    s >>= 4;
    s &= 0x0003;

    if (b == 0)
    {
        bandLimitDown = 87.5;
        bandLimitUp = 108;
    }
    else if (b == 1)
    {
        bandLimitDown = 76.0;
        bandLimitUp = 108;
    }
    else if (b == 2)
    {
        bandLimitDown = 76.0;
        bandLimitUp = 90;
    }

    if (s == 0)
    {
        space_ = 0.2;
    }
    else if (s == 1)
    {
        space_ = 0.1;
    }
    else if (s == 2)
    {
        space_ = 0.05;
    }

    aux_  = channelFrequency - bandLimitDown;
    aux_ /= space_;

    channel_ = (uint16_t)(aux_);
    
    aux_  = bandLimitUp - bandLimitDown;
    aux_ /= space_;
    
    channelLimitUp = (uint16_t)(aux_);

    if (channel_ < channelLimitUp && channel_ > 0)
    {
        regBuffer[_FM_CHANNEL] &= 0x0000;
        regBuffer[_FM_CHANNEL] |= channel_;

        fm_setBits( regBuffer, _FM_CHANNEL, _FM_TUNE_MASK, _FM_TUNE_ENABLE );

        fm_writeRegisters( regBuffer );

        return 0;
    }
    else
    {
        return 1;
    }
}

void fm_endTune( void )
{
    uint16_t regBuffer[16];
    
    fm_readRegisters( regBuffer );
    
    fm_setBits( regBuffer, _FM_CHANNEL, _FM_TUNE_MASK, _FM_TUNE_DISABLE );
    
    fm_writeRegisters( regBuffer );
}

void fm_seek( void )
{
    uint16_t regBuffer[16];
    
    fm_readRegisters( regBuffer );
    
    fm_setBits( regBuffer, _FM_POWER_CONFIGURATION, _FM_SEEK_MASK, _FM_SEEK_ENABLE );
    
    fm_writeRegisters( regBuffer );
}

void fm_endSeek( void )
{
    uint16_t regBuffer[16];

    fm_readRegisters( regBuffer );

    fm_setBits( regBuffer, _FM_POWER_CONFIGURATION, _FM_SEEK_MASK, _FM_SEEK_DISABLE);

    fm_writeRegisters( regBuffer );
}

uint8_t fm_volumeUp( void )
{
    uint16_t regBuffer[16];
    uint8_t volumeLevel;
    
    fm_readRegisters( regBuffer );
    
    volumeLevel  = regBuffer[ _FM_SYSTEM_CONFIGURATION_2 ];
    volumeLevel &= 0x000F;
    
    if (volumeLevel < 15)
    {
        volumeLevel += 1;
        
        regBuffer[_FM_SYSTEM_CONFIGURATION_2] &= 0xFFF0;
        regBuffer[_FM_SYSTEM_CONFIGURATION_2] |= volumeLevel;

        fm_writeRegisters( regBuffer );
        
        return 0;
    }
    else
    {
        return 1;
    }
}

uint8_t fm_volumeDown( void )
{
    uint16_t regBuffer[16];
    uint8_t volumeLevel;

    fm_readRegisters( regBuffer );

    volumeLevel  = regBuffer[ _FM_SYSTEM_CONFIGURATION_2 ];
    volumeLevel &= 0x000F;

    if (volumeLevel > 0)
    {
        volumeLevel -= 1;

        regBuffer[_FM_SYSTEM_CONFIGURATION_2] &= 0xFFF0;
        regBuffer[_FM_SYSTEM_CONFIGURATION_2] |= volumeLevel;

        fm_writeRegisters( regBuffer );

        return 0;
    }
    else
    {
        return 1;
    }
}

void fm_muteEnable( void )
{
    uint16_t regBuffer[16];
    
    fm_readRegisters( regBuffer );
    
    fm_setBits( regBuffer, _FM_POWER_CONFIGURATION, _FM_MUTE_MASK, _FM_MUTE_ENABLE );
    
    fm_writeRegisters( regBuffer );
}

void fm_muteDisable( void )
{
    uint16_t regBuffer[16];

    fm_readRegisters( regBuffer );

    fm_setBits( regBuffer, _FM_POWER_CONFIGURATION, _FM_MUTE_MASK, _FM_MUTE_DISABLE );

    fm_writeRegisters( regBuffer );
}

uint8_t fm_fineTuneUp( void )
{
    uint16_t channelLimitUp;
    uint16_t currentChannel;
    uint16_t regBuffer[16];
    uint16_t increment;
    uint16_t channel_;
    uint16_t b;
    uint16_t s;
    float bandLimitDown;
    float bandLimitUp;
    float space_;
    float aux_;

    fm_readRegisters( regBuffer );

    b = regBuffer[ _FM_SYSTEM_CONFIGURATION_2 ];
    b &= 0x00C0;
    b >>= 6;
    b &= 0x0003;

    s = regBuffer[ _FM_SYSTEM_CONFIGURATION_2 ];
    s &= 0x0030;
    s >>= 4;
    s &= 0x0003;
    
    currentChannel  = regBuffer[_FM_READ_CHANNEL];
    currentChannel &= 0x03FF;

    if (b == 0)
    {
        bandLimitDown = 87.5;
        bandLimitUp = 108;
    }
    else if (b == 1)
    {
        bandLimitDown = 76.0;
        bandLimitUp = 108;
    }
    else if (b == 2)
    {
        bandLimitDown = 76.0;
        bandLimitUp = 90;
    }

    if (s == 0)
    {
        space_ = 0.2;
        increment = 1;
    }
    else if (s == 1)
    {
        space_ = 0.1;
        increment = 1;
    }
    else if (s == 2)
    {
        space_ = 0.05;
        increment = 2;
    }
    
    channel_ = currentChannel + increment;

    aux_  = bandLimitUp - bandLimitDown;
    aux_ /= space_;

    channelLimitUp = (uint16_t)(aux_);

    if (channel_ < channelLimitUp && channel_ > 0)
    {
        regBuffer[_FM_CHANNEL] &= 0x0000;
        regBuffer[_FM_CHANNEL] |= channel_;

        fm_setBits( regBuffer, _FM_CHANNEL, _FM_TUNE_MASK, _FM_TUNE_ENABLE );

        fm_writeRegisters( regBuffer );

        return 0;
    }
    else
    {
        return 1;
    }
}

uint8_t fm_fineTuneDown( void )
{
    uint16_t currentChannel;
    uint16_t channelLimitUp;
    uint16_t regBuffer[16];
    uint16_t increment;
    uint16_t channel_;
    uint16_t b;
    uint16_t s;
    float bandLimitDown;
    float bandLimitUp;
    float space_;
    float aux_;

    fm_readRegisters( regBuffer );

    b = regBuffer[ _FM_SYSTEM_CONFIGURATION_2 ];
    b &= 0x00C0;
    b >>= 6;
    b &= 0x0003;

    s = regBuffer[ _FM_SYSTEM_CONFIGURATION_2 ];
    s &= 0x0030;
    s >>= 4;
    s &= 0x0003;

    currentChannel  = regBuffer[_FM_READ_CHANNEL];
    currentChannel &= 0x03FF;

    if (b == 0)
    {
        bandLimitDown = 87.5;
        bandLimitUp = 108;
    }
    else if (b == 1)
    {
        bandLimitDown = 76.0;
        bandLimitUp = 108;
    }
    else if (b == 2)
    {
        bandLimitDown = 76.0;
        bandLimitUp = 90;
    }

    if (s == 0)
    {
        space_ = 0.2;
        increment = 1;
    }
    else if (s == 1)
    {
        space_ = 0.1;
        increment = 1;
    }
    else if (s == 2)
    {
        space_ = 0.05;
        increment = 2;
    }

    channel_ = currentChannel - increment;

    aux_  = bandLimitUp - bandLimitDown;
    aux_ /= space_;

    channelLimitUp = (uint16_t)(aux_);

    if (channel_ < channelLimitUp && channel_ > 0)
    {
        regBuffer[_FM_CHANNEL] &= 0x0000;
        regBuffer[_FM_CHANNEL] |= channel_;

        fm_setBits( regBuffer, _FM_CHANNEL, _FM_TUNE_MASK, _FM_TUNE_ENABLE );

        fm_writeRegisters( regBuffer );

        return 0;
    }
    else
    {
        return 1;
    }
}

uint8_t fm_getIntPin( void )
{
    uint8_t status_;

    status_ = hal_gpio_intGet( );

    return status_;
}

uint8_t fm_getAnPin( void )
{
    uint8_t status_;

    status_ = hal_gpio_anGet( );

    return status_;
}

/* -------------------------------------------------------------------------- */
/*
  __fm_driver.c

  Copyright (c) 2017, MikroElektonika - http://www.mikroe.com

  All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.

3. All advertising materials mentioning features or use of this software
   must display the following acknowledgement:
   This product includes software developed by the MikroElektonika.

4. Neither the name of the MikroElektonika nor the
   names of its contributors may be used to endorse or promote products
   derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY MIKROELEKTRONIKA ''AS IS'' AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL MIKROELEKTRONIKA BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

----------------------------------------------------------------------------- */