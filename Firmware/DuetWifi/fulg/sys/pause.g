; Pause macro file
M83					; relative extruder moves
G1 E-4 F2500		; retract 4mm
G91					; relative moves
G1 Z5 F5000			; raise nozzle 2mm
G90					; absolute moves
G1 X300 Y300 F5000 S1		; move head out of the way of the print, check endstops in case homing was not yet done
M106 S0