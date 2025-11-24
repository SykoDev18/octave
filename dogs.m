clc #Limpiar la "ventana de comandos"
clear all #Elimina todas las variables creadas
close all #Cierra todas las ventanas creadas
pkg load image; #Cargar paquete de imágenes
# Ing. Guillermo Castañeda Ortiz
#****************************

IM_R = [ 0    127   255  # Rojo
        255    0     0
        255    0    255 ];

IM_G = [ 0    127   255  # Verde
         0    255    0
        255   255    0  ];

IM_B = [ 0    127   255  # Azul
         0     0    255
         0    255   255 ];

I_RGB(:,:,1) = IM_R;
I_RGB(:,:,2) = IM_G;
I_RGB(:,:,3) = IM_B;

I_RGB = uint8(I_RGB)
# renglones, columnas y No. de matrices
[r c nm]  = size(I_RGB)

#Guillermo Castañeda Ortiz
figure 1
imshow(I_RGB);
title("Imagen RGB")
xlabel("Pixeles")
axis("on")

text(0, 3.2, "Guillermo Castañeda Ortiz", "fontsize", 30)

# Ing. Guillermo Castañeda Ortiz
