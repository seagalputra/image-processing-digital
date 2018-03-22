function b = blur(gambar)

[panjang, lebar, dimensi] = size(gambar);
b = zeros(size(gambar));
b = uint8(gambar);

kernel = (1/16)*[1 2 1; 2 4 2; 1 2 1];

for i = 2:panjang-1
    for j = 2:lebar-1
        for k = 2:dimensi
            b(i,j,k) = gambar(i-1,j-1,k) * kernel(1,1) + gambar(i-1,j,k) * kernel(1,2) + gambar(i-1,j+1,k) * kernel(1,3) + gambar(i,j-1,k) * kernel(2,1) + gambar(i,j,k) * kernel(2,2) + gambar(i,j+1,k) * kernel(2,3) + gambar(i+1,j-1,k) * kernel(3,1) + gambar(i+1,j,k) * kernel(3,2) + gambar(i+1,j+1,k) * kernel(3,3);
        end
    end
end