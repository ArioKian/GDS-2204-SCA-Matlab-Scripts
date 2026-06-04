function message = Connect_Oscope(s)
    if ( ~strcmp( s.status, 'open'))
    s.BaudRate = 115200;
    s.DataBits = 8;
    s.Parity = 'none';
    s.StopBits = 1;
    s.InputBufferSize = 4.2e6;
    s.OutputBufferSize = 4.2e6;
    fopen(s);
    % Send identification query
    fprintf(s,'*IDN?');
    % Read response
    response = fscanf(s);
    disp(response);
    message='INFO: Oscope Connected Succesfully.';
    else
        message= 'ERROR: Oscope Connection FAILED.';
    end
end