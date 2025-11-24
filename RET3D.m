# Rotación-Escalación-Traslación 3D - TSRP ANIMACIÓN
# Autor: Marco Antonio Miranda Muñoz
clc; clear all; close all;
format short;
output_precision(2);
disp("Marco Antonio Miranda Muñoz");

# --- Definir dibujo (P1 + P2) - Flor en maceta con 58 vértices en 3D ---
P1_x = [9.0000  8.8333  8.6667  8.5000  8.3333  8.1667  8.0000  8.5000  9.0000  9.5000 10.0000 10.5000 11.0000 11.5000 12.0000 11.8333 11.6667 11.5000 11.3333 11.1667 11.0000 10.5000 10.0000  9.5000  9.0000 10.0000 10.0000 10.0000  9.0000  8.5000  9.0000 10.0000 11.0000 11.5000 11.0000 10.0000 10.0000 10.0000];
P1_y = [8.0000  7.5000  7.0000  6.5000  6.0000  5.5000  5.0000  5.0000  5.0000  5.0000  5.0000  5.0000  5.0000  5.0000  5.0000  5.5000  6.0000  6.5000  7.0000  7.5000  8.0000  8.0000  8.0000  8.0000  8.0000  8.0000  9.0000 10.0000 10.5000 10.0000  9.5000 10.0000 10.5000 10.0000  9.5000 10.0000 11.0000 12.0000];

P2_x = [10.4045 12.0000 10.4045 10.0000 10.4045 10.6180  9.8455 10.0000  9.8455  8.3820  9.5000 10.0000  9.5000  8.3820  9.8455 10.0000  9.8455 10.6180 10.4045 10.0000];
P2_y = [11.7061 12.0000 12.2939 12.0000 12.2939 13.9021 12.4755 12.0000 12.4755 13.1756 12.0000 12.0000 12.0000 10.8244 11.5245 12.0000 11.5245 10.0979 11.7061 12.0000];

x = [P1_x P2_x] - 10;  # Centrar
y = [P1_y P2_y] - 9.5;

num_points = length(x);
P_base = [x; y; zeros(1, num_points); ones(1, num_points)];

PF1 = P_base;
PF1(3,:) = -0.2;
PF2 = P_base;
PF2(3,:) = -0.4;
PF3 = P_base;
PF3(3,:) = -0.6;

P = [PF1 PF2 PF3];

# Ajustar el tamaño inicial de la flor (pequeño para animación)
Sx = 0.3;
Sy = 0.3;
Sz = 0.3;
S_init = [Sx 0 0 0; 0 Sy 0 0; 0 0 Sz 0; 0 0 0 1];

# Ajustar la posición inicial de la flor
Tx = 14;
Ty = 14;
Tz = 0;
T_init = [1 0 0 Tx; 0 1 0 Ty; 0 0 1 Tz; 0 0 0 1];

# Aplicar las 2 transformaciones anteriores
P = T_init * S_init * P;

# Rotación, escalación y desplazamiento de la animación
alfa = 4;
R = [cosd(alfa) -sind(alfa) 0 0; sind(alfa) cosd(alfa) 0 0; 0 0 1 0; 0 0 0 1];
Sx = 1.02;
Sy = 1.02;
Sz = 1.02;
S = [Sx 0 0 0; 0 Sy 0 0; 0 0 Sz 0; 0 0 0 1];
Tx = -0.5;
Ty = -0.4;
Tz = 0.08;
T = [1 0 0 Tx; 0 1 0 Ty; 0 0 1 Tz; 0 0 0 1];

figure(1);
dx = 40;
dy = 40;
dz = 6;
Pp = P;
for i=1:100;  # 100 ciclos
  Pp = T * S * R * Pp;

  hold off;
  plot3(P(1,:), P(2,:), P(3,:), "-+b");
  axis([-dx dx -dy dy -dz dz]);
  hold on;
  plot3(Pp(1,:), Pp(2,:), Pp(3,:), "--*r");
  title("Animación - Rotación-Escalación-Traslación 3D (TSRP)");
  text(1, -10, 0, "Marco Antonio Miranda Muñoz", "fontsize", 22, "color", "b");
  # Eje X
  Ex = [-dx dx; 0 0; 0 0; 1 1];
  plot3(Ex(1,:), Ex(2,:), Ex(3,:), "-+g");
  # Eje Y
  Ey = [0 0; -dy dy; 0 0; 1 1];
  plot3(Ey(1,:), Ey(2,:), Ey(3,:), "-+g");
  # Eje Z
  Ez = [0 0; 0 0; -dz dz; 1 1];
  plot3(Ez(1,:), Ez(2,:), Ez(3,:), "-+m");
  pause(0.01);
end;
