
oR = raspi('169.254.0.2','pi','raspberry')

%trig
configurePin(oR, 23, 'DigitalOutput');
%echo
configurePin(oR, 24, 'DigitalInput');

while 1
    writeDigitalPin(oR,23,0);
    pause(0.000002)
    writeDigitalPin(oR,23,1);
    pause(0.00001)
    writeDigitalPin(oR,trig,0);
      
    
      while readDigitalPin(oR,echo)==0
          continue
      end
      tic
      while readDigitalPin(oR,echo)==1
          continue
      end
      duration= toc
      distance=duration*17150
  
end