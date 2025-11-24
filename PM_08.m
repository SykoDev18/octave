clc #Limpiar la "ventana de comandos"
clear all #Elimina todas las variables creadas
close all #Cierra todas las ventanas creadas
pkg load image; #Cargar paquete de imágenes

# Miranda Muñoz Marco Antonio 501

I_RGB=imread('cyberpunk.jpg');
I_GRIS= rgb2gray(I_RGB);
[r c] = size(I_GRIS)

figure 1
subplot(2,1,1)
imshow(I_GRIS); title("Imagen GRIS")
text(0, 2500, "Miranda Muñoz Marco Antonio", "fontsize", 15)
axis("on")

subplot(2,1,2)
imhist(I_GRIS)

#Miranda Muñoz Marco Antonio
