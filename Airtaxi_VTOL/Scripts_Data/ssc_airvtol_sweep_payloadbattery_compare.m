% Code to sweep battery capacity and payload for electric aircraft examples
%
% Copyright 2017-2019 The MathWorks, Inc.

%% Run sweeps for pure electric network
modelname = 'ssc_airvtol_elec';
ssc_airvtol_sweep_payloadbattery
temp_dist_payl_ele_pure = temp_dist_payl_ele;
pause(2)

%% Run sweeps for hybrid electric network
modelname = 'ssc_airvtol_elec_hybrid';
ssc_airvtol_sweep_payloadbattery
temp_dist_payl_ele_hybr = temp_dist_payl_ele;
pause(2)

%% Plot simulation results
% Prepare data for surface plotting
[payGrid,battGrid] = meshgrid(payload_set,battery_capacity_set);

%% Plot results 
ssc_airvtol_sweep_payloadbattery_compare_plot