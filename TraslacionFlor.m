# Traslación 2D básica - TP
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
nVertices = size(P,2);
fprintf('Numero de vertices en P: %d\n', nVertices);
# Autor: Marco Antonio Miranda Muñoz
# --- Matriz de traslación ---
Tx = -20;
Ty = -20;
T = [1 0 Tx; 0 1 Ty; 0 0 1];

Pp = T * P;

# --- Graficar ---
figure; hold on;
plot(P(1,:), P(2,:), "-+b", "LineWidth", 1);       # Original en azul
plot(Pp(1,:), Pp(2,:), "--*r", "LineWidth", 1);    # Transformada en rojo

dx = 20; dy = 20;
axis([-dx dx -dy dy]);
title("TRASLACION 2D (TP)");
text(12, 14, "ORIGINAL");
text(-8, -6, "TRANSFORMACION");
text(0, -18, "Marco Antonio Miranda Muñoz");

# Ejes
plot([-dx dx],[0 0], "-k");
plot([0 0],[-dy dy], "-k");
# Autor: Marco Antonio Miranda Muñoz

