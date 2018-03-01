function hist = histogram(gambar)
gambar = imread('gambar.jpg');
temp_hist_R = zeros(1, 256);
temp_hist_G = zeros(1, 256);
temp_hist_B = zeros(1, 256);

R = gambar(:,:,1);
G = gambar(:,:,2);
B = gambar(:,:,3);

[panjang, lebar, dimensi] = size(gambar);

% Red Histogram
for i = 1:panjang
    for j = 1:lebar
        for k = 1:dimensi
            temp_hist_R(R(i,j,1)+1) = temp_hist_R(R(i,j,1)+1) + 1;
            temp_hist_G(gambar(i,j,2)+1) = temp_hist_G(gambar(i,j,2)+1) + 1;
            temp_hist_B(gambar(i,j,3)+1) = temp_hist_B(gambar(i,j,3)+1) + 1;
        end
    end
end

R_hist = temp_hist_R;
G_hist = temp_hist_G;
B_hist = temp_hist_B;
figure(1);
subplot(131),bar(R_hist),title('Red Histogram');
subplot(132),bar(G_hist),title('Green Histogram');
subplot(133),bar(B_hist),title('Blue Histogram');