/*
    __fm_driver.h

-----------------------------------------------------------------------------

  This file is part of mikroSDK.
  
  Copyright (c) 2017, MikroElektonika - http://www.mikroe.com

  All rights reserved.

----------------------------------------------------------------------------- */

/**
@file   __fm_driver.h
@brief    FM Driver
@mainpage FM Click
@{

@image html libstock_fb_view.jpg

@}

@defgroup   FM
@brief      FM Click Driver
@{

| Global Library Prefix | **FM** |
|:---------------------:|:-----------------:|
| Version               | **1.0.0**    |
| Date                  | **Nov 2018.**      |
| Developer             | **Aleksandar Paunovic**     |

*/
/* -------------------------------------------------------------------------- */

#include "stdint.h"

#ifndef _FM_H_
#define _FM_H_

/** 
 * @macro T_FM_P
 * @brief Driver Abstract type 
 */
#define T_FM_P    const uint8_t*

/** @defgroup FM_COMPILE Compilation Config */              /** @{ */

// #define   __FM_DRV_SPI__                            /**<     @macro __FM_DRV_SPI__  @brief SPI driver selector */
   #define   __FM_DRV_I2C__                            /**<     @macro __FM_DRV_I2C__  @brief I2C driver selector */                                          
// #define   __FM_DRV_UART__                           /**<     @macro __FM_DRV_UART__ @brief UART driver selector */ 

                                                                       /** @} */
/** @defgroup FM_VAR Variables */                           /** @{ */

/* register addresses */
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

/* power configuration register */
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

/* channel */
extern const uint16_t _FM_TUNE_MASK;
extern const uint16_t _FM_TUNE_DISABLE;
extern const uint16_t _FM_TUNE_ENABLE;

/* system configuration 1 */
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

/* system configuration 2 */
extern const uint16_t _FM_BAND_MASK;
extern const uint16_t _FM_BAND_USA_EUROPE_87P5_108_MHZ;
extern const uint16_t _FM_BAND_JAPAN_WIDE_76_108_MHZ;
extern const uint16_t _FM_BAND_JAPAN_76_90_MHZ;
extern const uint16_t _FM_BAND_RESERVED;

extern const uint16_t _FM_CHANNEL_SPACING_MASK;
extern const uint16_t _FM_CHANNEL_SPACING_USA_AUSTRALIA_200_KHZ;
extern const uint16_t _FM_CHANNEL_SPACING_EUROPE_JAPAN_100_KHZ;
extern const uint16_t _FM_CHANNEL_SPACING_50_KHZ ;

/* system configuration 3 */
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

/* test 1 */
extern const uint16_t _FM_CRYSTAL_OSCYLATOR_MASK;
extern const uint16_t _FM_CRYSTAL_OSCYLATOR_DISABLE;
extern const uint16_t _FM_CRYSTAL_OSCYLATOR_ENABLE;

extern const uint16_t _FM_AUDIO_HIGH_Z_MASK;
extern const uint16_t _FM_AUDIO_HIGH_Z_DISABLE;
extern const uint16_t _FM_AUDIO_HIGH_Z_ENABLE;

/* status RSSI */
extern const uint16_t _FM_RDS_READY_MASK;
extern const uint16_t _FM_SEEK_TUNE_COMPLETE_MASK;
extern const uint16_t _FM_SEEK_FAIL_BAND_LIMIT_MASK;
extern const uint16_t _FM_AFC_RAIL_MASK;
extern const uint16_t _FM_RDS_SYNCHRONIZED_MASK;
extern const uint16_t _FM_STEREO_MONO_INDICATOR_MASK;
                                                                       /** @} */
/** @defgroup FM_TYPES Types */                             /** @{ */



                                                                       /** @} */
