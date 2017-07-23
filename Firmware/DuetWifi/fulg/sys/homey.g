; Y homing file for dc42 Duet firmware
T-1
M561                      ; kill any active self-leveling
G90
G1 Z5 F200
G91
G1 Y340 F3000 S1
G1 Y-4 F600
G1 Y10 S1
G90
