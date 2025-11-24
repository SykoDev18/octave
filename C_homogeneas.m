# Traslación 2D básica
# Marco Antonio Miranda Muñoz

clc  #Borra la ventana de comandos
clear all  #Borra todas las variables
close all  #Cierra todas las ventanas abiertas
#format rat
format short
output_precision(2) # utilizar 2 decimales
# Marco Antonio Miranda Muñoz

#***********************************
# Coordenadas homogeneas de una casa
#P = [ 3  5  5  1  1  3  3  4  4  3
#      6  4  1  1  4  6  3  3  4  4
#      1  1  1  1  1  1  1  1  1  1 ]

P1 = [ 3  5  5  1  1  3
       6  4  1  1  4  6
       1  1  1  1  1  1 ];

P2 = [ 3  4  4  3
       3  3  4  4
       1  1  1  1 ];

P = [ P1 P2 ];
mP = P(:,1:4)

#***********************************
#***********************************

# Definir matriz de traslación
Tx = -10
Ty = -7
T = [ 1   0   Tx
      0   1   Ty
      0   0    1 ]

# Operación de "Traslación"
Pp = T*P;
mPp = Pp(:,1:4)

#***********************************
#***********************************
# Marco Antonio Miranda Muñoz

# Graficar P y Pp
hold on
plot(P(1,:), P(2,:), "-+b") # Original en azul
plot(Pp(1,:), Pp(2,:), "--*r") # cambio en rojo

# Darle formato a la gráfica
# Establecer los limites
# de visualizacion
dx = 10;
dy = 10;
axis( [-dx  dx  -dy  dy] )

title("TRASLACION 2D")
text(2, -1, "ORIGINAL")
text(-8,-7, "TRANSFORMACION")
text(1, -6, "Marco Antonio Miranda Muñoz")


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
# Marco Antonio Miranda Muñoz
