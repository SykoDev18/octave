#Rotacion
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
#***********************************
# Coordenadas homogeneas de una casa
#P = [ 3  5  5  1  1  3  3  4  4  3
#      6  4  1  1  4  6  3  3  4  4
#      1  1  1  1  1  1  1  1  1  1 ];
#***********************************

#Marco Antonio Miranda Muñoz

# Define la matriz de traslación 2D
Tx = 9
Ty = 9
T = [ 1  0   Tx
      0  1   Ty
      0  0    1 ]

# Define la matriz de rotación 2D
alfa = 90
R = [ cosd(alfa)  -sind(alfa)   0
      sind(alfa)   cosd(alfa)   0
         0          0           1 ]

# Transformación geométrica
Pt = T*P;
Pr = R*Pt;

#Graficar
hold on
plot(P (1,:), P (2,:), "-+b")
plot(Pt(1,:), Pt(2,:), "-+b")
plot(Pr(1,:), Pr(2,:), "--*r")

title("Casita - ROTACIÓN 2D")
dx = 20;
dy = 20;
axis( [-dx  dx  -dy  dy] )
text(9, 8, "Imagen ORIGINAL")
text(-15,5, "Imagen TRANSFORMADA")
text(-5, -12, "Marco Antonio Miranda Munoz",
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


P  = P (:,1:7)
#Pt = Pt(:,1:7)
Pr = Pr(:,1:7)
