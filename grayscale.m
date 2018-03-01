function g = grayscale(gambar)
g = zeros(size(gambar));
g = uint8(gambar);

g = .299*gambar(:,:,1) + .587*gambar(:,:,2) + .114*gambar(:,:,3);