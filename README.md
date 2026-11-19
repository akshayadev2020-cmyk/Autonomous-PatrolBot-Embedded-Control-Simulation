# Autonomous-PatrolBot-Embedded-Control-Simulation

1) Modeled DC motor dynamics from first principles into standard state-space representations, designing closed-loop PID and optimal
   Linear Quadratic Regulator (LQR) controllers in MATLAB/Simulink to regulate wheel speed with <10% overshoot and zero steadystate
   error.
3) Engineered a differential-drive mechatronic simulation in Tinkercad, integrating an L293D motor driver and debounced logic inputs to
   translate manual commands into precise directional movement.
4) Developed a proximity-based collision avoidance control loop using dual ultrasonic sensors, programming the system to execute
   proportional motor speed reduction and autonomous emergency braking.
5) Programmed a non-blocking Finite State Machine (FSM) in Arduino C++ utilizing the millis() function to monitor simulated battery
   voltage, dynamically transitioning operational states and triggering hardware safety overrides at critical power thresholds.
