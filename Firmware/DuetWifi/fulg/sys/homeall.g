; homeall file for use with dc42 Duet firmware on CoreXY printers
; This file assumes the endstop switches are at the high end of each axis.
; Reverse the X and Y movement for low-end switches.
; Adjust the bed upper and lower limits in config.g (M208 commands) to get the correct homing positions

T-1                       ; deselect any active tool
M561                      ; kill any active self-leveling

G91                       ; relative mode
G1 Z5 F500
G1 S1 X340 Y340 F3000     ; coarse home X or Y
G1 S1 X340                ; coarse home X
G1 S1 Y340                ; coarse home Y
G1 X-4 Y-4 F600           ; move away from the endstops
G1 S1 X310                ; fine home X
G1 S1 Y310                ; fine home Y

; If you are using a microswitch for Z homing, insert similar code for the Z axis here,
; but use lower feed rates suitable for your Z axis.

G90                       ; back to absolute mode

; If you homed the Z axis using an endstop switch, you can insert a G92 command here to correct the height.

; The following code assumes you are using a Z probe to do Z homing. Remove it if you are using a microswitch.
; Adjust the XY coordinates in the following to place the Z probe over a suitable spot,
; preferably near the centre of the bed if your Z probe supports that

; remember to apply the probe offset...
G1 X141 Y100 F9000
M401
G30
M402
; This file leaves the head at the zprobe trigger height so that you can slip a piece of paper under it and then do G0 Z0 to check the height.
; If you prefer to send the printer to X0Y0Z0, un-comment the following lines
;G1 X0 Y0 F5000
G1 Z5 F500
