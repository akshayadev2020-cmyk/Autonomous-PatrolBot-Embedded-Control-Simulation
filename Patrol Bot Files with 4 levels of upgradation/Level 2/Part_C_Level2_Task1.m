s = tf('s');
P = 20 / (s^2 + 14*s + 42);
Kp = 5.0;  
Ki = 15.0; 
Kd = 0.2;  
C = pid(Kp, Ki, Kd);
T = feedback(C * P, 1);

figure;
step(T);
title('Closed-Loop Wheel Speed Control');
xlabel('Time (seconds)');
ylabel('Speed (rad/s)');
grid on;

info = stepinfo(T);
disp('--- Performance Metrics ---');
fprintf('Rise Time: %.4f s (Target: < 1.5s)\n', info.RiseTime);
fprintf('Overshoot: %.2f %% (Target: < 10%%)\n', info.Overshoot);
fprintf('Steady-State Error: %.2f %% (Target: 0%%)\n', (1 - dcgain(T))*100);