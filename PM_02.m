clc;            % Limpiar la "ventana de comandos"
clear;          % Elimina variables creadas
close all;      % Cierra todas las ventanas
pkg load image; % Cargar paquete de imágenes

# Miranda Muñoz Marco Antonio 501

I_color1  = imread('mona.jpg');       % Imagen 1 color
I_gris1   = rgb2gray(I_color1);

I_color2 = imread('axolote.jpg');    % Imagen 2 color
I_gris2  = rgb2gray(I_color2);

I_color3 = imread('cacahuate.jpg');  % Imagen 3 color
I_gris3  = rgb2gray(I_color3);

[rc cc mc] = size(I_color1);
[rg cg mg] = size(I_gris1);

[rc2 cc2 mc2] = size(I_color2);
[rg2 cg2 mg2] = size(I_gris2);

[rc3 cc3 mc3] = size(I_color3);
[rg3 cg3 mg3] = size(I_gris3);


# Generar una ventana para mostrar una imagen
figure 1

# Selecciona la primera subdivision de la ventana
subplot(2,3,1)
imshow(I_color1);
title("Imagen a color RGB")
axis("on") # Activa la vista de los ejes

# Selecciona la segunda subdivision de la ventana
subplot(2,3,4)
imshow(I_gris1);
title("Imagen a escala de GRISES")
axis("on") # Activa la vista de los ejes



# Selecciona la primera subdivision de la ventana
subplot(2,3,2)
imshow(I_color2);
title("Imagen a color RGB")
axis("on") # Activa la vista de los ejes

# Selecciona la segunda subdivision de la ventana
subplot(2,3,5)
imshow(I_gris2);
title("Imagen a escala de GRISES")
axis("on") # Activa la vista de los ejes



# Selecciona la primera subdivision de la ventana
subplot(2,3,3)
imshow(I_color3);
title("Imagen a color RGB")
axis("on") # Activa la vista de los ejes

# Selecciona la segunda subdivision de la ventana
subplot(2,3,6)
imshow(I_gris3);
title("Imagen a escala de GRISES")
axis("on") # Activa la vista de los ejes

subplot(2,3,1)
text(0, 1050, "Marco Antonio Miranda Muñoz", "fontsize", 25)

# Marco Antonio Miranda Muñoz 501
