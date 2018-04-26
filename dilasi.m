function dil = dilasi(gambar)

gambar = imbinarize(gambar);
[panjang lebar] = size(gambar);
temp = zeros([panjang lebar]);
dil = uint8(temp)

kernel = [1 1 1; 1 1 1; 1 1 1];
for i = 2:panjang-1
    for j = 2:lebar-1
        if gambar(i-1,j-1) * kernel(1,1) || gambar(i-1,j) * kernel(1,2) || gambar(i-1,j+1) * kernel(1,3) || gambar(i,j-1) * kernel(2,1) || gambar(i,j) * kernel(2,2) || gambar(i,j+1) * kernel(2,3) || gambar(i+1,j-1) * kernel(3,1) || gambar(i+1,j) * kernel(3,2) || gambar(i+1,j+1) * kernel(3,3) == 1
            dil(i,j) = 1;
        end
    end
end