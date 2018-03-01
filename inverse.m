function i = inverse(gambar)
i = zeros(size(gambar));
i = uint8(gambar);

i = (255 - gambar(:,:,1)) + (255 - gambar(:,:,2)) + (255 - gambar(:,:,3));