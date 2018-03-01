function f = flip_vertical(gambar)

f = zeros(size(gambar));
f = uint8(gambar);

[panjang, lebar, dimensi] = size(gambar);

for i = 1:panjang-1
    for j = 1:lebar-1
        for k = 1:dimensi
            f(panjang-i,j,k) = gambar(i,j,k);
        end
    end
end
            