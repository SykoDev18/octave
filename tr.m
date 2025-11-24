# Traslación 2D - TP ANIMACIÓN
# Autor: Marco Antonio Miranda Muñoz
clc; clear all; close all;
format short;
output_precision(2);
disp("Marco Antonio Miranda Muñoz");

# --- Definir dibujo (P1 + nan + P2) - Tortuga con flor ---
P1 = [
  3.0000  2.8375  2.3674  1.6408  0.7364  -0.2477  -1.2051  -2.0318  -2.6384  -2.9591  -2.9591  -2.6384  -2.0318  -1.2051  -0.2477  0.7364  1.6408  2.3674  2.8375  3.0000  3.0000  -1.2000  0.0000  1.2000  3.0000  -0.2477  -2.0477  -2.6477  -1.4477  0.7364  2.5364  3.1364  1.9364  0.7364  -1.0636  -1.6636  -0.4636  -0.2477  1.5523  2.1523  0.9523;
  -5.0000  -4.5130  -4.0787  -3.7443  -3.5459  -3.5051  -3.6263  -3.8964  -4.2861  -4.7531  -5.2469  -5.7139  -6.1036  -6.3736  -6.4949  -6.4541  -6.2557  -5.9213  -5.4870  -5.0000  -3.5000  -2.5000  -2.0000  -2.5000  -3.5000  -3.5051  -2.5051  -2.0051  -3.0051  -6.4541  -5.4541  -4.9541  -5.9541  -6.4541  -7.4541  -7.9541  -6.9541  -3.5051  -4.5051  -5.0051  -4.0051;
   1      1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1       1
];

P2 = [
  -0.4  -1.2  -0.8  -1.0  -1.6  -1.2   0.4   1.2   0.8   1.0   1.6   1.2   0.3   0.8   0.5  -0.3  -0.8  -0.5   0.0   0.4  0.6  0.4  0.0  -0.4;
   4.6   4.0   3.6   3.8   3.2   2.9   4.6   4.0   3.6   3.8   3.2   2.9   2.8   2.4   2.1   2.8   2.4   2.1   3.5   4.1  3.97 3.50  3.03  2.90;
   1      1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1     1    1    1    1     1
];

nan_column = [NaN; NaN; 1];

P = [P1 nan_column P2];

# Ajustar el tamaño inicial

Sx = 0.7;

Sy = 0.7;

S = [ Sx  0    0

      0  Sy    0

      0   0    1 ];

# Ajustar la posición inicial

Tx = 14;

Ty = 10;

T = [ 1  0   Tx

      0  1   Ty

      0  0    1 ];

# Aplicar las 2 transformaciones anteriores

P0 = P;

P = T*S*P;

# Matriz de desplazamiento de la animación

Tx = -0.5;

Ty = -0.4;

T = [ 1  0   Tx

      0  1   Ty

      0  0    1 ]

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

  title("Animación - Traslación 2D")

  text(-10, -10, "Marco Antonio Miranda Muñoz",

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

  pause(0.025)

end;
