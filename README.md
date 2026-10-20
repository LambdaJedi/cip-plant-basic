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
## Code
Implementation (ST):
```st
Implementation (ST):
```st
Delay(IN := Start_Btn, PT := T#5S);
Valve_Out := Delay.Q;
How to run

    Open CIP_Plant.project in CODESYS V3.5.
    Build and download to a soft PLC or the CODESYS Control Win simulator.

## Source code

- Human-readable ST: [`exports/PLC_PRG.st`](exports/PLC_PRG.st)
- PLCopenXML export: [`exports/CIP_Plant.xml`](exports/CIP_Plant.xml)
- CODESYS binary project: `CIP_Plant.project`
