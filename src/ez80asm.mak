SHELL = cmd.exe

#
# ZDS II Make File - ez80asm project, Debug configuration
#
# Generated by: ZDS II - eZ80Acclaim! 5.3.5 (Build 23020901)
#   IDE component: d:5.3.0:23020901
#   Install Path: C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.5\
#

RM = del

# ZDS base directory
ZDSDIR = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.5
ZDSDIR_ESCSPACE = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.5

# ZDS bin directory
BIN = $(ZDSDIR)\bin

# ZDS include base directory
INCLUDE = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.5\include
INCLUDE_ESCSPACE = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.5\include

# ZTP base directory
ZTPDIR = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.5\ZTP2.5.1
ZTPDIR_ESCSPACE = C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.5\ZTP2.5.1

# project directory
PRJDIR = C:\source\agon-ez80asm\src
PRJDIR_ESCSPACE = C:\source\agon-ez80asm\src

# intermediate files directory
WORKDIR = C:\source\agon-ez80asm\src\Debug
WORKDIR_ESCSPACE = C:\source\agon-ez80asm\src\Debug

# output files directory
OUTDIR = C:\source\agon-ez80asm\src\Debug\
OUTDIR_ESCSPACE = C:\source\agon-ez80asm\src\Debug\

# tools
CC = @"$(BIN)\eZ80cc"
AS = @"$(BIN)\eZ80asm"
LD = @"$(BIN)\eZ80link"
AR = @"$(BIN)\eZ80lib"
WEBTOC = @"$(BIN)\mkwebpage"

CFLAGS =  \
-define:_DEBUG -define:_EZ80F92 -define:_EZ80ACCLAIM! -genprintf  \
-keepasm -keeplst -NOlist -NOlistinc -NOmodsect -optspeed  \
-promote -NOreduceopt  \
-stdinc:"\"..;C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.5\include\std;C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.5\include\zilog\""  \
-usrinc:"\"..;\"" -NOmultithread -NOpadbranch -NOdebug  \
-cpu:eZ80F92  \
-asmsw:"   \
	-define:_EZ80ACCLAIM!=1  \
	-include:\"..;C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.5\include\std;C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.5\include\zilog\"  \
	-list -NOlistmac -pagelen:0 -pagewidth:80 -quiet -sdiopt -warn  \
	-NOdebug -NOigcase -cpu:eZ80F92"

ASFLAGS =  \
-define:_EZ80ACCLAIM!=1  \
-include:"\"..;C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.5\include\std;C:\ZiLOG\ZDSII_eZ80Acclaim!_5.3.5\include\zilog\""  \
-list -NOlistmac -name -pagelen:0 -pagewidth:80 -quiet -sdiopt  \
-warn -NOdebug -NOigcase -cpu:eZ80F92

LDFLAGS = @..\ez80asm.linkcmd
build: ez80asm relist

buildall: clean ez80asm relist

relink: deltarget ez80asm

deltarget: 
	@if exist "$(WORKDIR)\ez80asm.lod"  \
            $(RM) "$(WORKDIR)\ez80asm.lod"
	@if exist "$(WORKDIR)\ez80asm.hex"  \
            $(RM) "$(WORKDIR)\ez80asm.hex"
	@if exist "$(WORKDIR)\ez80asm.map"  \
            $(RM) "$(WORKDIR)\ez80asm.map"

