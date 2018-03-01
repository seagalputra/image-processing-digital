function r = rotate(gambar)
r = zeros(size(gambar,2), size(gambar,1), 3);

[panjang, lebar, dimensi] = size(gambar);

k = size(gambar,1);
for i = 1:panjang-1
    for j = 1:lebar-1
        r(j,k,:) = gambar(i,j,:);
    end
    k = k - 1;
end
r = uint8(r);