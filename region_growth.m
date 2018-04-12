function segmented = region_growth(gambar, x, y)

gambar = imread('gambar.jpg');
segmented = zeros(size(gambar));

[panjang, lebar, dimensi] = size(gambar);

threshold = 30;
initialPosition = gambar(x,y,1);

seed(1,1) = initialPosition + threshold;
seed(1,2) = initialPosition - threshold;

for i = 1:panjang
    for j = 1:lebar
        for k = 1:dimensi
            if (gambar(i,j,k) >= seed(1,2) && gambar(i,j,k) <= seed(1,1))
                segmented(i,j,k) = gambar(i,j,k);
            end
        end
    end
end