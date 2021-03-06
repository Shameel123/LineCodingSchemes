clc;
clear all;
close all;
data = [ 0 1 0 0 1 1 1 0 ]
t = 0:0.001:1; %time duration of single pulse
digital_signal = [];
time = [];
for i = 1:1:numel(data)
    if(data(i)==0)
       digital_signal = [digital_signal ones(1,length(t))]
    else
       digital_signal = [digital_signal zeros(1,length(t)) ];
    end
    time = [time t]; 
    t = t + 1;
end
% Plot the Digital Signal
 
plot(time,digital_signal,'r','LineWidth',3); 
xlabel('Time (bit period)'); 
ylabel('Amplitude'); title('Unipolar NRZ coding'); 
axis([0 time(end) -.1 1.1]); 
grid on;

