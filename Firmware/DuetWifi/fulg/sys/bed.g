M561                         ; clear any existing bed transform
G1 F500
M401
; bed points are in probe space...
G30 P0 X20 Y70 Z-99999       ; define 4 points in a clockwise direction around the bed, starting near (0,0)
G30 P1 X20 Y280 Z-99999
G30 P2 X280 Y280 Z-99999
G30 P3 X280 Y70 Z-99999
G30 P4 X150 Y150 Z-99999 S0  ; finally probe bed centre, and calculate compensation
M402
;G1 X0 Y0 F5000               ; move the head to the corner (optional)