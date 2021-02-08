  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 3;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (izp4oyn14w)
    ;%
      section.nData     = 13;
      section.data(13)  = dumData; %prealloc
      
	  ;% izp4oyn14w.PIDController_P
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% izp4oyn14w.StandardServoWrite_MinPulseDura
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% izp4oyn14w.StandardServoWrite_MaxPulseDura
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% izp4oyn14w.Constant_Value
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
	  ;% izp4oyn14w.Constant_Value_iagjcz2lnl
	  section.data(5).logicalSrcIdx = 4;
	  section.data(5).dtTransOffset = 4;
	
	  ;% izp4oyn14w.DiscreteTimeIntegrator_gainval
	  section.data(6).logicalSrcIdx = 5;
	  section.data(6).dtTransOffset = 5;
	
	  ;% izp4oyn14w.DiscreteTimeIntegrator_IC
	  section.data(7).logicalSrcIdx = 6;
	  section.data(7).dtTransOffset = 6;
	
	  ;% izp4oyn14w.DiscreteTimeIntegrator_UpperSat
	  section.data(8).logicalSrcIdx = 7;
	  section.data(8).dtTransOffset = 7;
	
	  ;% izp4oyn14w.DiscreteTimeIntegrator_LowerSat
	  section.data(9).logicalSrcIdx = 8;
	  section.data(9).dtTransOffset = 8;
	
	  ;% izp4oyn14w.Constant3_Value
	  section.data(10).logicalSrcIdx = 9;
	  section.data(10).dtTransOffset = 9;
	
	  ;% izp4oyn14w.margin_Value
	  section.data(11).logicalSrcIdx = 10;
	  section.data(11).dtTransOffset = 10;
	
	  ;% izp4oyn14w.Delay_InitialCondition
	  section.data(12).logicalSrcIdx = 11;
	  section.data(12).dtTransOffset = 11;
	
	  ;% izp4oyn14w.Constant5_Value
	  section.data(13).logicalSrcIdx = 12;
	  section.data(13).dtTransOffset = 12;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% izp4oyn14w.Delay_DelayLength
	  section.data(1).logicalSrcIdx = 13;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% izp4oyn14w.Gain_Gain
	  section.data(1).logicalSrcIdx = 14;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 3;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (olqpnvifvhb)
    ;%
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% olqpnvifvhb.gup0tenolh
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% olqpnvifvhb.okbapqeyqi
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% olqpnvifvhb.b2jz0koy3n
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 2;
	
	  ;% olqpnvifvhb.lhsxu1rxrm
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 6;
      section.data(6)  = dumData; %prealloc
      
	  ;% olqpnvifvhb.ocjnhhe0hq
	  section.data(1).logicalSrcIdx = 4;
	  section.data(1).dtTransOffset = 0;
	
	  ;% olqpnvifvhb.avfs33ctaw
	  section.data(2).logicalSrcIdx = 5;
	  section.data(2).dtTransOffset = 19200;
	
	  ;% olqpnvifvhb.ba2ccalgkr
	  section.data(3).logicalSrcIdx = 6;
	  section.data(3).dtTransOffset = 38400;
	
	  ;% olqpnvifvhb.k2ebjqj54k
	  section.data(4).logicalSrcIdx = 7;
	  section.data(4).dtTransOffset = 57600;
	
	  ;% olqpnvifvhb.p5z2yrl4pm
	  section.data(5).logicalSrcIdx = 8;
	  section.data(5).dtTransOffset = 76800;
	
	  ;% olqpnvifvhb.ebgt5znbji
	  section.data(6).logicalSrcIdx = 9;
	  section.data(6).dtTransOffset = 96000;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% olqpnvifvhb.ilvf5kwu3k
	  section.data(1).logicalSrcIdx = 10;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(3) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 7;
    sectIdxOffset = 3;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (bjy4bmr0fsg)
    ;%
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% bjy4bmr0fsg.boxzwxld4r
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% bjy4bmr0fsg.omwmrpmn0a
	  section.data(1).logicalSrcIdx = 1;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% bjy4bmr0fsg.atp20e2rjc
	  section.data(1).logicalSrcIdx = 2;
	  section.data(1).dtTransOffset = 0;
	
	  ;% bjy4bmr0fsg.miwdrd00h1
	  section.data(2).logicalSrcIdx = 3;
	  section.data(2).dtTransOffset = 1;
	
	  ;% bjy4bmr0fsg.jx21rhdndc
	  section.data(3).logicalSrcIdx = 4;
	  section.data(3).dtTransOffset = 2;
	
	  ;% bjy4bmr0fsg.kyjnqsprjj
	  section.data(4).logicalSrcIdx = 5;
	  section.data(4).dtTransOffset = 3;
	
	  ;% bjy4bmr0fsg.k0hg3pkb2p
	  section.data(5).logicalSrcIdx = 6;
	  section.data(5).dtTransOffset = 4;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 6;
      section.data(6)  = dumData; %prealloc
      
	  ;% bjy4bmr0fsg.j32i0wa0gm
	  section.data(1).logicalSrcIdx = 7;
	  section.data(1).dtTransOffset = 0;
	
	  ;% bjy4bmr0fsg.cecnsbi1nr
	  section.data(2).logicalSrcIdx = 8;
	  section.data(2).dtTransOffset = 1;
	
	  ;% bjy4bmr0fsg.iu4b3mbp42
	  section.data(3).logicalSrcIdx = 9;
	  section.data(3).dtTransOffset = 11;
	
	  ;% bjy4bmr0fsg.pleg1bdrhg
	  section.data(4).logicalSrcIdx = 10;
	  section.data(4).dtTransOffset = 12;
	
	  ;% bjy4bmr0fsg.gi5432dhqe
	  section.data(5).logicalSrcIdx = 11;
	  section.data(5).dtTransOffset = 13;
	
	  ;% bjy4bmr0fsg.khkrxpruuk
	  section.data(6).logicalSrcIdx = 12;
	  section.data(6).dtTransOffset = 14;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% bjy4bmr0fsg.ovodbfsmgi.LoggedData
	  section.data(1).logicalSrcIdx = 13;
	  section.data(1).dtTransOffset = 0;
	
	  ;% bjy4bmr0fsg.bf2epssmgl.LoggedData
	  section.data(2).logicalSrcIdx = 14;
	  section.data(2).dtTransOffset = 1;
	
	  ;% bjy4bmr0fsg.l45nskchzw.LoggedData
	  section.data(3).logicalSrcIdx = 15;
	  section.data(3).dtTransOffset = 2;
	
	  ;% bjy4bmr0fsg.fxr5bwgcr1.LoggedData
	  section.data(4).logicalSrcIdx = 16;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% bjy4bmr0fsg.p4eg2talhh
	  section.data(1).logicalSrcIdx = 17;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% bjy4bmr0fsg.m4lhqw1cq1
	  section.data(1).logicalSrcIdx = 18;
	  section.data(1).dtTransOffset = 0;
	
	  ;% bjy4bmr0fsg.jbp403q4zy
	  section.data(2).logicalSrcIdx = 19;
	  section.data(2).dtTransOffset = 1;
	
	  ;% bjy4bmr0fsg.llxxv13ljx
	  section.data(3).logicalSrcIdx = 20;
	  section.data(3).dtTransOffset = 2;
	
	  ;% bjy4bmr0fsg.dtwgb40yvy
	  section.data(4).logicalSrcIdx = 21;
	  section.data(4).dtTransOffset = 3;
	
	  ;% bjy4bmr0fsg.bdbpw43s0b
	  section.data(5).logicalSrcIdx = 22;
	  section.data(5).dtTransOffset = 4;
	
	  ;% bjy4bmr0fsg.j42feq1bdo
	  section.data(6).logicalSrcIdx = 23;
	  section.data(6).dtTransOffset = 5;
	
	  ;% bjy4bmr0fsg.oaxw2mwtch
	  section.data(7).logicalSrcIdx = 24;
	  section.data(7).dtTransOffset = 6;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(7) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 2720953656;
  targMap.checksum1 = 3003042899;
  targMap.checksum2 = 761495666;
  targMap.checksum3 = 3428129637;

