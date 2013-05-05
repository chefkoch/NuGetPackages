BASS_WADSP 2.4.1.0

Files that you should have found in the BASS_WADSP package
==========================================================
readme.txt        General information (this file)
bass_wadsp.txt    BASS_WADSP help file :-)
bass_wadsp.dll    BASS_WADSP dynamic link library
c\
  BASS_WADSP.H     BASS_WADSP C/C++ header file
  BASS_WADSP.LIB   BASS_WADSP import library
delphi\
  bass_wadsp.pas  BASS_WADSP Delphi unit
vb\
  bass_wadsp.bas  BASS_WADSP VB module file

NOTE: The ZIP should be decompressed with the directory stucture maintained.


What is BASS_WADSP?
===================
BASS_WADSP is an extension to the BASS audio library, enabling the use
of Winamp DSP plugins.

All Winamp DSPs are supported out of the box which do return as much data as provided - 
meaning not modifying the samplerate, tempo, pitch etc.!
If you want to use Winamp plugins which do not return the same amount of bytes as provided, 
you need to add a lot functionality by yourself, e.g. implementing an intermediate ring-buffer 
between BASS and BASS_WADSP and/or sending ModifiedSamples only in a fixed packet size of 
1152 samples etc. This might be a lot of work, but is actually possible.
However, there is no guarantee, that all Winmap DSPs might really work - just try them out.

Here is a list of Winamp DSP plugins, which should work fine:
- OctiMax  (dsp_omxw.dll)
- Enhancer (dsp_enh.dll)
- RockSteady (DSP_RockSteady.dll)
- Nullsoft Signal Processing Studio (dsp_sps.dll)
- SHOUTcast Source DSP (dsp_sc.dll - needs lamedll.dll in your startup directory)
- SAM Encoders (dsp_encoders.dll)
- Sound Solution (dsp_ss.dll - needs the ssN.dat files in your startup directory)
- VST PlugIn Wrapper (dsp_vst.dll)
- EQ by Nevi (dsp_eqfir.dll)


Requirements
============
BASS 2.4 is required. BASS_WADSP.DLL will fail to load if BASS.DLL 2.4 is not present.


Using BASS_WADSP
================
To use the BASS_WADSP add-on you need to perform the following steps:
1. Call BASS_WADSP_Init at the beginning of your application after you have initialized Bass with BASS_Init
2. Call BASS_WADSP_Load - to load a Winamp DSP plugin.
3. Call BASS_WADSP_Start - to start the loaded Winamp DSP plugin.
4. Create a Bass stream...e.g. with Bass.BASS_StreamCreateFile.
5. Call BASS_WADSP_ChannelSetDSP - to set the Winamp DSP to the created stream. 
   This assigns a normal Bass DSP (like you would do with BASS_ChannelSetDSP) but now uses the Winamp DSP internally.
   You might even assign multiple Winamp DSPs to the same stream. In this case the DSPs are just executed 
   in the order to their priority - like in Bass.
6. Play the channel like normal...and at the end call BASS_WADSP_ChannelRemoveDSP 
   (if BASS_STREAM_AUTOFREE was specified at stream creation or if you call BASS_StreamFree this will be done automatically 
    and removing the DSP(s) is not even needed).
7. You might repeat with 4.
8. When a Winamp DSP is not needed anymore, call BASS_WADSP_Stop - to stop the Winamp DSP plugin and 
   call BASS_WADSP_Start to start it again.
   If you don't want the DSP anymore at all, you might also need to call BASS_WADSP_ChannelRemoveDSP in addition, if 
   you have assigned multiple DSPs to the stream in parallel.
9. Call BASS_WADSP_FreeDSP - to unload a Winamp DSP plugin and free all resources (this also stops the DSP and removes it out of memory).
10. At the end of your application make sure to call BASS_WADSP_Free - to free all resources.

NOTE 1:
Some Winamp DSPs (e.g. "PaceMaker") will fail when using them with BASS_WADSP_ChannelSetDSP.
This is because they expect exactly 1152 samples with every call to the 'ModifySsample' method.
This means, you need to implement your own buffer between BASS and BASS_WADSP resp. the Winamp DSP.
This can be done by using the BASS_WADSP_ModifySamplesSTREAM method.
However, it is up to you to implement the intermediate buffer ;-)
-> So I suggest not using those plugins, if not really needed.

