PROGRAM PLC_PRG
VAR
    Start_Btn : BOOL;
    Valve_Out : BOOL;
    Delay     : TON;
END_VAR

// Call TON instance; Valve_Out follows the delayed output
Delay(IN := Start_Btn, PT := T#5S);
Valve_Out := Delay.Q;