clean: 
	@if exist "$(WORKDIR)\ez80asm.lod"  \
            $(RM) "$(WORKDIR)\ez80asm.lod"
	@if exist "$(WORKDIR)\ez80asm.hex"  \
            $(RM) "$(WORKDIR)\ez80asm.hex"
	@if exist "$(WORKDIR)\ez80asm.map"  \
            $(RM) "$(WORKDIR)\ez80asm.map"
	@if exist "$(WORKDIR)\init.obj"  \
            $(RM) "$(WORKDIR)\init.obj"
	@if exist "$(WORKDIR)\init.lis"  \
            $(RM) "$(WORKDIR)\init.lis"
	@if exist "$(WORKDIR)\init.lst"  \
            $(RM) "$(WORKDIR)\init.lst"
	@if exist "$(WORKDIR)\main.obj"  \
            $(RM) "$(WORKDIR)\main.obj"
	@if exist "$(WORKDIR)\main.lis"  \
            $(RM) "$(WORKDIR)\main.lis"
	@if exist "$(WORKDIR)\main.lst"  \
            $(RM) "$(WORKDIR)\main.lst"
	@if exist "$(WORKDIR)\main.src"  \
            $(RM) "$(WORKDIR)\main.src"
	@if exist "$(WORKDIR)\mos-interface.obj"  \
            $(RM) "$(WORKDIR)\mos-interface.obj"
	@if exist "$(WORKDIR)\mos-interface.lis"  \
            $(RM) "$(WORKDIR)\mos-interface.lis"
	@if exist "$(WORKDIR)\mos-interface.lst"  \
            $(RM) "$(WORKDIR)\mos-interface.lst"
	@if exist "$(WORKDIR)\vdp.obj"  \
            $(RM) "$(WORKDIR)\vdp.obj"
	@if exist "$(WORKDIR)\vdp.lis"  \
            $(RM) "$(WORKDIR)\vdp.lis"
	@if exist "$(WORKDIR)\vdp.lst"  \
            $(RM) "$(WORKDIR)\vdp.lst"
	@if exist "$(WORKDIR)\vdp.src"  \
            $(RM) "$(WORKDIR)\vdp.src"
	@if exist "$(WORKDIR)\assemble.obj"  \
            $(RM) "$(WORKDIR)\assemble.obj"
	@if exist "$(WORKDIR)\assemble.lis"  \
            $(RM) "$(WORKDIR)\assemble.lis"
	@if exist "$(WORKDIR)\assemble.lst"  \
            $(RM) "$(WORKDIR)\assemble.lst"
	@if exist "$(WORKDIR)\assemble.src"  \
            $(RM) "$(WORKDIR)\assemble.src"
	@if exist "$(WORKDIR)\filestack.obj"  \
            $(RM) "$(WORKDIR)\filestack.obj"
	@if exist "$(WORKDIR)\filestack.lis"  \
            $(RM) "$(WORKDIR)\filestack.lis"
	@if exist "$(WORKDIR)\filestack.lst"  \
            $(RM) "$(WORKDIR)\filestack.lst"
	@if exist "$(WORKDIR)\filestack.src"  \
            $(RM) "$(WORKDIR)\filestack.src"
	@if exist "$(WORKDIR)\globals.obj"  \
            $(RM) "$(WORKDIR)\globals.obj"
	@if exist "$(WORKDIR)\globals.lis"  \
            $(RM) "$(WORKDIR)\globals.lis"
	@if exist "$(WORKDIR)\globals.lst"  \
            $(RM) "$(WORKDIR)\globals.lst"
	@if exist "$(WORKDIR)\globals.src"  \
            $(RM) "$(WORKDIR)\globals.src"
	@if exist "$(WORKDIR)\hash.obj"  \
            $(RM) "$(WORKDIR)\hash.obj"
	@if exist "$(WORKDIR)\hash.lis"  \
            $(RM) "$(WORKDIR)\hash.lis"
	@if exist "$(WORKDIR)\hash.lst"  \
            $(RM) "$(WORKDIR)\hash.lst"
	@if exist "$(WORKDIR)\hash.src"  \
            $(RM) "$(WORKDIR)\hash.src"
	@if exist "$(WORKDIR)\instruction.obj"  \
            $(RM) "$(WORKDIR)\instruction.obj"
	@if exist "$(WORKDIR)\instruction.lis"  \
            $(RM) "$(WORKDIR)\instruction.lis"
	@if exist "$(WORKDIR)\instruction.lst"  \
            $(RM) "$(WORKDIR)\instruction.lst"
	@if exist "$(WORKDIR)\instruction.src"  \
            $(RM) "$(WORKDIR)\instruction.src"
	@if exist "$(WORKDIR)\label.obj"  \
            $(RM) "$(WORKDIR)\label.obj"
	@if exist "$(WORKDIR)\label.lis"  \
            $(RM) "$(WORKDIR)\label.lis"
	@if exist "$(WORKDIR)\label.lst"  \
            $(RM) "$(WORKDIR)\label.lst"
	@if exist "$(WORKDIR)\label.src"  \
            $(RM) "$(WORKDIR)\label.src"
	@if exist "$(WORKDIR)\listing.obj"  \
            $(RM) "$(WORKDIR)\listing.obj"
	@if exist "$(WORKDIR)\listing.lis"  \
            $(RM) "$(WORKDIR)\listing.lis"
	@if exist "$(WORKDIR)\listing.lst"  \
            $(RM) "$(WORKDIR)\listing.lst"
	@if exist "$(WORKDIR)\listing.src"  \
            $(RM) "$(WORKDIR)\listing.src"
	@if exist "$(WORKDIR)\str2num.obj"  \
            $(RM) "$(WORKDIR)\str2num.obj"
	@if exist "$(WORKDIR)\str2num.lis"  \
            $(RM) "$(WORKDIR)\str2num.lis"
	@if exist "$(WORKDIR)\str2num.lst"  \
            $(RM) "$(WORKDIR)\str2num.lst"
	@if exist "$(WORKDIR)\str2num.src"  \
            $(RM) "$(WORKDIR)\str2num.src"
	@if exist "$(WORKDIR)\utils.obj"  \
            $(RM) "$(WORKDIR)\utils.obj"
	@if exist "$(WORKDIR)\utils.lis"  \
            $(RM) "$(WORKDIR)\utils.lis"
	@if exist "$(WORKDIR)\utils.lst"  \
            $(RM) "$(WORKDIR)\utils.lst"
	@if exist "$(WORKDIR)\utils.src"  \
            $(RM) "$(WORKDIR)\utils.src"
	@if exist "$(WORKDIR)\macro.obj"  \
            $(RM) "$(WORKDIR)\macro.obj"
	@if exist "$(WORKDIR)\macro.lis"  \
            $(RM) "$(WORKDIR)\macro.lis"
	@if exist "$(WORKDIR)\macro.lst"  \
            $(RM) "$(WORKDIR)\macro.lst"
	@if exist "$(WORKDIR)\macro.src"  \
            $(RM) "$(WORKDIR)\macro.src"
	@if exist "$(WORKDIR)\mos_posix.obj"  \
            $(RM) "$(WORKDIR)\mos_posix.obj"
	@if exist "$(WORKDIR)\mos_posix.lis"  \
            $(RM) "$(WORKDIR)\mos_posix.lis"
	@if exist "$(WORKDIR)\mos_posix.lst"  \
            $(RM) "$(WORKDIR)\mos_posix.lst"
	@if exist "$(WORKDIR)\mos_posix.src"  \
            $(RM) "$(WORKDIR)\mos_posix.src"
	@if exist "$(WORKDIR)\malloc.obj"  \
            $(RM) "$(WORKDIR)\malloc.obj"
	@if exist "$(WORKDIR)\malloc.lis"  \
            $(RM) "$(WORKDIR)\malloc.lis"
	@if exist "$(WORKDIR)\malloc.lst"  \
            $(RM) "$(WORKDIR)\malloc.lst"
	@if exist "$(WORKDIR)\malloc.src"  \
            $(RM) "$(WORKDIR)\malloc.src"
	@if exist "$(WORKDIR)\io.obj"  \
            $(RM) "$(WORKDIR)\io.obj"
	@if exist "$(WORKDIR)\io.lis"  \
            $(RM) "$(WORKDIR)\io.lis"
	@if exist "$(WORKDIR)\io.lst"  \
            $(RM) "$(WORKDIR)\io.lst"
	@if exist "$(WORKDIR)\io.src"  \
            $(RM) "$(WORKDIR)\io.src"
	@if exist "$(WORKDIR)\getopt.obj"  \
            $(RM) "$(WORKDIR)\getopt.obj"
	@if exist "$(WORKDIR)\getopt.lis"  \
            $(RM) "$(WORKDIR)\getopt.lis"
	@if exist "$(WORKDIR)\getopt.lst"  \
            $(RM) "$(WORKDIR)\getopt.lst"
	@if exist "$(WORKDIR)\getopt.src"  \
            $(RM) "$(WORKDIR)\getopt.src"
	@if exist "$(WORKDIR)\agontimer.obj"  \
            $(RM) "$(WORKDIR)\agontimer.obj"
	@if exist "$(WORKDIR)\agontimer.lis"  \
            $(RM) "$(WORKDIR)\agontimer.lis"
	@if exist "$(WORKDIR)\agontimer.lst"  \
            $(RM) "$(WORKDIR)\agontimer.lst"
	@if exist "$(WORKDIR)\agontimer.src"  \
            $(RM) "$(WORKDIR)\agontimer.src"
	@if exist "$(WORKDIR)\agontimer-timer0.obj"  \
            $(RM) "$(WORKDIR)\agontimer-timer0.obj"
	@if exist "$(WORKDIR)\agontimer-timer0.lis"  \
            $(RM) "$(WORKDIR)\agontimer-timer0.lis"
	@if exist "$(WORKDIR)\agontimer-timer0.lst"  \
            $(RM) "$(WORKDIR)\agontimer-timer0.lst"
	@if exist "$(WORKDIR)\clock.obj"  \
            $(RM) "$(WORKDIR)\clock.obj"
	@if exist "$(WORKDIR)\clock.lis"  \
            $(RM) "$(WORKDIR)\clock.lis"
	@if exist "$(WORKDIR)\clock.lst"  \
            $(RM) "$(WORKDIR)\clock.lst"
	@if exist "$(WORKDIR)\clock.src"  \
            $(RM) "$(WORKDIR)\clock.src"

