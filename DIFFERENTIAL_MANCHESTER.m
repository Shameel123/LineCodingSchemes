clc;
clear all;
close all;
data = [ 0 1 0 0 1 1 1 0 ]
t = 0:0.001:1; %time duration of single pulse
digital_signal = []; 
time = [];
sign = 1
for i = 1:1:numel(data)
    pulse_half_1 = t(1:fix(numel(t)/2));
    pulse_half_2 = t((fix((numel(t)/2))+1):numel(t));
    if (data(i)==1)
        sign=-sign
    end
    digital_signal = [digital_signal -1*sign*ones(1,length(pulse_half_1)) ]
    digital_signal = [digital_signal sign*ones(1,length(pulse_half_2)) ]
    time = [time t]; t = t + 1; 
end;
% Plot the Digital Signal
 
plot(time,digital_signal,'r','LineWidth',3); 
xlabel('Time (bit period)'); 
ylabel('Amplitude'); title('Manchester Coding'); 
axis([0 time(end) -1.5 1.5]); 
grid on;
