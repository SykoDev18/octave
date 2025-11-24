# Rotación-Escalación-Traslación 2D - TSRP
# Autor: Marco Antonio Miranda Muñoz
clc; clear all; close all;
format short;
output_precision(2);

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
# Autor: Marco Antonio Miranda Muñoz
# Ajustar posiciones para centrar en el origen y asegurar que quepan dentro de la cuadrícula después de transformaciones
P(1,:) = P(1,:) - 10;
P(2,:) = P(2,:) - 9.5;

nVertices = size(P,2);
fprintf('Numero de vertices en P: %d\n', nVertices);

# Define la matriz de rotación 2D
alfa = 90;
R = [ cosd(alfa)  -sind(alfa)   0;
      sind(alfa)   cosd( alfa)   0;
         0          0           1 ];

# Define la matriz de escalación
Sx = 3;
Sy = 3;
S = [ Sx  0    0;
      0  Sy    0;
      0   0    1 ];
# Autor: Marco Antonio Miranda Muñoz
# Define la matriz de traslación 2D (ajustada para más separación)
Tx = -30;
Ty = 0;
T = [ 1  0   Tx;
      0  1   Ty;
      0  0    1 ];

# Transformación geométrica
Pr = R * P;
Ps = S * Pr;
Pp = T * Ps;

# Offsets para separar las figuras en la gráfica
offset_original = 60;
offset_rotated = 20;
offset_scaled = -20;
offset_final = -60;
# Autor: Marco Antonio Miranda Muñoz
# --- Graficar ---
figure; hold on;
plot(P(1,:) + offset_original, P(2,:), "-+b", "LineWidth", 1);       # Original en azul
plot(Pr(1,:) + offset_rotated, Pr(2,:), "--*b", "LineWidth", 1);     # Rotada en azul dashed
plot(Ps(1,:) + offset_scaled, Ps(2,:), "--*g", "LineWidth", 1);      # Escalada en verde dashed
plot(Pp(1,:) + offset_final, Pp(2,:), "--*r", "LineWidth", 1);       # Final en rojo dashed

dx = 80; dy = 40;  # Aumentar dx para acomodar la separación
axis([-dx dx -dy dy]);
title("Flor - ROTACION-ESCALACION-TRASLACION 2D (TSRP)");
text(offset_original + 2, -1, "ORIGINAL");
text(offset_rotated + 2, -1, "ROTADA");
text(offset_scaled + 2, -1, "ESCALADA");
text(offset_final - 15, 1, "TRANSFORMADA FINAL");
text(0, -35, "Marco Antonio Miranda Muñoz", "fontsize", 22, "color", "b");

# Ejes
plot([-dx dx],[0 0], "-+m");
plot([0 0],[-dy dy], "-+m");
# Autor: Marco Antonio Miranda Muñoz
# Mostrar en consola adaptado a la flor (mostrando solo primeros 7 vértices para brevedad)
Sx
Sy
S
Tx
Ty
T
alfa
R
P = P(:,1:7)
Pp = Pp(:,1:7)
