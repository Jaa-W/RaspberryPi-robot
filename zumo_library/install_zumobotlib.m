function install_zumobotlib(forceBuild)
% Attempts to install the zumobot library
% Copyright 2014 The MathWorks, Inc.
if nargin < 1
    forceBuild = false;
end
zumodir = 'ZumoBotLib';
bdclose all;

if ~isempty(which('ZumoBotLib','-all'))
    disp('The Library is already installed on your system.');
    str = input('Do you wish to reinstall (Y/N) [N]?','s');
    if isempty(str)
        str = 'N';
    end
    if strcmpi('Y',str)
        reinstall_zumobotlib;
    end
    return; % already installed
end

if ~exist('ZumoBotLib','dir') 
    error('The ZumoBotLib folder was not found in the current folder');
end

% Find the root installation directory of Arduino Support Package and
% install the library in that folder

arduinopath = which('arduinolib','-all');

if isempty(arduinopath)
    error('The Simulink Support Package for Arduino has not been installed. Please install the Support Packaget first');
end

%Check the computer architecture
if forceBuild || ~strcmp(computer,'PCWIN64')
    cd('ZumoBotLib');
    try
        setup_zumobotlib;
    catch er
        cd('..');
        error(['There was some error in automatically building the library.',...
            'Please follow the steps for manually building from the README.txt']);
    end
    cd('..');
end

arduinopath = arduinopath{1};
installOutputPath = arduinopath(1:strfind(arduinopath,fullfile('arduino','blocks','arduinolib.slx'))-1);

try
    originalDir = cd(installOutputPath);
    mkdir(zumodir);
    cd(zumodir);
    zumoinstalldir = cd(originalDir);
    copyfile('ZumoBotLib',zumoinstalldir);
catch err
    error(['Error while copying!, Manually copy the ZumoBotLib folder to:' installOutputPath ' and add the new folder to the path']);
end

libraryPath = fullfile(installOutputPath,'ZumoBotLib');
addpath(libraryPath);
savepath;
rehash toolboxcache;
disp('Library is installed');


function reinstall_zumobotlib

% Attempts to install the zumobot library
bdclose all;
if ~isempty(which('ZumoBotLib','-all'))
    % Need to remove existing one
    arduinopath = which('arduinolib','-all');

    if isempty(arduinopath)
        error('The Simulink Support Package for Arduino has not been installed. Please install the Support Packaget first');
    end

    arduinopath = arduinopath{1};
    installOutputPath = arduinopath(1:strfind(arduinopath,'arduino\blocks\arduinolib.slx')-1);
    libraryPath = fullfile(installOutputPath,'ZumoBotLib');
    rmpath(libraryPath);
    savepath;
    clear mex;
    rmdir(libraryPath,'s')
   
end

install_zumobotlib;



