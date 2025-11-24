# Rotación-Traslación 2D - TRP ANIMACIÓN
# Autor: Marco Antonio Miranda Muñoz
clc; clear all; close all;
format short;
output_precision(2);
disp("Marco Antonio Miranda Muñoz");

# --- Definir dibujo (P1 + P2) - Flor en maceta con 58 vértices ---
P1 = [
  9.0000  8.8333  8.6667  8.5000  8.3333  8.1667  8.0000  8.5000  9.0000  9.5000 10.0000 10.5000 11.0000 11.5000 12.0000 11.8333 11.6667 11.5000 11.3333 11.1667 11.0000 10.5000 10.0000  9.5000  9.0000 10.0000 10.0000 10.0000  9.0000  8.5000  9.0000 10.0000 11.0000 11.5000 11.0000 10.0000 10.0000 10.0000;
  8.0000  7.5000  7.0000  6.5000  6.0000  5.5000  5.0000  5.0000  5.0000  5.0000  5.0000  5.0000  5.0000  5.0000  5.0000  5.5000  6.0000  6.5000  7.0000  7.5000  8.0000  8.0000  8.0000  8.0000  8.0000  8.0000  9.0000 10.0000 10.5000 10.0000  9.5000 10.0000 10.5000 10.0000  9.5000 10.0000 11.0000 12.0000;
   1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1
];

P2 = [
 10.4045 12.0000 10.4045 10.0000 10.4045 10.6180  9.8455 10.0000  9.8455  8.3820  9.5000 10.0000  9.5000  8.3820  9.8455 10.0000  9.8455 10.6180 10.4045 10.0000;
 11.7061 12.0000 12.2939 12.0000 12.2939 13.9021 12.4755 12.0000 12.4755 13.1756 12.0000 12.0000 12.0000 10.8244 11.5245 12.0000 11.5245 10.0979 11.7061 12.0000;
   1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1
];

P = [P1 P2];

# Centrar la flor en el origen
P(1,:) = P(1,:) - 10;
P(2,:) = P(2,:) - 9.5;

# Ajustar el tamaño inicial de la flor
Sx = 0.7;
Sy = 0.7;
S = [ Sx  0    0;
      0  Sy    0;
      0   0    1 ];

# Ajustar la posición inicial de la flor
Tx = 14;
Ty = 10;
T_init = [ 1  0   Tx;
           0  1   Ty;
           0  0    1 ];

# Aplicar las 2 transformaciones anteriores
P0 = P;
P = T_init * S * P;

# Matriz de desplazamiento de la animación
Tx = -0.5;
Ty = -0.4;
T = [ 1  0   Tx;
      0  1   Ty;
      0  0    1 ];

# Matriz de rotación de la animación
alfa = 4;
R = [ cosd(alfa)  -sind(alfa)   0;
      sind( alfa)   cosd( alfa)   0;
         0          0           1 ];

figure(1);
dx = 40;
dy = 40;
Pp = P;
for i=1:100;  # 100 ciclos
  Pp = T * R * Pp;

  hold off;
  plot(P0(1,:), P0(2,:), "-+b");
  hold on;
  plot(P(1,:), P(2,:), "-+b");
  axis( [-dx  dx  -dy  dy] );
  plot(Pp(1,:), Pp(2,:), "--*r");
  title("Animación - Rotación-Traslación 2D (TRP)");
  text(-10, -10, "Marco Antonio Miranda Muñoz", "fontsize", 22, "color", "b");
  # Eje X
  Ex = [ -dx   dx;
           0    0;
           1    1 ];
  plot(Ex(1,:), Ex(2,:), "-+m");
  # Eje Y
  Ey = [   0    0;
         -dy   dy;
           1    1 ];
  plot(Ey(1,:), Ey(2,:), "-+m");
  pause(0.025);
end;