relist: 
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\init.asm
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\main.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\mos-interface.asm
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\vdp.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\assemble.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\filestack.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\globals.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\hash.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\instruction.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\label.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\listing.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\str2num.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\utils.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\macro.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\mos_posix.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\malloc.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\io.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\getopt.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\agontimer.src
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\agontimer-timer0.asm
	$(AS) $(ASFLAGS) -relist:"C:\source\agon-ez80asm\src\Debug\ez80asm.map" \
            C:\source\agon-ez80asm\src\Debug\clock.src

# pre-4.11.0 compatibility
rebuildall: buildall 

LIBS = 

OBJS =  \
            $(WORKDIR_ESCSPACE)\init.obj  \
            $(WORKDIR_ESCSPACE)\main.obj  \
            $(WORKDIR_ESCSPACE)\mos-interface.obj  \
            $(WORKDIR_ESCSPACE)\vdp.obj  \
            $(WORKDIR_ESCSPACE)\assemble.obj  \
            $(WORKDIR_ESCSPACE)\filestack.obj  \
            $(WORKDIR_ESCSPACE)\globals.obj  \
            $(WORKDIR_ESCSPACE)\hash.obj  \
            $(WORKDIR_ESCSPACE)\instruction.obj  \
            $(WORKDIR_ESCSPACE)\label.obj  \
            $(WORKDIR_ESCSPACE)\listing.obj  \
            $(WORKDIR_ESCSPACE)\str2num.obj  \
            $(WORKDIR_ESCSPACE)\utils.obj  \
            $(WORKDIR_ESCSPACE)\macro.obj  \
            $(WORKDIR_ESCSPACE)\mos_posix.obj  \
            $(WORKDIR_ESCSPACE)\malloc.obj  \
            $(WORKDIR_ESCSPACE)\io.obj  \
            $(WORKDIR_ESCSPACE)\getopt.obj  \
            $(WORKDIR_ESCSPACE)\agontimer.obj  \
            $(WORKDIR_ESCSPACE)\agontimer-timer0.obj  \
            $(WORKDIR_ESCSPACE)\clock.obj

