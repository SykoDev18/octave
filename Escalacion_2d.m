clc  #Limpia "Ventana de comandos"
clear all  #Limpia "Espacio de trabajo"
close all  #Cierra las Ventanas abiertas
#format rat
format short
output_precision(2) # utilizar 2 decimales
#Marco Antonio Miranda Muñoz
#***********************************
P1 = [ 3  5  5
       6  4  1
       1  1  1 ];
P2 = [ 1  1  3
       1  4  6
       1  1  1 ];
P3 = [ 3  4  4  3
       3  3  4  4
       1  1  1  1 ];

P = [ P1 P2 P3 ];
#Marco Antonio Miranda Muñoz
Tx = -17
Ty = 0
T = [ 1  0   Tx
      0  1   Ty
      0  0    1 ]

Sx = 3
Sy = 3
S = [ Sx  0    0
      0  Sy    0
      0   0    1 ]
# Operación de escalación (Ps)
Ps = S*P;

#Traslación - después de la escalación (Pp)
Pp = T*Ps;

hold on
plot(P(1,:), P(2,:), "-+b")
plot(Ps(1,:), Ps(2,:), "--*b")
plot(Pp(1,:), Pp(2,:), "--*o")

title("Casita - ESCALACIÓN 2D")
dx = 20;
dy = 20;
axis( [-dx  dx  -dy  dy] )
text(2, -1, "Imagen ORIGINAL")
text(-15, 1, "Imagen TRANSFORMADA")
text(-10, -12, "Marco Antonio Miranda Munoz",
     "fontsize", 22, "color", "b")
#Marco Antonio Miranda Muñoz

# Eje X
Ex = [ -dx   dx
         0    0
         1    1 ];
plot(Ex(1,:), Ex(2,:), "-+m")

# Eje Y
Ey = [   0    0
       -dy   dy
         1    1 ];
plot(Ey(1,:), Ey(2,:), "-+m")
