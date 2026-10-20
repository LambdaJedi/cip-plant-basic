# CIP Plant – TON Valve Delay

Educational CODESYS V3.5 project demonstrating a 5-second on-delay
valve output using a TON timer in Structured Text (IEC 61131-3).

## Function
- `Start_Btn` (BOOL) = TRUE
- After 5 s, `Valve_Out` (BOOL) = TRUE
- `Valve_Out` follows `Delay.Q`

## I/O
| Tag | Type | Description |
|---|---|---|
| Start_Btn | BOOL | Start input |
| Valve_Out | BOOL | Valve output |
| Delay | TON | 5 s on-delay timer |

## Code
Implementation (ST):
```st
Delay(IN := Start_Btn, PT := T#5S);
Valve_Out := Delay.Q;
How to run

    Open CIP_Plant.project in CODESYS V3.5.

    Build and download to a soft PLC or the CODESYS Control Win simulator.

    Toggle Start_Btn and observe Valve_Out after 5 seconds.

Disclaimer

Educational project. Not safety-rated. Do not use as-is in real machinery.
