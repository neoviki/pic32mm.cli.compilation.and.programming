https://github.com/PinguinoIDE/pinguino-bootloaders/blob/master/p32/usb/v1.x/IPECMD.txt

Skip to content
Product
Solutions
Open Source
Pricing
Search
Sign in
Sign up
PinguinoIDE
/
pinguino-bootloaders
Public
Code
Issues
1
Pull requests
Actions
Projects
Wiki
Security
Insights
pinguino-bootloaders/p32/usb/v1.x/IPECMD.txt

regis Fixed minor bugs
Latest commit a2e1ac8 on Feb 9, 2017
 History
 0 contributors
Executable File  433 lines (253 sloc)  13.4 KB
 

Release Notes for IPE Command Line Interface - BETA

MPLAB(R) IDE v__version__
__firmware__

__date__

-----------------------------------------------------------------------------
Table of Contents
-----------------------------------------------------------------------------
1.  Tool Definition
2.  Device Support List
3.  Operating System Support List
4.  What's New or Updated
5.  Known Problems
6.  Important Notes
7.  Upgrading the Firmware
8.  Command Line Options
9.  Exit codes
10. Troubleshooting
11. Command Line Examples
12. Customer Support

-------------------------------------------------
1. Tool Definition 
-------------------------------------------------
MPLAB IPE Command Line Interface (IPECMD) is a 32/64-bit command-line interface to the MPLAB X all in one device programmer. This interface is designed for programming devices in a production environment with limited resource PCs (Pentium or better).

The IPECMD provides:
- a common tool for all Microchip programming tools (PICkit 3, MPLAB ICD 3, REAL ICE and PM3)
- compatibility with PM3CMD, ICD3CMD, RealICECMD and PK3CMD
- support for respective features based on the programming tool selected 

Possible uses for this interface include: 

- Setting up a MPLAB PM3 for stand-alone programming 

- Updating device programmer firmware 

- SQTP programming 


This Readme is targeted to users of the command-line interface.  

-------------------------------------------------
2. Device Support List 
-------------------------------------------------
Device support is dependent on the firmware version installed in the MPLAB PM3 device programmer. Refer to the file "Readme for IPE" for the list of supported devices and what firmware files support which devices. 

When selecting a part using the "P" option (section 9), use the following: 

- PICmicro devices: drop "PIC", e.g., PIC16F877 becomes 16F877 

- dsPIC devices: drop "dsPIC", e.g., dsPIC30F6014 becomes 30F6014 

- rfPIC devices: drop "rfPIC" and appended letters, e.g., rfPIC12C509AG becomes 12C509 
 
-------------------------------------------------
3. Operating System Support List 
-------------------------------------------------
Microsoft Windows XP Professional SP3/ Windows 7 Professional/ Windows 8 Professional: 
- Processor: 2.6 GHz Intel Pentium IV or equivalent
- Memory: 768 MB
- Disk space: 400 MB of free disk space 
Ubuntu 9.10: 
- Processor: 2.6 GHz Intel Pentium IV or equivalent
- Memory: 768 MB
- Disk space: 400 MB of free disk space
Macintosh OS X 10.5 Intel: 
- Processor: Dual-Core Intel (32 or 64-bit)
- Memory: 768 MB
- Disk space: 400 MB of free disk space 


-------------------------------------------------
4. What's New or Updated 
-------------------------------------------------


-------------------------------------------------
5. Known Issues 
-------------------------------------------------


-------------------------------------------------
6. Important Notes 
-------------------------------------------------


-------------------------------------------------
7. Socket Support 
-------------------------------------------------
Refer to the Development Tools Selector (DTS) located at:
www.microchip.com/dts  


-------------------------------------------------
8. Installation 
-------------------------------------------------

IPELibs.jar - Core Library functionalities (C:\Program Files\Microchip\MPLABX\mplab_ide\bin\lib) 

IPECMD.jar - Command line utility classes (C:\Program Files\Microchip\MPLABX\mplab_ide\bin\) 


-------------------------------------------------
9. Upgrading the MPLAB PM3 Operating System 
-------------------------------------------------
If MPLAB PM3 did not recognize your socket module (i.e.,
socket not supported), you may need to update the firmware.
Upgrade the PM3 with the latest operating system that comes with the 
MPLAB X IDE. The upgrade should happen automatically, but can be
manually downloaded. 

