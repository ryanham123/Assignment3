
clear all
close all
clc

cd code

%%  Introduction
% The purpose of assignment 3 was to combined assignment 1 and and
% assignment 2 together.The purpose of assignment 1 was to modeling the 
% carriers as a population of electrons in an N-type Si semiconductor 
% crystal. The purpose of assignment 2 was to solve Laplace's equation 
% using finite difference method for electrostatic potential problems.


%% Part 1 Introduction 
% For part 1 of the assignment I started with the Monte-Carlo simulator
% from Assignment-1 without the bottle-neck. The applied voltage was set 
% to 0.1 volts on the right side and 0 volts on the left side.  The first
% objective was calculating the electric field, force on the electron
% and acceleration of the electron. The second objective was to create
% a 2-D plot of particle trajectories.  The third objective was to 
% determine the formula for calculating current and to plot current as
% a function of time.  The final objective was to create an electron
% density and temperature map at the end of the simulation.

%% Part 1 Figures and Command Line Outputs

cd part_1_final

part1

cd ..   


%% Part 1 Conclusion
% The results of part 1 are as expected. The electric field strength is
% 5.000e+05 V/m. The force on a electron is 8.010e-14 N.  The acceleration 
% of an electron is 3.382e+17 m/s^2.  When looking at the 2-D plot of 
% particle trajectories the particles still act the same way as they did 
% in part 2 of assignment 1 except for the fact that the electrons paths
% are curved due to the electron acceleration. The formula for determining 
% current is 
%
% $$I = \bar{v_{x}} *n*q*W$$
% 
% where $\bar{v_{x}}$ is the average drift velocity in the x direction, n 
% is the electron density , q is the elementary charge of an electron, and
% W is the length of the y direction boundary. 
%
% When looking at the current as a function of time the current increases
% but eventually remains relatively constant at around 0.0106 A. This 
% observation agrees with theory because the electrons continue to 
% accelerate due to the electric field but is eventually limited by 
% scattering. When looking at the electron density and temperature map at 
% the end of the simulation both the electrons and temperature were 
% uniformly distributed. This makes sense given that the forces on the 
% electron do not change depending on the location of the electron.  





%% Part 2 Introduction 
% The objective of part two was to create a model where V = 0.8 Volt at
% x=0 and V = 0 volts at x = 200 nm. The top and bottom boundary conditions
% where set so that dV/dy = 0. Two boxed areas where also added with low 
% conductivity which created a bottleneck. A voltage map was than solved 
% for using finite difference method and using the voltage map an electric
% field vector plot was created. 


%% Part 2 Figures and Command Line Outputs
cd part_2_final

part2

cd ..

%% Part 2 Conclusion
% The results of part two are as expected. The voltage map relating to the 
% first objective changed quickly near the barrier and satisfied the 
% boundary conditions. The voltage changing quickly near the barrier makes
% sense given the resistance is large near the barrier and ohms law states 
% that the voltage drop is proportional to resistance. The electric field 
% in general points from left to right and are strongest at the barrier
% corners. The electric field is also strong within the barrier. 
% This result agrees with theory as areas with high resistance and constant
% current have relatively large electric field strengths.


%% Part 3 Introduction 
% The objective of part three was to use the electric field calculated for 
% the bottle neck in part 2 as input to the Monte Carlo simulation in 
% part 1.  Once part 1 and part 2 were working properly together two 
% figures where created. The first figure was a 2-D plot of particle
% trajectories. The next plot was an electron density map for the final
% electron positions. 



%% Part 3 Figures and Command Line Outputs
cd part_3_final

part3

cd ..

%% Part 3 Conclusion
% The results of part 3 where as expected. When looking at the 2-D plot 
% of particle trajectories the particles bounce off the boxes correctly 
% and the electrons paths are curved due to the electron accelerating in 
% the electric field. When looking at the electron density map for the
% final electron positions you can see a build up of electrons on the 
% left side of the barrier.  This observation agrees with theory because 
% the electrons are accelerated towards the barrier but can not enter the
% barrier so they build up. One future step to make this simulation more
% accurate is by adding more electrons and increasing the mesh size when 
% calculating the voltage map. Another future step to make this simulation 
% more accurate is including the effect of other electrons in the simulation
% due to that fact that they are charge carriers. 



%% Conclusion
% Overall Assignment 3 was a success. I was able to complete every 
% objective and my results matched my expectation. 