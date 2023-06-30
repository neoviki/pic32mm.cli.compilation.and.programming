rm code.hex > /dev/null
cp ./firmware/pic32MM0256GPM036_CODE.X/dist/default/production/pic32MM0256GPM036_CODE.X.production.hex code.hex

'/C/Program Files/Microchip/MPLABX/v6.00/mplab_platform/mplab_ipe/ipecmd.exe' -TPPK3 -P32MM0256GPM036 -M -F"code.hex"