-------------------------------------------------
10. Command Line Options 
-------------------------------------------------
The following commands are available in the command line interface.  

Options               Description                                      Default


C                     Blank Check Device                                Do Not Blank Check 
 

E                     Erase Flash Device                                Do Not Erase 


F<file>               Hex File Selection                                None 


G<Type><range/path>   Read functions                                    None 

                      Type F: = read into hex file, path = full  
                      file path, range is not used. 
                      Types P,E,I,C: = output read of Program, 
                      EEPROM, ID and/or Configuration 
                      Memory to the screen. P and E must be followed 
                      by an address range in the form of x-y where x 
                      is the start address and y is the end address 
                      both in hex, path is not used. 
 

K                     Display Hex File Checksum                         Do Not Display 
 

L                     Low voltage programming                           Not Selected 


M<memory region>      Program Device                                    Do Not Program 

                      Memory regions: 
                      P = Program memory 
                      E = EEPROM 
                      I = ID memory 
                      C = Configuration memory 

                      If no region is entered, the entire device 
                      will be programmed. 


N                     Vdd Min                                           Device Specific 
 

P<part>               Part Selection. Example: 16F877                   None 


Q                     Quiet Mode, no screen output                      Quiet mode off 
 

S<file>               SQTP File Selection                               None 
 

T                     Tool Selection                                    None


V                     VPP                                               Device Specific 


W                     Externally power target                           Power from PM3 


X                     VDD Max                                           Device Specific 
 

Y<memory region>      Verify Device                                     Do Not Verify 

                      P = Program memory 
                      E = EEPROM 
                      I = ID memory 
                      C = Configuration memory 

                      If no region is entered, the entire device 
                      will be verified. 


Z                     Preserve EEData on Program                        Do Not Preserve 


?                     Help Screen                                       Not Shown 

 
--------------------------------
IMPORTANT NOTE:

IPECMD.jar is written in Java, so you will need JRE to run your script. For IPECMD.jar, this is JDK 6u22 from Oracle.
By default JRE will be distributed with MPLAB X installation, you can set the environment path using $MPAB-X Installation Dir\sys\java\jrex.xx\bin  
 
- Each option must be immediately preceded by a switch, which can be either a dash <-> or a slash </> and options must be separated by a single space. 
(Example: java -jar ipecmd.jar /P16F877 /Fc:\mycode.hex /M or PM3CMD -1 -P16F877 -Fc:\mycode.hex -M) 

- Commands and their parameters are not case sensitive.
 
- Commands will be processed according to command order of precedence, not the order in which they appear on the command line.
 
- The program will return an exit code upon completion which will indicate either successful completion, or describe the reason for failure.
 
--------------------------------
USING MULTIPLE TOOLS: 

Integrated Programming Environment Command line application supports all Tools includes REALICE, ICD3, PM3, PICKIT3 and PKOB. Each tool can be identified with short name of the tool or using serial no if more than one tool is connected. 


Tool Name          Short Name 

PICkit 3             PK3 

MPLAB REAL ICE       RICE 

MPLAB ICD 3          ICD3 

MPLAB PM3            PM3 (Default Tool is PM3) 

PICkit On Board      PKOB 


How to select the tool using short name? 

Use -TP to select programming tool 

Example: -TPPK3 or -TPRICE or -TPICD3 

 
How to select the tool using Serial No? 

Use -TS to select programming tool 

Example: -TSBUR1234567 

--------------------------------
FAQ: 

How to show the list all tools connected to the System? 

-T (Display all the tools currently connected to system) 

Available Tool List:

1 PKOB S.No : 000000000003 

2 ICD 3 S.No : JIT102832586 

3 PICkit3 S.No : BUR120299953 

 
How to program using Pickit 3? 

x:/>java -jar ipecmd.jar -TPPK3 -P18F4550 -M -Fc:/demo.hex 

 
What happens if more than one Pickit 3 connected? 

IPECMD will prompt for tool selection, 

Example: 

Available Tool List 

1 ICD 3 S.No : JIT102832586 

2 PICkit3 S.No : BUR112281031 

3 PICkit3 S.No : BUR120299953 

More than one PK3 is connected... 