#ifdef __cplusplus
extern "C"{
#endif

/** @defgroup FM_INIT Driver Initialization */              /** @{ */

#ifdef   __FM_DRV_SPI__
void fm_spiDriverInit(T_FM_P gpioObj, T_FM_P spiObj);
#endif
#ifdef   __FM_DRV_I2C__
void fm_i2cDriverInit(T_FM_P gpioObj, T_FM_P i2cObj, uint8_t slave);
#endif
#ifdef   __FM_DRV_UART__
void fm_uartDriverInit(T_FM_P gpioObj, T_FM_P uartObj);
#endif
                                                                       /** @} */
/** @defgroup FM_FUNC Driver Functions */                   /** @{ */

/**
 * @brief Reading all registers
 *
 * @param[out] uint16_t registerBuffer[16] - all registers to be read are stored into registerBuffer[]
 *
 * This function reads all registers in device starting from address 0x0A
 * This function sorts all device registers in such manner that registerBuffer[] can be used with fm_writeReggisters(); without change
 */
void fm_readRegisters( uint16_t *registerBuffer );

/**
 * @brief Writing all registers
 *
 * @param[in] uint16_t registerBuffer[16] - all registers to be written are stored into registerBuffer[]
 *
 * This function writes all registers from device starting from address 0x02
 * This function should be used after fm_readRegisters(); and fm_setBits(); functions
 */
void fm_writeRegisters( uint16_t *registerBuffer );

/**
 * @brief Setting bits in specific register on a specific bit location
 *
 * @param[in] uint16_t registerBuffer[16] - all device registers are read into registerBuffer[16]
 * @param[in] uint16_t registerAddress    - address of the register whose bits are to be set
 * @param[in] uint16_t bitsMask           - bits to be set must be masked first
 * @param[in] uint16_t bitsValue          - value of the bits in selected range
 *
 * This function is used to set bits in specific register on a specific position
 * This function is used after fm_readRegisters( uint16_t *registerBuffer )
 * This function is used before fm_writeRegisters ( uint16_t *registerBuffer )
 */
void fm_setBits( uint16_t *registerBuffer, uint16_t registerAddress, uint16_t bitsMask, uint16_t bitsValue );

/**
 * @brief Setting seek threshold value
 *
 * @param[in]  uint16_t seekThreshold - value of seek threshold
 * @param[out] (0 or 1)
 *
 * This function sets seek threshold value
 * This function returns 0 if threshold value is in valid range
 * This function returns 1 if threshold value is not in valid range
 */
uint8_t fm_setSeekThreshold( uint16_t seekThreshold );

/**
 * @brief Setting volume value
 *
 * @param[in]  uint8_t volumeLevel - desired volume value
 * @param[out] (0 or 1)
 *
 * This function sets volume value (0-16)
 * This function sets VOLUME bits [3:0] in System configuration 2 register
 * This function returns 0 if volume value is in range
 * This function returns 1 if volume value is not in range
 */
uint8_t fm_setVolume( uint8_t volumeLevel );

/**
 * @brief Setting seek SNR threshold value
 *
 * @param[out] (0 or 1)
 *
 * This function sets seek SNR threshold value
 * This function sets SKSNR bits in System configuration 3 register
 * This function returns 0 if threshold value is in valid range
 * This function returns 1 if threshold value is not in valid range
 */
uint8_t fm_setSnrThreshold( uint8_t snrThreshold );

/**
 * @brief Setting seek impulse detection threshold value
 *
 * @param[out] (0 or 1)
 *
 * This function sets impulse detection threshold value
 * This function sets SKCNT bits in System configuration 3 register
 * This function returns 0 if threshold value is in valid range
 * This function returns 1 if threshold value is not in valid range
 */
uint8_t fm_setSeekImpulseDetectionThreshold( uint8_t impulseDetectionThreshold );

/**
 * @brief Reading number of errors to be corrected
 *
 * @param[out] uint8_t nErrors - value that represents number of errors to be corrected
 *
 * This function returns BLERA error bits from status RSSI register
 * This function returns 00h if 0 errors occured
 * This function returns 01h if 1–2 errors occured
 * This function returns 10h if 3–5 errors occured
 * This function returns 11h if 6+ errors occured and correction is not possible.
 */
uint8_t fm_getErrorsBlockA( void );

/**
 * @brief Reading recived strength indicator
 *
 * @param[out] uint8_t rssiValue - value of recived signal strength in dBuV
 *
 * This function reads recived signal strength indicatior
 */
uint8_t fm_getReceivedSignalStrengthIndicator( void );

/**
 * @brief Reading number of errors to be corrected
 *
 * @param[out] uint8_t nErrors - value that represents number of errors to be corrected
 *
 * This function returns BLERB error bits from read Channel register
 * This function returns 00h if 0 errors occured
 * This function returns 01h if 1–2 errors occured
 * This function returns 10h if 3–5 errors occured
 * This function returns 11h if 6+ errors occured and correction is not possible.
 */
uint8_t fm_getErrorsBlockB( void );

/**
 * @brief Reading number of errors to be corrected
 *
 * @param[out] uint8_t nErrors - value that represents number of errors to be corrected
 *
 * This function returns BLERC error bits from read Channel register
 * This function returns 00h if 0 errors occured
 * This function returns 01h if 1–2 errors occured
 * This function returns 10h if 3–5 errors occured
 * This function returns 11h if 6+ errors occured and correction is not possible.
 */
uint8_t fm_getErrorsBlockC( void );

/**
 * @brief Reading number of errors to be corrected
 *
 * @param[out] uint8_t nErrors - value that represents number of errors to be corrected
 *
 * This function returns BLERD error bits from read Channel register
 * This function returns 00h if 0 errors occured
 * This function returns 01h if 1–2 errors occured
 * This function returns 10h if 3–5 errors occured
 * This function returns 11h if 6+ errors occured and correction is not possible.
 */
uint8_t fm_getErrorsBlockD( void );

/**
 * @brief Calculating current channel frequency
 *
 * @param[out] float channelFrequency - current channel frequency in MHz
 *
 * This function calculates current channel frequency based on band and space settings
 */
float fm_getChannelFrequency( void );

/**
 * @brief Powering up device
 *
 * This function powers up device
 * This function first selects 2 wire mode for I2C
 * This function than enables crystal oscylator and waits for it to settle
 * This function than sets ENABLE bit HIGH and DISABLE bit LOW and waits for device to powerup
 */
void fm_powerup( void );

/**
 * @brief Setting basic settings
 *
 * This function sets basic settings to device
 * This function sets optimal settings for device operation in Europe
 */
void fm_basicSettings( void );

/**
 * @brief Powering down device
 *
 * This function powers down device
 */
void fm_powerdown( void );

/**
 * @brief Reading CHANNEL bits
 *
 * @param[out] uint16_t channel - value of channel bits - bits [9:0]
 *
 * This function reads CHANNEL bits from READCHAN register
 */
uint16_t fm_getChannel( void );

/**
 * @brief Setting CHANNEL bits
 *
 * @param[in] uint16_t channel - value stored in channel bits - bits [9:0]
 *
 * This function sets CHANNEL bits in CHANNEL register
 */
void fm_tuneChannel( uint16_t channel_ );

/**
 * @brief Tunning radio station
 *
 * @param[in]  float channelFrequency - frequency of the channel to be tuned
 * @param[out] (0 or 1)
 *
 * This function sets channel for desired radio station and sets tune enable bit
 * This function returns 0 if radio station frequency is in valid range
 * This function returns 1 if radio station frequency is not in valid range
 */
uint8_t fm_tune( float channelFrequency );

/**
 * @brief End tunning
 *
 * This function ends tunning radio station by setting TUNE bit LOW
 * This function must be executed after getting tune done interrupt flag
 * This function can be executed before getting tune done interrupt flag
 */
void fm_endTune( void );

/**
 * @brief Start seeking radio station
 *
 * This function starts seeking radio stations according to basic seek setings
 * This function seeks stations by seeking up and wraps to lower band limit upon reaching upper band limit if basic settings have not been changed
 */
void fm_seek( void );

/**
 * @brief End seeking
 *
 * This function ends seek by setting SEEK bit LOW
 * This function must be called after fm_seek(); function
 * This function must be executed after seek done interrupt flag
 * This function can be executed before seek done interrupt flag
 */
void fm_endSeek( void );

/**
 * @brief Increasing volume level
 *
 * @param[out] (o or 1)
 *
 * This function increases volume level
 * This function returns 0 if volume level increased
 * This function returns 1 if volume level reached maximum value
 */
uint8_t fm_volumeUp( void );

/**
 * @brief Decreasing volume level
 *
 * @param[out] (o or 1)
 *
 * This function decreases volume level
 * This function returns 0 if volume level decreased
 * This function returns 1 if volume level reached minimum value
 */
uint8_t fm_volumeDown( void );

/**
 * @brief Enable mute
 *
 * This function enables mute
 */
void fm_muteEnable( void );

/**
 * @brief Disable mute
 *
 * This function disables mute
 */
void fm_muteDisable( void );

/**
 * @brief Fine tunning
 *
 * This fine tunes frequency in smallest possible increments for spacing setting
 * This function returns 0 if tuned frequency is in valid range
 * This function returns 1 if tuned frequency reached upper band limit
 */
uint8_t fm_fineTuneUp( void );

/**
 * @brief Fine tunning
 *
 * This fine tunes frequency in smallest possible increments for spacing setting
 * This function returns 0 if tuned frequency is in valid range
 * This function returns 1 if tuned frequency reached lower band limit
 */
uint8_t fm_fineTuneDown( void );

/**
 * @brief Checking INT pin status
 *
 * @param[out] uint8_t status - int pin status - (0 or 1)
 *
 * This function returns 0 if INT pin is LOW
 * This function returns 1 if INT pin is HIGH
 */
uint8_t fm_getIntPin( void );

/**
 * @brief Checking AN pin status
 *
 * @param[out] uint8_t status - int pin status - (0 or 1)
 *
 * This function returns 0 if AN pin is LOW
 * This function returns 1 if AN pin is HIGH
 */
uint8_t fm_getAnPin( void );

                                                                       /** @} */
#ifdef __cplusplus
} // extern "C"
#endif
#endif

