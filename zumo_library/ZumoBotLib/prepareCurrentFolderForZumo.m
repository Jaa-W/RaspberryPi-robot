function prepareCurrentFolderForZumo
% Copies the Wire library folder into the current folder
% Copyright 2014 The MathWorks, Inc.

wirefolderExists = false;
if exist('Wire','dir')
    wirefolderExists = true;
end

zumopath = which('ZumoBotLib','-all');
if isempty(zumopath)
    error('Please install the ZumoLibrary first!');
end

wirepath = fullfile(zumopath{1},'..','Wire');
buspathFiles = fullfile(zumopath{1},'..');

try
   if ~wirefolderExists
        mkdir('Wire');
        copyfile(wirepath, fullfile(pwd,'Wire'));
   end
   copyfile(fullfile(buspathFiles,'LSM303_bus.h'), pwd);  
catch err
    error(['There was a error copying the Wire folder. Please copy the folder from:' wirepath ' to the current folder']);
end