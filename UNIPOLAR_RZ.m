clc;
clear all;
close all;
data = [ 1 0 1 1 ]
t = 0:0.001:1; %time duration of single pulse
digital_signal = []; 
time = [];
for i = 1:1:numel(data)
    pulse_half_1 = t(1:fix(numel(t)/2)); 
    pulse_half_2 = t((fix((numel(t)/2))+1):numel(t));
    digital_signal = [digital_signal (data(i)==0)*zeros(1,length(pulse_half_1)) + (data(i)==1)*ones(1,length(pulse_half_1)) ];
    digital_signal = [digital_signal (data(i)==0)*zeros(1,length(pulse_half_2)) + (data(i)==1)*zeros(1,length(pulse_half_2)) ];
    time = [time t]; t = t + 1;
end
% Plot the Digital Signal

plot(time,digital_signal,'r','LineWidth',3); 
xlabel('Time (bit period)'); 
ylabel('Amplitude'); title('Unipolar RZ coding'); axis([0 time(end) -1.5 1.5]); 
grid on;

