clc #Limpiar la "ventana de comandos"
clear all #Elimina todas las variables creadas
close all #Cierra todas las ventanas creadas
pkg load image; #Cargar paquete de imágenes
# Miranda Muñoz Marco Antonio 501

I_color = imread('frutas.jpg'); #Carga imagen a color
I_gris  = rgb2gray(I_color); #Convierte una imagen
                 # a color (RGB) a escala de grises

[rc cc mc] = size(I_color) #Pedir las dimenciones de la imagen
[rg cg mg]  = size(I_gris)  # renglones, columnas y No. de matrices

# Generar una ventana para mostrar una imagen
figure 1

# Selecciona la primera subdivision de la ventana
subplot(2,1,1)
imshow(I_color);
title("Imagen a color RGB")
axis("on") # Activa la vista de los ejes

# Selecciona la segunda subdivision de la ventana
subplot(2,1,2)
imshow(I_gris);
title("Imagen a escala de GRISES")
axis("on") # Activa la vista de los ejes

# Marco Antonio Miranda Muñoz
