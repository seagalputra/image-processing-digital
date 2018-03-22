function s = sharp(gambar)

[panjang, lebar, dimensi] = size(gambar);
s = zeros(size(gambar));
s = uint8(gambar);

kernel = [0 -1 0; -1 5 -1; 0 -1 0];

for i = 2:panjang-1
    for j = 2:lebar-1
        for k = 1:dimensi
            s(i,j,k) = gambar(i-1,j-1,k) * kernel(1,1) + gambar(i-1,j,k) * kernel(1,2) + gambar(i-1,j+1,k) * kernel(1,3) + gambar(i,j-1,k) * kernel(2,1) + gambar(i,j,k) * kernel(2,2) + gambar(i,j+1,k) * kernel(2,3) + gambar(i+1,j-1,k) * kernel(3,1) + gambar(i+1,j,k) * kernel(3,2) + gambar(i+1,j+1,k) * kernel(3,3);
        end
    end
end