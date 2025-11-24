clc         #Limpia "Ventana de comandos"
clear all   #Limpia "Espacio de trabajo"
#close all  #Cierra las Ventanas abiertas
#format rat
format short
output_precision(2) # utilizar 2 decimales
#Marco Antonio Miranda Muñoz
disp("Marco Antonio Miranda Munoz")
#***********************************
# Coordenadas homogeneas de una casa
P1 = [ 3  5  5
       6  4  1
       0  0  0
       1  1  1 ];
P2 = [ 1  1  3
       1  4  6
       0  0  0
       1  1  1 ];
P3 = [ 3  4  4  3
       3  3  4  4
       0  0  0  0
       1  1  1  1 ];

P = [ P1 P2 P3 ];

PF1 = P
PF1(3,:) = -2.2
PF2 = P
PF2(3,:) = -2.4
PF3 = P
PF3(3,:) = -2.6

P = [PF1 PF2 PF3]

# Ajustar el tamaño inicial de la casa
Sx = 1.8;
Sy = 1.8;
Sz = 1.8;
S = [ Sx   0    0    0
      0   Sy    0    0
      0    0   Sz    0
      0    0    0    1 ];

# Ajustar la posición inicial de la casa
Tx = 18
Ty = 18
Tz =  0
T = [ 1   0   0   Tx
      0   1   0   Ty
      0   0   1   Tz
      0   0   0   1 ]

# Aplicar las 2 transformaciones anteriores
# Ajustar posición y escala inicial de la casa
P = T*S*P;

#***********************************
# Comienza el proceso de animaci�n
#***********************************
#Marco Antonio Miranda Muñoz

# desplazamiento de la animación
Tx = 0;
Ty = 0;
Tz =  0.06;
T = [ 1   0   0   Tx
      0   1   0   Ty
      0   0   1   Tz
      0   0   0   1 ]
# Escala de la animaión
escala = 1.01
Sx = escala;
Sy = escala;
Sz = escala;
S = [ Sx   0    0    0
      0   Sy    0    0
      0    0   Sz    0
      0    0    0    1 ];
# Rotación de la animaión
alfa = 2
Rz = [ cosd(alfa)  -sind(alfa)    0     0
       sind(alfa)   cosd(alfa)    0     0
          0            0          1     0
          0            0          0     1 ]
#***********************************
#***********************************

figure(1)
dx = 40;
dy = 40;
dz = 10;
Pp = P;

for i=1:130;  # 120 ciclos
  Pp = T*Rz*Pp;

  hold off
  plot3(P(1,:), P(2,:), P(3,:), "-b")
  axis( [-dx  dx  -dy  dy  -dz  dz] )
  hold on
  plot3(Pp(1,:), Pp(2,:), Pp(3,:), "--r")
  ##############
  title("Animación - Rotar en 3D")
  text(-30, -7, "Marco Antonio Miranda Muñoz",
               "fontsize", 22, "color", "b")

  # Eje X
  Ex = [ -dx   dx
           0    0
           0    0
           1    1 ];
  plot3(Ex(1,:), Ex(2,:), Ex(3,:), "-+g")
  # Eje Y
  Ey = [   0    0
         -dy   dy
           0    0
           1    1 ];
  plot3(Ey(1,:), Ey(2,:), Ex(3,:), "-+g")
  # Eje Z
  Ez = [   0    0
           0    0
         -dz   dz
           1    1 ];
  plot3(Ez(1,:), Ez(2,:), Ez(3,:), "-+m")

  ##############
  hold off
  pause(0.01)
end;
#***********************************

Puntos_Pp = Pp(:,1:4)
