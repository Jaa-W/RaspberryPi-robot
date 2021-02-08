function runAfterBuildingLibraryBlocks
% Convert particular wrapper C files named '*wrapper.c' to valid CPP files
% and then delete the original C files.

% Copyright 2013 The MathWorks, Inc 

file = {...
  'IncludeWireLib'
  'LSM303'
  'ZumoPush'
  'ZumoReflectanceSensor'
  'ZumoBuzzer'
};

n = length(file);
for i = 1:n
  try
    renc2cpp(file{i});
  catch
    % override errors to allow some files to be missing
  end
end

end