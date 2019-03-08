![MikroE](http://www.mikroe.com/img/designs/beta/logo_small.png)

---

# FM Click

---

- **CIC Prefix**  : FM
- **Author**      : Aleksandar Paunovic
- **Verison**     : 1.0.0
- **Date**        : Nov 2018.

---

### Software Support

We provide a library for the FM Click on our [LibStock](https://libstock.mikroe.com/projects/view/673/fm-click) 
page, as well as a demo application (example), developed using MikroElektronika 
[compilers](http://shop.mikroe.com/compilers). The demo can run on all the main 
MikroElektronika [development boards](http://shop.mikroe.com/development-boards).

**Library Description**

 Library contains functions for reading from and writing to device registers via i2c. As well as function for setting specific register bits using predefined constants with _FM - prefix.
 Library contains functions for enabling/disabling device's built in functionalities such as: seek, tune, fine tune up/down, mute, volume up/down.
 Library containg functions for setting: seek threshold, volume, snr threshold, impulse detection threshold, basic settings(EUROPE).
 Library contains functions for powering up and powering down device and functions that return state of AN and INT pins.
 Library contains functions that return value of: channel, channel frequency, rssi and errors of blocks; A, B, C, D.

Key functions :

- ``` void fm_readRegisters( uint16_t *registerBuffer ); ``` - reads all device registers and sorts them into registerBuffer[16]
- ``` void fm_setBits( uint16_t *registerBuffer, uint16_t registerAddress, uint16_t bitsMask, uint16_t bitsValue ); ``` - sets bits in registerBuffer[16] to desired value
- ``` void fm_writeRegisters( uint16_t *registerBuffer ); ``` - writes all device registers from registerBuffer[16] 

**Examples Description**

The application is composed of three sections :

- System Initialization - Initializing AN pin as input, RST pin as output, CS pin as output and INT pin as input, initializing I2C and LOG functionalities
- Application Initialization - Initializing I2C driver, powering up device, setting basic settings for Europe, setting values of seek threshold, volume,
  snr threshold and impulse detection threshold
- Application Task - Waits for valid user input and executes functions based on set of valid commands


```.c
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

```

**Additional Functions**

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

The full application code, and ready to use projects can be found on our 
[LibStock](https://libstock.mikroe.com/projects/view/673/fm-click) page.

Other mikroE Libraries used in the example:

- I2C
- Conversions
- UART

**Additional notes and informations**

Depending on the development board you are using, you may need 
[USB UART click](http://shop.mikroe.com/usb-uart-click), 
[USB UART 2 Click](http://shop.mikroe.com/usb-uart-2-click) or 
[RS232 Click](http://shop.mikroe.com/rs232-click) to connect to your PC, for 
development systems with no UART to USB interface available on the board. The 
terminal available in all Mikroelektronika 
[compilers](http://shop.mikroe.com/compilers), or any other terminal application 
of your choice, can be used to read the message.

---
---
