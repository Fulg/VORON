; Configuration file for testing Duet Ethernet and Wifi

; Communication and general
M111 S0                                         ; Debug off
M550 PVORON                                     ; Machine name and Netbios name (can be anything you like)
M551 Preprap                                    ; Machine password (used for FTP)
;*** If you have more than one Duet on your network, they must all have different MAC addresses, so change the last digits
M540 P0xBE:0xEF:0xDE:0xAD:0xFE:0xE0             ; MAC Address

;*** Networking - Enable for both WiFi and Ethernet boards.
M552 S1                                         ; Turn network on

;*** Ethernet networking: Adjust the IP address and gateway in the following 2 lines to suit your network
M552 P0.0.0.0                                   ; (0 = DHCP)
M554 P192.168.1.255                             ; Gateway
M553 P255.255.255.0                             ; Netmask

M555 P2                                         ; Set output to look like Marlin
M575 P1 B57600 S1                               ; Comms parameters for PanelDue

G21                                             ; Work in millimetres
G90                                             ; Send absolute coordinates...
M83                                             ; ...but relative extruder moves

; Axis and motor configuration
M569 P0 S1                                      ; X motor direction
M569 P1 S0                                      ; Y motor direction
M569 P2 S0                                      ; Z motor direction
M569 P3 S0                                      ; E0 motor direction
M569 P4 S0                                      ; E1 motor direction
M574 X2 Y2 Z0 S1                                ; set endstop configuration (X and Y and endstops only, at high end, active high)
M667 S1                                         ; set CoreXY mode
M350 X16 Y16 Z16 E16:16 I1                      ; Set 16x microstepping with interpolation
M92 X80 Y80 Z400                                ; Set axis steps/mm
M906 X1000 Y1000 Z1000 E1000 I30                ; Set motor currents (mA) and increase idle current to 60%
M201 X1500 Y1500 Z500 E3000                     ; Accelerations (mm/s^2)
M203 X16000 Y16000 Z900 E9000                   ; Maximum speeds (mm/min)
M566 X450 Y450 Z480 E120                        ; Maximum instant speed changes mm/minute
M208 X300 Y300 Z230                             ; set axis maxima (adjust to suit your machine)
M208 X0 Y0 Z0 S1                                ; set axis minima (adjust to make X=0 and Y=0 the edges of the bed)

; Thermistors
M305 P0 R4700 T100000 B4725 C0.0000000706       ; Bed thermistor is Semitec GT-104
M305 P1 X200                                    ; 1st nozzle is PT100, first channel
M305 P2 X201                                    ; 2nd nozzle is PT100, second channel

M570 S180                                       ; Hot end may be a little slow to heat up so allow it 180 seconds

; Heater configs
M307 H0 A90.0 C700.0 D10.0 S0.80 B1
M307 H1 A454.1 C235.9 D4.5 S1.00 B0
M307 H2 A454.1 C235.9 D4.5 S1.00 B0
M307 H3 A-1 C-1 D-1                             ; reserve heater 3 (pin 8) for BLTouch PWM
M307 H4 A-1 C-1 D-1                             ;
M307 H5 A-1 C-1 D-1                             ;
M307 H6 A-1 C-1 D-1                             ;
M307 H7 A-1 C-1 D-1                             ;

; Fans
M106 P1 T50 H1:2                                ; Run fan 1 when heater 1 or 2 is 50C or over

; Tool definitions
M563 P0 D0 H1					; Define tool 0
G10 P0 S0 R0					; Set tool 0 operating and standby temperatures
M563 P1 D1 H2					; Define tool 1
G10 P1 S0 R0 X18				; Set tool 1 operating and standby temperatures
M92 E471.886:471.886                            ; Set extruder steps/mm

; Pressure advance
;M572 D0 S0.1
;M572 D1 S0.1

; Z probe and compensation definition
M557 X20:280 Y60:280 S20
M558 P5 X0 Y0 Z1 H5 F100 T7000                  ; use Zprobe input pin
G31 X9 Y50 Z1.12 P25                            ; set the probe XY offset, Z height and signal threshold

M556 S100 X0 Y0 Z0                              ; Put your axis compensation here
M912 P0 S0                                      ; Put your CPU temperature sensor correction here
M501                                            ; Run config-override.g
T0                                              ; Select the first head