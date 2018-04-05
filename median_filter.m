function med = median_filter(gambar)

[panjang, lebar, dimensi] = size(gambar);
m = zeros(size(gambar));

for i = 2:panjang-1
    for j = 2:lebar-1
        X = [gambar(i-1,j-1) gambar(i-1,j) gambar(i-1,j+1); gambar(i,j-1) gambar(i,j) gambar(i,j+1); gambar(i+1,j-1) gambar(i+1,j) gambar(i+1,j+1)];
        m(i,j,:) = ceil(median(X, 2));
    end
end

med = uint8(m);