Please enter your choice: 3 


How to program the target with different tools? 

-P24FJ256GB106 -TPPK3 -M -Fe:/pic24.hex - (Program using Pickit-3) 

-P24FJ256GB106 -TPPKOB -M -Fe:/pic24.hex - (Program using PKOB) 

-P24FJ256GB106 -M -Fe:/pic24.hex - (Program using PM3) PM3-Default Tool 

 

How to read the target with Pickit 3? 

-P24FJ256GB106 -TPPK3 -GFe:/pic24.hex - (Read using PK3 and exports the file) 

 

How to erase the target? 

-P24FJ256GB106 -TPPK3 -E - (Erase using PK3) 

 

How to verify the target? 

-P24FJ256GB106 -TPPK3 -Y - (Verify using PK3) 

 

How to use tool switch? 

-T - List all the tools currently connected to the system 

-TP - TP Indicates Programmer Selection 

-TPRICE - Selected Programmer is REAL ICE 

-TPPK3 - Selected Programmer is PICKIT 3 

-TPICD3 - Selected Programmer is ICD3 

-TPPKOB - Selected Programmer is PKOB 

-TSBUR10234534 - TS Indicates Programmer Selection using Serial No 

 

How to enable quiet mode? 

-Q - No output will be displayed in command prompt 

 

How to select the part name? 

-P 24FJ128GB106 - Should be short name

 

How to get the checksum? 

-P24FJ256GB106 -K -Fe:/pic24.hex - Shows Checksum value on screen based on the imported hex file.
Refer to MPLAB X IDE readme for more information on checksums. 

----------------------------------------------------------------------------
12. Customer Support
----------------------------------------------------------------------------
The Microchip Web Site
----------------------

Microchip provides online support via our web site at www.microchip.com.
This web site is used as a means to make files and information easily
available to customers. Accessible by using your favorite Internet browser,
the web site contains the following information:

* Product Support - Data sheets and errata, application notes and sample
  programs, design resources, user's guides and hardware support documents,
  latest software releases and archived software

* General Technical Support - Frequently Asked Questions (FAQs), technical
  support requests, online discussion groups, Microchip consultant program
  member listing

* Business of Microchip - Product selector and ordering guides, latest
  Microchip press releases, listing of seminars and events, listings of
  Microchip sales offices, distributors and factory representatives

myMICROCHIP Personalized Notification Service
---------------------------------------------

Microchip's personal notification service helps keep customers current on
their Microchip products of interest. Subscribers will receive e-mail 
notification whenever there are changes, updates, revisions or errata related
to a specified product family or development tool.

Please visit http://www.microchip.com/pcn to begin the registration process 
and select your preferences to receive personalized notifications. A FAQ and registration details are available on the page, which can be opened by 
selecting the link above.

When you are selecting your preferences, choosing Development Systems will populate the list with available development tools. The main categories of 
tools are listed below:

The MPLAB X IDE is a single, unified graphical user
interface for Microchip and third-party software, and
hardware development tool that runs on Windows(R),
Linux and Mac OS(R) X. Based on the NetBeans IDE,
MPLAB X IDE is an entirely new IDE with a host of free
software components and plug-ins for highperformance
application development and debugging.

Compilers - These include all MPLAB XC compilers; all MPLAB assemblers 
(including MPASM(TM) assembler); all MPLAB linkers (including MPLINK(TM) object 
linker); and all MPLAB librarians (including MPLIB(TM) object librarian).

Simulators - MPLAB X SIM Software Simulator

Emulators - The MPLAB REAL ICE(TM) emulator

In-Circuit Debuggers - These include the MPLAB ICD 3 and PICkit(TM) 3.

Programmers - These include the MPLAB PM3, MPLAB ICD 3 and PICkit 3.


Starter/Demo Boards - These include MPLAB Starter Kit boards,
PICDEM demo boards, and various other evaluation boards.

Additional Support
------------------

Users of Microchip products can receive assistance through several
channels:

* Distributor or Representative
* Local Sales Office
* Field Application Engineer (FAE)
* Technical Support

Customers should contact their distributor, representative or field
application engineer (FAE) for support. Local sales offices are also
available to help customers. A listing of sales offices and locations
is available on our website.

Technical support is available through the web site at:
http://support.microchip.com

Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About

