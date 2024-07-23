# Autopilot For C5-A Airplane
This project was done at Cairo University. The objective was to design an Autopilot for a Fixed-wing aircraft which was C5-A. The stability derivatives were taken from the NASA book. Every step has it's task to do in a certain week the final controllers can be found in the Testing file.
## Task Explination
# 1) Airplane Model
In this file you can find Write a code that calculates the (Aerodynamic & Thrust) (Forces & Moments) acting on an Airplane due to pilots input signals ( 𝛿𝑎𝑖𝑙𝑒𝑟𝑜𝑛 , 𝛿𝑟𝑢𝑑𝑑𝑒𝑟 , 𝛿𝑒𝑙𝑒𝑣𝑎𝑡𝑜𝑟 , 𝛿𝑡ℎ𝑟𝑢𝑠𝑡 ) knowing its stability & control derivatives at nominal flight condition. 
Consult the following document (NASA CR-2144 AIRCRAFT HANDLING QUALITIES DATA) as a reference for the Airplanes’ parameters including the (Stability derivatives, Mass, Inertias) at the Reference Flight conditions. Each team will be assigned an Airplane and a Flight condition. 
Combine the (Airframe Model) code with the (RBD solver) you built in Numerical Solution of ODE in order to build the complete (Airplane Non-linear Flight Simulator)”. The idea is to use the (Pilots inputs) to calculate the Aerodynamic & Thrust (Forces & Moments) acting on the airplane, and then use these calculated Forces & Moments to solve the (RBD) equations to calculate the new states of the 
airplane in the next time step, and repeat this procedure at each time step. 
![image](https://github.com/user-attachments/assets/36b474c3-e602-4d0c-b3e2-a9ce70abd38b)
![image](https://github.com/user-attachments/assets/2dc911f1-1168-4664-b25d-662d5e92b7d2)
# 2) Linerization and Approximation
Linearize the complete set of the equations of motion of fixed wing airplane at a symmetric flight reference condition at which reference angle of attack (αo ≠ 0). Decouple the equations into Longitudinal & Lateral dynamics and write them in the state space form.

<mark>I have refered to Etkin for a good derivation of the linearized equations of motion.</mark>

### Longitudinal Part
State the short period & Long period approximations of the Longitudinal dynamics

Find the step response of your airplane using all the models of the longitudinal dynamics you have obtained (Non-linear simulation, Linear full model, Short period approximation, Long period approximation). Compare & discuss the results introduced by the different models at each of the following set of inputs respectively (each one at a time) 

Extract all the transfer functions of your airplane using all the models of the longitudinal dynamics you have obtained (Linear full model, Short period approximation, Long period approximation). Plot & Compare the Root locus & Bode plot of the different representations of each transfer function. 
### Lateral Part
State the 3-DOF, 2-DOF, 1-DOF approximations of the Lateral dynamics
Find the step response of your airplane using all the models of the lateral dynamics you have obtained (Non-linear simulation, Linear full model, 3-DOF, 2-DOF, 1-DOF). Compare & discuss the results introduced by the different models at each of the following set of inputs respectively (each one at a time) 
Extract all the transfer functions of your airplane using all the models of the lateral dynamics you have obtained (Linear full model, 3-DOF, 2-DOF, 1-DOF). Plot & Compare the Root locus & Bode plot of the different representations of each transfer function. 
![image](https://github.com/user-attachments/assets/7b4f1191-5bd4-4e48-b26c-a0883af950cd)

# 3) LONGITUDINAL AUTOPILOT PITCH CONTROL 
Design a pitch controller for the airplane in your assigned flight condition. 
The objective in this part of our project is to design “The longitudinal Autopilot” for a conventional fixed wing airplane. The requirement for the longitudinal autopilot is to control the motion of the airplane in the longitudinal plane, shortly “it controls the elevator & thrust to achieve the desired command of 
Altitude or Climb angle.” 
We will use the linearized state space model of the longitudinal dynamics (4x4) to represent the motion of the airplane in the longitudinal plane, which is a MIMO (Multi input Multi Output system), and to design our controllers we will use our previous studies about the LTI (linear time invariant) SISO (Single Input Single Output system) to design our controllers like (linear PID and compensators). This method is called “Successive loop closure”. 

# 4) LONGITUDINAL AUTOPILOT VELOCITY AND ALTITUDE CONTROL 
Design a velocity controller and an altitude controller for the airplane in your assigned flight condition. 
The objective in this part of our project is to design “The longitudinal Autopilot” for a conventional fixed wing airplane. The requirement for the longitudinal autopilot is to control the motion of the airplane in the longitudinal plane, shortly “it controls the elevator & thrust to achieve the desired command of Altitude or Climb angle.” 

# 5) LATERAL AUTOPILOT
The objective in this part of our project is to design “The lateral Autopilot” for a conventional fixed wing airplane. The role of the lateral autopilot is to control the motion of the airplane in the lateral-directional plane, shortly “it controls the rudder & aileron to achieve a coordinated turn”, and when added to “The longitudinal Autopilot” we can achieve the so-called “coordinated level turn” 
As before, we will use the linearized state space model of the lateral dynamics (5x5) to represent the motion of the airplane in the lateral-directional plane, and the “Successive loop closure” method will be used to design the lateral autopilot. 

# 6) Autopilot Testing and Automomus Mission
The objective in this part of our project is to test our controllers “The lateral + longitudinal Autopilots” for a conventional fixed wing airplane on a more realistic model of the airplane dynamics, which is the 6DOF nonlinear airplane equations of motion. 
The nonlinear model of the airplane dynamics is more accurate than the linearized state space model of the airplane and it inherits the “coupling” between the longitudinal & lateral dynamics of the airplane, so the testing the controllers with the nonlinear model will get both the “longitudinal & lateral” controllers in action simultaneously, controlling the 4 control actions “aileron, rudder, elevator & thrust” to maintain the required attitude & altitude of the airplane performing “coordinated-level turns” and “climb/descent” commands. A specific set of tests will be performed one by one in order to test each part of the Autopilot separately, and finally a complete mission that includes “climb, cruise, turn, descent” will be performed to check all the functionalities of the Autopilot at the same time 
![image](https://github.com/user-attachments/assets/fc627b96-9e7f-4b7f-b95e-087ce7b3687c)
