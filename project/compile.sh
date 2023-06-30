#Clean
rm ./firmware/pic32MM0256GPM036_CODE.X/dist/default/production/pic32MM0256GPM036_CODE.X.production.elf
rm ./firmware/pic32MM0256GPM036_CODE.X/dist/default/production/pic32MM0256GPM036_CODE.X.production.hex
rm ./firmware/pic32MM0256GPM036_CODE.X/build/default/production/_ext/2060267189/main.o


"C:\Program Files\Microchip\xc32\v4.10\bin\xc32-gcc.exe"    -g -x c -c -mprocessor=32MM0256GPM036  -ffunction-sections -O1 -fno-common -Werror -Wall -MP -MMD -MF "./firmware/pic32MM0256GPM036_CODE.X/build/default/production/_ext/2060267189/main.o.d" -o ./firmware/pic32MM0256GPM036_CODE.X/build/default/production/_ext/2060267189/main.o ./firmware/src/main.c    -DXPRJ_default=default      -mdfp="C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC32MM-GPM-0XX_DFP/1.3.50"  
"C:\Program Files\Microchip\xc32\v4.10\bin\xc32-gcc.exe"   -mprocessor=32MM0256GPM036  -o ./firmware/pic32MM0256GPM036_CODE.X/dist/default/production/pic32MM0256GPM036_CODE.X.production.elf ./firmware/pic32MM0256GPM036_CODE.X/build/default/production/_ext/2060267189/main.o          -DXPRJ_default=default      -Wl,--defsym=__MPLAB_BUILD=1,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="./firmware/pic32MM0256GPM036_CODE.X/dist/default/production/pic32MM0256GPM036_CODE.X.production.map",--memorysummary,./firmware/pic32MM0256GPM036_CODE.X/dist/default/production/memoryfile.xml -mdfp="C:/Program Files/Microchip/MPLABX/v6.00/packs/Microchip/PIC32MM-GPM-0XX_DFP/1.3.50"
"C:\Program Files\Microchip\xc32\v4.10\bin\xc32-bin2hex" firmware/pic32MM0256GPM036_CODE.X/dist/default/production/pic32MM0256GPM036_CODE.X.production.elf 


#Loading code from //Mac/Home/Desktop/Harmony3_Project/firmware/pic32MM0256GPM036_CODE.X/dist/default/production/pic32MM0256GPM036_CODE.X.production.hex

ls ./firmware/pic32MM0256GPM036_CODE.X/build/default/production/_ext/2060267189/main.o
ls ./firmware/pic32MM0256GPM036_CODE.X/dist/default/production/pic32MM0256GPM036_CODE.X.production.elf
ls ./firmware/pic32MM0256GPM036_CODE.X/dist/default/production/pic32MM0256GPM036_CODE.X.production.hex