NOTE 2:
BASS_WADSP_ModifySamplesDSP are there for manual treatment and writing your own
DSPPROC callbacks (in which they can be used). BASS_WADSP_ModifySamplesDSP always returns as much data as send.

NOTE 3:
BASS_WADSP_ModifySamplesSTREAM might return more or less data!
A Winamp DSP might return at max. twice the number of bytes but not less than half the number of bytes.
So make sure, that the buffer is at least twice as big as the samples it contains when you call this method!!!

NOTE 4:
The BASS .NET API contains a "WinampDSP" sample written in C# - just check it, for additional help.

NOTE 5:
Delphi and C/C++ users! You should disable floating-point exceptions in your app, since this isn't done by default.
Simply call before using/loading this library: 
Delphi: "Set8087CW($133F);"
C/C++: "_control87(-1,_MCW_EM);"
This is because some Winamp DSPs might change the FloatingPointUnit state and raise a stupid exception.

NOTE 6:
To use BASS_WADSP with Borland C++ Builder, you'll first have to create a
Borland C++ Builder import library for it. This is done by using the
IMPLIB tool that comes with Borland C++ Builder. Simply execute the following
command:
   IMPLIB BASS_WADSPBCB.LIB BASS_WADSP.DLL
Then use BASS_WADSPBCB.LIB in your projects to import BASS_WADSP.

For BASS_WADSP functions that return strings (char*), Visual Basic users should use
the VBStrFromAnsiPtr function to convert the returned pointer into a VB string.


Copyright
=========
Copyright 2005-2009 by radio42, Bernd Niedergesaess. 
All rights reserved.
All trademarks and other registered names contained in the BASS_WADSP
package are the property of their respective owners.


Disclaimer
==========
BASS_WADSP is provided "as is" and without warranties of any kind, either express
or implied. The author assumes no liability for damages, direct or consequential,
which may result from the use of BASS_WADSP.
it is not guarantee, that BASS_WADSP work stable with any Winamp DSP.

Many thanks to Ian Luck for general help and tips!


Costs
=====
The BASS_WADSP library is free to use. You may freely distribute the BASS_WADSP package
as long as no fee is charged and all the files remain intact and unmodified.



History
=======
2.4.1.0 - 2009-10-29
--------------------
- All methods now set the BASS error code.
- All previous void methods now return a BOOL value
- Delphi and VB headers adapted

2.4.0.3 - 2009-10-23
--------------------
- Bug-Fix for console application.

2.4.0.2 - 2009-05-14
--------------------
- Bug-Fix for console application.

2.4.0.1 - 2008-12-16
--------------------
- Just stability Bug-Fixes

2.4.0.0 - 2007-12-13
--------------------
- Upgraded to BASS 2.4
- BASS_WADSP_GetVersion() added.

2.3.0.0 - 2006-05-29
--------------------
- Upgraded to BASS 2.3

2.2.0.5 - 2006-01-30
--------------------
- BASS_WADSP_SetSongTitle and BASS_WADSP_SetFileName now require the HWADSP plugin handle.
  (the SongTitle and FileName are now handled individually per Winamp DSP plugin)

2.2.0.4 - 2006-01-28
--------------------
- Streaming DSPs (e.g. SHOUTcast Source DSP) are now enabled for Metadata updates
  (use BASS_WADSP_SetSongTitle to set the metadata)

2.2.0.3 - 2006-01-09
--------------------
- now linked with the VC++ 6.0 MSVCRT.LIB

2.2.0.2 - 2006-01-07
--------------------
- bug fix with some internal 8bit to 16bit conversion (only happened with 8bit streams)
- a very simple Delphi sample was added

2.2.0.1 - 2005-12-15
--------------------
- bug fix which sometimes allowed only to load 2 plugins

2.2.0.0 - 2005-12-07
--------------------
- no change to BASS_WADSP!
- simply added a help file and adjusted the header files (especially VB!)

2.2.0.0 - 2005-12-04
--------------------
- BASS_DSP.dll renamed to BASS_WADSP.dll (as suggested by Ian)
- all methods renamed to BASS_WADSP_XXX
- floating point issue addressed and critical sections for better threading support added

2.2.0.0beta - 2005-12-02
------------------------
* First Release
