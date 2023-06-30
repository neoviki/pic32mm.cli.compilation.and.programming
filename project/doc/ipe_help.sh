# Select PIC KIT 3
#./ipe.sh -TPPK3
#java -jar ipecmd.jar -TPPK3 -P18F4550 -M -Fc:/demo.hex 
#-T[PICKIT3]
#-M
#
10. Command Line Options 
-------------------------------------------------
The following commands are available in the command line interface.  

Options               Description                                      Default


-C                     Blank Check Device                                Do Not Blank Check 
 

-E                     Erase Flash Device                                Do Not Erase 


-F<file>               Hex File Selection                                None 


-G<Type><range/path>   Read functions                                    None 

                      Type F: = read into hex file, path = full  
                      file path, range is not used. 
                      Types P,E,I,C: = output read of Program, 
                      EEPROM, ID and/or Configuration 
                      Memory to the screen. P and E must be followed 
                      by an address range in the form of x-y where x 
                      is the start address and y is the end address 
                      both in hex, path is not used. 
 

-K                     Display Hex File Checksum                         Do Not Display 
 

-L                     Low voltage programming                           Not Selected 


-M<memory region>      Program Device                                    Do Not Program 

                      Memory regions: 
                      P = Program memory 
                      E = EEPROM 
                      I = ID memory 
                      C = Configuration memory 

                      If no region is entered, the entire device 
                      will be programmed. 


-N                     Vdd Min                                           Device Specific 
 

-P<part>               Part Selection. Example: 16F877                   None 


-Q                     Quiet Mode, no screen output                      Quiet mode off 
 

-S<file>               SQTP File Selection                               None 
 

-T                     Tool Selection                                    None


-V                     VPP                                               Device Specific 


-W                     Externally power target                           Power from PM3 


-X                     VDD Max                                           Device Specific 
 

-Y<memory region>      Verify Device                                     Do Not Verify 

                      P = Program memory 
                      E = EEPROM 
                      I = ID memory 
                      C = Configuration memory 

                      If no region is entered, the entire device 
                      will be verified. 


-Z                     Preserve EEData on Program                        Do Not Preserve 


-?                     Help Screen                                       Not Shown 

