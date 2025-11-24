clc #Limpiar la "ventana de comandos"
clear all #Elimina todas las variables creadas
close all #Cierra todas las ventanas creadas
pkg load image; #Cargar paquete de imágenes

# Miranda Muñoz Marco Antonio 501

n = 0
g = 127
b = 255

I_GRIS = [
          b b b b b b b b b b b b b b b;
          b b b b n n n n n b b b b b b;
          b b b n g b b g g n b b b b b;
          b b n n g n n g g g n n b b b;
          b n b n n b b b b g n b n b b;
          b n b n b n n n n b n b n b b;
          b n b n n n n n n n n b n b b;
          b n g g n n n n n n g g n b b;
          b b n b b n b b n b b n b b b;
          b b n g b n b b n b g n b b b;
          b n g n g b b b b g n g n b b;
          n b g n n n n n n n n g n b b;
          n b n n g g g g n b b g n b b;
          b n n g b b b b n b b n b b b;
          b b n n n n g g g n n b b b b;
          b n n g b b n n n n n n b b b;
          b b n n n n n n n n n b b b b];

I_GRIS = uint8(I_GRIS)
[r c nm] = size(I_GRIS)

figure 1
subplot(1,2,1)
imshow(I_GRIS);
title("Imagen escala de grises (15x15)")
axis("on")

subplot(1,2,2)
#imshow(I_M/20+220);
I_GRIS2 = I_GRIS/20 + 50
imshow(I_GRIS2);
title("Imagen escala de grises(Modificacion)")
axis("on")

subplot(1,2,1)
text(0, 20, "Marco Antonio Miranda Muñoz", "fontsize", 25)

# MIranda Muñoz Marco Antonio 501
