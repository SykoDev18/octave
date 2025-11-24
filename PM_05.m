clc #Limpiar la "ventana de comandos"
clear all #Elimina todas las variables creadas
close all #Cierra todas las ventanas creadas
pkg load image; #Cargar paquete de imágenes

# Miranda Muñoz Marco Antonio 501

n = 0
g = 127
b = 255

I_GRIS = [  b g b g b g b g b g;
            g b g g b g g b g b;
            g g n n g g n n g g;
            b g n n g g n n g b;
            g g g n n n n g g g;
            g b n n n n n n b g;
            g g n n n n n n g g;
            b g n n g g n n g b;
            g g n n g g n n g g;
            g b g g b g g b g g];

I_GRIS = uint8(I_GRIS)
[r c nm] = size(I_GRIS)

figure 1
subplot(1,2,1)
imshow(I_GRIS);
title("Imagen escala de grises (5x5)")
axis("on")

subplot(1,2,2)
#imshow(I_M/20+220);
I_GRIS2 = I_GRIS/20 + 50
imshow(I_GRIS2);
title("Imagen escala de grises(Modificacion)")
axis("on")

subplot(1,2,1)
text(0, 15, "Marco Antonio Miranda Muñoz", "fontsize", 25)

# MIranda Muñoz Marco Antonio 501
