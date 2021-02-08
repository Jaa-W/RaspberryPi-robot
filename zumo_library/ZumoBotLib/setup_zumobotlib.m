function setup_zumobotlib
% This function attemps to recompile all the S Function blocks
% automatically for the current target.
% Use this if you are not on win64 or want to recompile the S functions.
% Alternatively, you can also follow the instructions below to compile each
% block manually:
% Open ZumoBotLib.slx in Simulink.
% 
% For each block, do the following 3 steps:
% 
% 1. Right click the block > Mask > Look under mask
% 2. Double click the underlying S Function Builder block.
% 3. In the window that opens up, click the 'Build' button in 
%    the top right corner.
% 
% Run the MATLAB script called 'runAfterBuildingLibraryBlocks.m'.
% Copyright 2014 The MathWorks, Inc.

% Convert CPP with extern to C files
filesToConvertToC = { 'IncludeWireLib',...
                     'LSM303','ZumoBuzzer',...
                     'ZumoPush',...
                     'ZumoReflectanceSensor'};
for i=1:length(filesToConvertToC)
    renc2cpp(filesToConvertToC{i},true);
end         

fileCombosToBeBuild = {'IncludeWireLib.c IncludeWireLib_wrapper.c',...
                       'LSM303.c LSM303_wrapper.c',...
                       'ZumoBuzzer.c ZumoBuzzer_wrapper.c',...
                       'ZumoPush.c ZumoPush_wrapper.c',...
                       'ZumoReflectanceSensor.c ZumoReflectanceSensor_wrapper.c'};
try
    for i_files = 1:length(fileCombosToBeBuild)
        [~] = evalc(['mex ',fileCombosToBeBuild{i_files}, ' -silent']);
    end
catch err
    error(['There were some errors compiling the files. Please follow ',...
        ' alternate instructions available in the README.txt']);
end

% Reconvert to CPP
for i=1:length(filesToConvertToC)
    renc2cpp(filesToConvertToC{i});
end 

disp('ZumobotLib has been compiled for your platform');
                   