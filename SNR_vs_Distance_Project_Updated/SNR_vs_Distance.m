
% SNR vs Distance in D2D Communication
d = 1:500;  % Distance in meters
Pt = 1;     % Transmit power (arbitrary units)
No = 1e-9;  % Noise power spectral density
alpha = 3; % Path loss exponent

% SNR calculation
snr = Pt ./ (d.^alpha * No);
snr_db = 10 * log10(snr);

% Plot
figure;
plot(d, snr_db, 'b', 'LineWidth', 2);
xlabel('Distance (m)');
ylabel('SNR (dB)');
title('SNR vs Distance in D2D Communication');
grid on;
