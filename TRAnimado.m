clc         #Limpia "Ventana de comandos"
clear all   #Limpia "Espacio de trabajo"
#close all  #Cierra las Ventanas abiertas
#format rat
format short
output_precision(2) # utilizar 2 decimales
#Miranda Munoz Marco Antonio
disp("Miranda Munoz Marco Antonio")
# Miranda Munoz Marco Antonio
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

# Ajustar el tamaño inicial de la casa
Sx = 0.7;
Sy = 0.7;
S = [ Sx  0    0
      0  Sy    0
      0   0    1 ];

# Ajustar la posición inicial de la casa
Tx = 14;
Ty = 10;
T = [ 1  0   Tx
      0  1   Ty
      0  0    1 ];

# Aplicar las 2 transformaciones anteriores
P0 = P;
P = T*S*P;

#***********************************
# Comienza el proceso de animaci�n
#***********************************
#Miranda Munoz Marco Antonio

# Matriz de desplazamiento de la animación
Tx = -0.5;
Ty = -0.4;
T = [ 1  0   Tx
      0  1   Ty
      0  0    1 ]
#***********************************
figure(1)
dx = 20;
dy = 20;
Pp = P;
for i=1:60;  # 60 ciclos
  Pp = T*Pp;

  hold off
  plot(P0(1,:), P0(2,:), "-+b")
  hold on
  plot(P(1,:), P(2,:), "-+b")
  axis( [-dx  dx  -dy  dy] )
  plot(Pp(1,:), Pp(2,:), "--*r")
  ##############
  title("Animación - Traslación 2D")
  text(-10, -10, "Miranda Munoz Marco Antonio",
               "fontsize", 22, "color", "b")
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
  ##############
  pause(0.025)
end;
#***********************************
# Miranda Munoz Marco Antonio

Puntos_Pp = Pp(:,1:4);