/**
    @example Click_FM_STM.c
    @example Click_FM_TIVA.c
    @example Click_FM_CEC.c
    @example Click_FM_KINETIS.c
    @example Click_FM_MSP.c
    @example Click_FM_PIC.c
    @example Click_FM_PIC32.c
    @example Click_FM_DSPIC.c
    @example Click_FM_AVR.c
    @example Click_FM_FT90x.c
    @example Click_FM_STM.mbas
    @example Click_FM_TIVA.mbas
    @example Click_FM_CEC.mbas
    @example Click_FM_KINETIS.mbas
    @example Click_FM_MSP.mbas
    @example Click_FM_PIC.mbas
    @example Click_FM_PIC32.mbas
    @example Click_FM_DSPIC.mbas
    @example Click_FM_AVR.mbas
    @example Click_FM_FT90x.mbas
    @example Click_FM_STM.mpas
    @example Click_FM_TIVA.mpas
    @example Click_FM_CEC.mpas
    @example Click_FM_KINETIS.mpas
    @example Click_FM_MSP.mpas
    @example Click_FM_PIC.mpas
    @example Click_FM_PIC32.mpas
    @example Click_FM_DSPIC.mpas
    @example Click_FM_AVR.mpas
    @example Click_FM_FT90x.mpas
*/                                                                     /** @} */
/* -------------------------------------------------------------------------- */
/*
  __fm_driver.h

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