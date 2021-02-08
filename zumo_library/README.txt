OVERVIEW
--------
This library and model contains Simulink blocks for use with the Pololu 
Zumo Robot for Arduino (http://www.pololu.com/product/2506).

All images are derived from pololu's website.


To learn how this library was made, refer to 
http://www.mathworks.com/matlabcentral/fileexchange/39354-device-drivers

Copyright 2014 The MathWorks, Inc.


INSTALLING THE LIBRARY
----------------------
This File Exchange entry comes with a pre-built library for 64 bit Windows
machines. If you are using another computer architecture, then you can use 
the instructions below to build the library to work on your machine.

If you are on a 64 bit Windows machine, then you can install the Library 
using the command install_zumobotlib. For other architectures, 
the install_zumobotlib will attempt to recompile the binaries and 
automatically try and install the library. To force compile on windows,
pass in a true flag like install_zumobotlib(true).
Incase of any errors, follow the steps below for Manually building the library

>> install_zumobotlib

After the installation, delete/remove the ZumoBotLib folder.

Open the Simulink Library.

Refresh the library by pressing the F5 key, or by clicking the 'View' menu
and then 'Refresh Tree View'.

You will now see a library called 'ZumoBotLibrary'


USING THE LIBRARY
-----------------
To start using the library, run the following command to copy some 
dependent library files to the current folder (You are only required to 
run this command once per directory)

>> prepareCurrentFolderForZumo

Look at the examples folder provided with the Library for samples.


>>> FOR ARCHITECTURES OTHER THAN WINDOWS 64 Bit <<<

BUILDING THE LIBRARY FROM SOURCE
--------------------------------
You will need to rebuild the library for use in your platform. Please 
follow the instructions below:

0. You should have the appropriate supported compilers installed. For Maci
systems, you need to install supported Xcode versions

MANUALLY BUILDING THE LIBRARY:

1. Move/Navigate into the directory that is created called 'ZumoBotLib/'.
>> cd('ZumoBotLib'); % if you are in the README.txt directory

2. Run the script: setup_zumobotlib
>> setup_zumobotlib
This will attempt to automatically recompile the library. If this is 
successful, proceed to step 3, else follow the alternate instructions for  
step 2.

3. After the running the above script, navigate one folder up:
>> cd ..
And then run the install_zumobotlib command to install the libary.
>> install_zumobotlib

4. Once the library is installed, delete the ZumoBotLib folder. You can now
go to the examples folder.


---> Alternate Instructions

2a) Open up the ZumoBotLib.slx in simulink

2b) For each block, do the following 3 steps:

    1. Right click the block > Mask > Look under mask
    2. Double click the underlying S Function Builder block.
    3. In the window that opens up, click the 'Build' button in 
   	 top right corner.

2c) Run the MATLAB script called 'runAfterBuildingLibraryBlocks.m'.

2d) Follow the step 3 from above to finish the installation.


FAQ
---

Q: Errors with missing Wire.h files?
A: Do you have the Wire folder in the current working directory? Run the 
   prepareCurrentFolderForZumo command to copy it over

Q: Errors with missing accel or compass object?
A: load MagnetometerBus; %in MATLAB that defines the bus objects.


