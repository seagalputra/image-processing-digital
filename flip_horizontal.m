function h = flip_horizontal(gambar)

h = zeros(size(gambar));
h = uint8(gambar);

[panjang, lebar, dimensi] = size(gambar);

for i = 1:panjang-1
    for j = 1:lebar-1
        for k = 1:dimensi
            h(i,lebar-j,k) = gambar(i,j,k);
        end
    end
end