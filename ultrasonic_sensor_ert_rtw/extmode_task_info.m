function [taskInfo, numtask, isDeploymentDiagram]=extmode_task_info()


    taskInfo(1).samplePeriod = 5.0E-6;
    taskInfo(1).sampleOffset = 0.0;

      taskInfo(1).taskPrio = 40;

      taskInfo(1).taskName = 'BaseRate';
    taskInfo(1).entryPoints = {};
    taskInfo(2).samplePeriod = 1.0E-5;
    taskInfo(2).sampleOffset = 0.0;

      taskInfo(2).taskPrio = 39;

      taskInfo(2).taskName = ['SubRate' '1'];        
    taskInfo(2).entryPoints = {};
    taskInfo(3).samplePeriod = 2.5E-5;
    taskInfo(3).sampleOffset = 0.0;

      taskInfo(3).taskPrio = 38;

      taskInfo(3).taskName = ['SubRate' '2'];        
    taskInfo(3).entryPoints = {};



  numtask = 3;
  for i = 1:numtask
    if ( 0 == isnumeric(taskInfo(i).samplePeriod) )
      taskInfo(i).samplePeriod = evalin('base', 'str2double(taskInfo(i).samplePeriod)');
    end
    if ( isempty(taskInfo(i).taskName) )
      taskInfo(i).taskName = ['AutoGen' i ];
    end
  end

  isDeploymentDiagram = 0;

end 
