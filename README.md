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
'''
I have refered to Etkin for a good derivation of the linearized equations of motion. 
'''
