function message = Oscope_InitialSettings(s)
    disp('Oscope Initial Settings...');
    
    %%% Activating Channels 1 to 3:
    fprintf(s, ':CHANnel1:DISPlay 1');
    fprintf(s, ':CHANnel2:DISPlay 1');
    fprintf(s, ':CHANnel3:DISPlay 1');
    
    %%% General Settings:
    fprintf(s, ':ACQuire:LENgth 1');    %%%% Set Memory Length to MAX (when 3 channels activated its 5000) 
                                        %%%% (0 is 500) 
    fprintf(s,':TIMebase:SCALe 500.00E-6');  %%%% Set Time/Div as 500uS (500uS per Division)
    fprintf(s,':TIMebase:DElay 2.940E-3'); %%%%  fprintf(s,':TIMebase:POSition 2.485E-3');
    
    %%% CHANnel1 Settings:
    fprintf(s, ':CHANnel1:SCALe 0.1');  %%%% 0.1 = 100mV (Volt/Div)
    fprintf(s, ':CHANnel1:OFFSet 0.2'); %%%% 0.2 = 200mV (Vertical Position)
    fprintf(s, ':CHANnel1:COUPling 1'); %%% DC Coupling, which is the default
    %%% CHANnel2 Settings:
    fprintf(s, ':CHANnel2:SCALe 0.1');  %%%% 0.1 = 100mV (Volt/Div)
    fprintf(s, ':CHANnel2:OFFSet 0.0'); %%%% 0.0 = 0V (Vertical Position)
    fprintf(s, ':CHANnel2:COUPling 1'); %%% DC Coupling, which is the default
    %%% CHANnel3 Settings:
    fprintf(s, ':CHANnel3:SCALe 1');    %%%% 1 = 1V (Volt/Div)
    fprintf(s, ':CHANnel3:OFFSet -2'); %%%% 0.2 = 200mV (Vertical Position)
    fprintf(s, ':CHANnel3:COUPling 1'); %%% DC Coupling, which is the default
    %%% CHANnel4 (Trigger) Settings:
    fprintf(s,':TRIGger:SOURce 3');  %%% Set Channel 4 as Trigger (0:CH1, 1:CH2, 2:CH3, 3:CH4)
    fprintf(s,':TRIGger:LEVel 1.63');
    fprintf(s,':TRIGger:TYpe 0'); %%% fprintf(s,':TRIGger:TYpe EDGE');
    fprintf(s,':TRIGger:MODe 1'); %%% fprintf(s,':TRIGger:MODe AUto');
    
    
    %%% Setting Results Back:
    fprintf(s, ':CHANnel1:DISPlay?');
    channel1_Disp = fscanf(s);
    channel1_Disp
    fprintf(s, ':CHANnel2:DISPlay?');
    channel2_Disp = fscanf(s);
    channel2_Disp
    fprintf(s, ':CHANnel3:DISPlay?');
    channel3_Disp = fscanf(s);
    channel3_Disp
    
    fprintf(s,':ACQuire:LENgth?');
    acquireLength = fscanf(s, '%f');
    acquireLength
    fprintf(s,':TIMebase:SCALe?');
    timeBaseScale = fscanf(s, '%f');
    timeBaseScale
    fprintf(s,':TIMebase:DElay?');
    timeBasePosition = fscanf(s, '%f');
    timeBasePosition
    
    fprintf(s, ':CHANnel1:SCALe?');
    channel_1_Scale = fscanf(s, '%f');
    channel_1_Scale
    fprintf(s, ':CHANnel2:SCALe?');
    channel_2_Scale = fscanf(s, '%f');
    channel_2_Scale
    fprintf(s, ':CHANnel3:SCALe?');
    channel_3_Scale = fscanf(s, '%f');
    channel_3_Scale
    
    fprintf(s, ':CHANnel1:OFFSet?');
    channel_1_Offset = fscanf(s, '%f');
    channel_1_Offset
    fprintf(s, ':CHANnel2:OFFSet?');
    channel_2_Offset = fscanf(s, '%f');
    channel_2_Offset
    fprintf(s, ':CHANnel3:OFFSet?');
    channel_3_Offset = fscanf(s, '%f');
    channel_3_Offset
    
    fprintf(s, ':CHANnel1:COUPling?');
    channel_1_Coupling = fscanf(s);
    channel_1_Coupling
    fprintf(s, ':CHANnel2:COUPling?');
    channel_2_Coupling = fscanf(s);
    channel_2_Coupling
    fprintf(s, ':CHANnel3:COUPling?');
    channel_3_Coupling = fscanf(s);
    channel_3_Coupling
    
    fprintf(s,':TRIGger:SOURce?');
    triggerSource = fscanf(s);
    triggerSource
    fprintf(s,':TRIGger:LEVel?');
    triggerLevel = fscanf(s);
    triggerLevel
    fprintf(s,':TRIGger:TYpe?');
    triggerType = fscanf(s);
    triggerType
    fprintf(s,':TRIGger:MODe?');
    triggerMode = fscanf(s);
    triggerMode
    
    message = 'INFO: Oscope Parameters Initialized Successfully.';
end