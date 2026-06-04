function message = Create_OutputDirectories(Date_Y, month, day, io)
    mkdir(sprintf('%d-%d-%d/traces/%d'    ,Date_Y,month,day,io));
    mkdir(sprintf('%d-%d-%d/inputs/%d'    ,Date_Y,month,day,io));
    mkdir(sprintf('%d-%d-%d/Keys/%d'      ,Date_Y,month,day,io));
    mkdir(sprintf('%d-%d-%d/DigCapture/%d',Date_Y,month,day,io));
    message = 'INFO: Output Directories Created';
end