ez80asm: $(OBJS)
	 $(LD) $(LDFLAGS)

$(WORKDIR_ESCSPACE)\init.obj :  \
            $(PRJDIR_ESCSPACE)\init.asm
	 $(AS) $(ASFLAGS) "$(PRJDIR)\init.asm"

$(WORKDIR_ESCSPACE)\main.obj :  \
            $(PRJDIR_ESCSPACE)\main.c  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(INCLUDE_ESCSPACE)\std\Stdlib.h  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(PRJDIR_ESCSPACE)\agontimer.h  \
            $(PRJDIR_ESCSPACE)\assemble.h  \
            $(PRJDIR_ESCSPACE)\clock.h  \
            $(PRJDIR_ESCSPACE)\config.h  \
            $(PRJDIR_ESCSPACE)\getopt.h  \
            $(PRJDIR_ESCSPACE)\globals.h  \
            $(PRJDIR_ESCSPACE)\instruction.h  \
            $(PRJDIR_ESCSPACE)\io.h  \
            $(PRJDIR_ESCSPACE)\label.h  \
            $(PRJDIR_ESCSPACE)\macro.h  \
            $(PRJDIR_ESCSPACE)\malloc.h  \
            $(PRJDIR_ESCSPACE)\mos-interface.h  \
            $(PRJDIR_ESCSPACE)\mos_posix.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(PRJDIR_ESCSPACE)\str2num.h  \
            $(PRJDIR_ESCSPACE)\utils.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\main.c"

