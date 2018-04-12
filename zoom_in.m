function z = zoom_in(gambar, sy, sx)

ukuran = size(gambar);
tinggi = ukuran(1);
lebar = ukuran(2);

tinggi_baru = tinggi * sy;
lebar_baru = lebar * sx;

gambar2 = double(gambar);
for y = 1:tinggi_baru
    y2 = ((y-1) / sy) + 1;
    for x = 1:lebar_baru
        x2 = ((x-1) / sx) + 1;
        z(y, x) = gambar(floor(y2), floor(x2));
    end
end
z = uint8(z);