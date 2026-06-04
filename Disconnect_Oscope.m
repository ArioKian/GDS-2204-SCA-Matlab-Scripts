function message = Disconnect_Oscope(s)
    fclose(s);
    message = 'INFO: Oscope Disconnected.';
end