$(WORKDIR_ESCSPACE)\mos-interface.obj :  \
            $(PRJDIR_ESCSPACE)\mos-interface.asm  \
            $(PRJDIR_ESCSPACE)\mos_api.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\mos-interface.asm"

$(WORKDIR_ESCSPACE)\vdp.obj :  \
            $(PRJDIR_ESCSPACE)\vdp.c  \
            $(INCLUDE_ESCSPACE)\zilog\defines.h  \
            $(PRJDIR_ESCSPACE)\mos-interface.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(PRJDIR_ESCSPACE)\vdp.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\vdp.c"

$(WORKDIR_ESCSPACE)\assemble.obj :  \
            $(PRJDIR_ESCSPACE)\assemble.c  \
            $(INCLUDE_ESCSPACE)\std\CTYPE.H  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdarg.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(INCLUDE_ESCSPACE)\std\Stdlib.h  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(PRJDIR_ESCSPACE)\assemble.h  \
            $(PRJDIR_ESCSPACE)\config.h  \
            $(PRJDIR_ESCSPACE)\filestack.h  \
            $(PRJDIR_ESCSPACE)\globals.h  \
            $(PRJDIR_ESCSPACE)\instruction.h  \
            $(PRJDIR_ESCSPACE)\io.h  \
            $(PRJDIR_ESCSPACE)\label.h  \
            $(PRJDIR_ESCSPACE)\listing.h  \
            $(PRJDIR_ESCSPACE)\macro.h  \
            $(PRJDIR_ESCSPACE)\malloc.h  \
            $(PRJDIR_ESCSPACE)\mos-interface.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(PRJDIR_ESCSPACE)\str2num.h  \
            $(PRJDIR_ESCSPACE)\utils.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\assemble.c"

$(WORKDIR_ESCSPACE)\filestack.obj :  \
            $(PRJDIR_ESCSPACE)\filestack.c  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(PRJDIR_ESCSPACE)\config.h  \
            $(PRJDIR_ESCSPACE)\filestack.h  \
            $(PRJDIR_ESCSPACE)\globals.h  \
            $(PRJDIR_ESCSPACE)\macro.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(PRJDIR_ESCSPACE)\utils.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\filestack.c"

$(WORKDIR_ESCSPACE)\globals.obj :  \
            $(PRJDIR_ESCSPACE)\globals.c  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(PRJDIR_ESCSPACE)\config.h  \
            $(PRJDIR_ESCSPACE)\globals.h  \
            $(PRJDIR_ESCSPACE)\macro.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(PRJDIR_ESCSPACE)\utils.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\globals.c"

