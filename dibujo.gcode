( Casa simple en G-code )
G21         ; usar milímetros
G90         ; coordenadas absolutas
G0 Z5       ; altura segura
F1000       ; velocidad de avance

; --- Paredes ---
G0 X0 Y0    ; ir a esquina inferior izquierda
G1 Z-1      ; bajar herramienta
G1 X0 Y40   ; pared izquierda
G1 X40 Y40  ; pared superior
G1 X40 Y0   ; pared derecha
G1 X0 Y0    ; pared inferior
G0 Z5       ; subir herramienta

; --- Techo ---
G0 X0 Y40
G1 Z-1
G1 X20 Y60  ; pico del techo
G1 X40 Y40  ; lado derecho del techo
G0 Z5

; --- Puerta ---
G0 X15 Y0
G1 Z-1
G1 X15 Y20  ; lado izquierdo puerta
G1 X25 Y20  ; parte superior puerta
G1 X25 Y0   ; lado derecho puerta
G0 Z5

M30         ; fin del programa