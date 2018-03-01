function c = crop(gambar)
c = zeros(size(gambar));
c = uint8(gambar);

c = gambar(200:end,1:300,:);