$(WORKDIR_ESCSPACE)\hash.obj :  \
            $(PRJDIR_ESCSPACE)\hash.c  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(PRJDIR_ESCSPACE)\hash.h  \
            $(PRJDIR_ESCSPACE)\stdint.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\hash.c"

$(WORKDIR_ESCSPACE)\instruction.obj :  \
            $(PRJDIR_ESCSPACE)\instruction.c  \
            $(INCLUDE_ESCSPACE)\std\CTYPE.H  \
            $(INCLUDE_ESCSPACE)\std\Stdlib.h  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(PRJDIR_ESCSPACE)\assemble.h  \
            $(PRJDIR_ESCSPACE)\config.h  \
            $(PRJDIR_ESCSPACE)\globals.h  \
            $(PRJDIR_ESCSPACE)\instruction.h  \
            $(PRJDIR_ESCSPACE)\label.h  \
            $(PRJDIR_ESCSPACE)\macro.h  \
            $(PRJDIR_ESCSPACE)\malloc.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(PRJDIR_ESCSPACE)\utils.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\instruction.c"

$(WORKDIR_ESCSPACE)\label.obj :  \
            $(PRJDIR_ESCSPACE)\label.c  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(PRJDIR_ESCSPACE)\config.h  \
            $(PRJDIR_ESCSPACE)\filestack.h  \
            $(PRJDIR_ESCSPACE)\globals.h  \
            $(PRJDIR_ESCSPACE)\hash.h  \
            $(PRJDIR_ESCSPACE)\io.h  \
            $(PRJDIR_ESCSPACE)\label.h  \
            $(PRJDIR_ESCSPACE)\macro.h  \
            $(PRJDIR_ESCSPACE)\malloc.h  \
            $(PRJDIR_ESCSPACE)\mos-interface.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(PRJDIR_ESCSPACE)\str2num.h  \
            $(PRJDIR_ESCSPACE)\utils.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\label.c"

$(WORKDIR_ESCSPACE)\listing.obj :  \
            $(PRJDIR_ESCSPACE)\listing.c  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(PRJDIR_ESCSPACE)\config.h  \
            $(PRJDIR_ESCSPACE)\globals.h  \
            $(PRJDIR_ESCSPACE)\io.h  \
            $(PRJDIR_ESCSPACE)\listing.h  \
            $(PRJDIR_ESCSPACE)\macro.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(PRJDIR_ESCSPACE)\utils.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\listing.c"

$(WORKDIR_ESCSPACE)\str2num.obj :  \
            $(PRJDIR_ESCSPACE)\str2num.c  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(PRJDIR_ESCSPACE)\config.h  \
            $(PRJDIR_ESCSPACE)\globals.h  \
            $(PRJDIR_ESCSPACE)\macro.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(PRJDIR_ESCSPACE)\str2num.h  \
            $(PRJDIR_ESCSPACE)\utils.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\str2num.c"

$(WORKDIR_ESCSPACE)\utils.obj :  \
            $(PRJDIR_ESCSPACE)\utils.c  \
            $(INCLUDE_ESCSPACE)\std\CTYPE.H  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(INCLUDE_ESCSPACE)\zilog\defines.h  \
            $(PRJDIR_ESCSPACE)\config.h  \
            $(PRJDIR_ESCSPACE)\globals.h  \
            $(PRJDIR_ESCSPACE)\instruction.h  \
            $(PRJDIR_ESCSPACE)\io.h  \
            $(PRJDIR_ESCSPACE)\label.h  \
            $(PRJDIR_ESCSPACE)\macro.h  \
            $(PRJDIR_ESCSPACE)\malloc.h  \
            $(PRJDIR_ESCSPACE)\mos-interface.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(PRJDIR_ESCSPACE)\str2num.h  \
            $(PRJDIR_ESCSPACE)\utils.h  \
            $(PRJDIR_ESCSPACE)\vdp.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\utils.c"

