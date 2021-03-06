clc;
clear all;
close all;
data = [ 0 1 0 0 1 1 1 0 ]
t = 0:1; %time duration of single pulse
digital_signal = []; 
time = [];
sign = 1 %initially, let it be high.
for i = 1:1:numel(data)
    if(data(i)==1)
     %Inverse Signal if it matches previous signal
     sign=-sign
    end
    digital_signal = [digital_signal sign*ones(1,length(t)) ];
    time = [time t]; 
    t = t + 1;
end
 % Plot the Digital Signal
 
plot(time,digital_signal,'r','LineWidth',3); 
xlabel('Time (bit period)'); 
ylabel('Amplitude'); title('Bipolar NRZ coding'); 
axis([0 time(end) -1.5 1.5]); 
grid on;

