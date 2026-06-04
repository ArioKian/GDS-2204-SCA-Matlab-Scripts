clear;
clc;

promt = 'pleas, enter Oscilloscope COM Port Number (for example input : COM4) \n';
OscComPort= input(promt, 's');

if ~exist('s','var')
    s = serial(OscComPort);
end

message = Connect_Oscope(s);
if (strcmp(message, 'INFO: Oscope Connected Succesfully.'))
    disp(message);
else
    disp(message);
    return
end

% disp(' information for save data ..');
% Date_Y= input('pleas, enter the year \n');
% month= input('pleas, enter the month \n');
% day = input('pleas, enter the day \n');
% numberOfRun = input('pleas, enter the numberOfRun \n');
% datasetNum = input('pleas, enter the datasetNum \n');
% Blocksize = input('pleas, enter the AES Number in a OscopeCapture \n');
% 
% numberOftraces = numberOfRun;
% numberOfPt = numberOfRun;

message = Oscope_InitialSettings(s);
disp(message);

% message = Disconnect_Oscope(s);
% disp(message);