$(WORKDIR_ESCSPACE)\macro.obj :  \
            $(PRJDIR_ESCSPACE)\macro.c  \
            $(PRJDIR_ESCSPACE)\config.h  \
            $(PRJDIR_ESCSPACE)\globals.h  \
            $(PRJDIR_ESCSPACE)\macro.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(PRJDIR_ESCSPACE)\utils.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\macro.c"

$(WORKDIR_ESCSPACE)\mos_posix.obj :  \
            $(PRJDIR_ESCSPACE)\mos_posix.c  \
            $(INCLUDE_ESCSPACE)\std\CTYPE.H  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(PRJDIR_ESCSPACE)\mos-interface.h  \
            $(PRJDIR_ESCSPACE)\mos_posix.h  \
            $(PRJDIR_ESCSPACE)\stdint.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\mos_posix.c"

$(WORKDIR_ESCSPACE)\malloc.obj :  \
            $(PRJDIR_ESCSPACE)\malloc.c  \
            $(PRJDIR_ESCSPACE)\config.h  \
            $(PRJDIR_ESCSPACE)\malloc.h  \
            $(PRJDIR_ESCSPACE)\stdint.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\malloc.c"

$(WORKDIR_ESCSPACE)\io.obj :  \
            $(PRJDIR_ESCSPACE)\io.c  \
            $(INCLUDE_ESCSPACE)\std\CTYPE.H  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(PRJDIR_ESCSPACE)\config.h  \
            $(PRJDIR_ESCSPACE)\filestack.h  \
            $(PRJDIR_ESCSPACE)\globals.h  \
            $(PRJDIR_ESCSPACE)\io.h  \
            $(PRJDIR_ESCSPACE)\listing.h  \
            $(PRJDIR_ESCSPACE)\macro.h  \
            $(PRJDIR_ESCSPACE)\mos-interface.h  \
            $(PRJDIR_ESCSPACE)\stdint.h  \
            $(PRJDIR_ESCSPACE)\utils.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\io.c"

$(WORKDIR_ESCSPACE)\getopt.obj :  \
            $(PRJDIR_ESCSPACE)\getopt.c  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(INCLUDE_ESCSPACE)\std\String.h  \
            $(PRJDIR_ESCSPACE)\getopt.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\getopt.c"

$(WORKDIR_ESCSPACE)\agontimer.obj :  \
            $(PRJDIR_ESCSPACE)\agontimer.c  \
            $(INCLUDE_ESCSPACE)\zilog\cio.h  \
            $(INCLUDE_ESCSPACE)\zilog\defines.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80190.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F91.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F92.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80F93.h  \
            $(INCLUDE_ESCSPACE)\zilog\eZ80L92.h  \
            $(INCLUDE_ESCSPACE)\zilog\ez80.h  \
            $(INCLUDE_ESCSPACE)\zilog\gpio.h  \
            $(INCLUDE_ESCSPACE)\zilog\uart.h  \
            $(INCLUDE_ESCSPACE)\zilog\uartdefs.h  \
            $(PRJDIR_ESCSPACE)\agontimer.h  \
            $(PRJDIR_ESCSPACE)\config.h  \
            $(PRJDIR_ESCSPACE)\mos-interface.h  \
            $(PRJDIR_ESCSPACE)\stdint.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\agontimer.c"

$(WORKDIR_ESCSPACE)\agontimer-timer0.obj :  \
            $(PRJDIR_ESCSPACE)\agontimer-timer0.asm  \
            $(INCLUDE_ESCSPACE)\zilog\ez80F92.inc
	 $(AS) $(ASFLAGS) "$(PRJDIR)\agontimer-timer0.asm"

$(WORKDIR_ESCSPACE)\clock.obj :  \
            $(PRJDIR_ESCSPACE)\clock.c  \
            $(INCLUDE_ESCSPACE)\std\Format.h  \
            $(INCLUDE_ESCSPACE)\std\Stdio.h  \
            $(PRJDIR_ESCSPACE)\config.h
	 $(CC) $(CFLAGS) "$(PRJDIR)\clock.c"

