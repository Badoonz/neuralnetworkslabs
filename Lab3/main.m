% Define the input/output mappings from slides 14 and 15
inputs_14 = [1, 1, 1, 1, -1, -1, -1, -1; 1, 1, -1, -1, 1, 1, -1, -1; 1, -1, 1, -1, 1, -1, 1, -1];

outputs_14 = [1, 1, 1, -1, 1, 1, -1, -1];

inputs_15 = inputs_14;
outputs_15 = [1, -1, -1, -1, 1, -1, 1, -1];

% Normalized Hebbian weights
hebbian_weights = [-0.25, -0.1, 0.125, 0.325];

% Experiment 1: Start learning from random weights
[random_weights_14, random_iterations_14] = error_correction(inputs_14, outputs_14, [], 1000);
[random_weights_15, random_iterations_15] = error_correction(inputs_15, outputs_15, [], 1000);

% Experiment 2: Start learning from normalized Hebbian weights
[hebbian_weights_15, hebbian_iterations_15] = error_correction(inputs_15, outputs_15, hebbian_weights, 1000);

% Display the results
disp("Random weights for input/output mapping from slide 14:");
disp(random_weights_14);
printf("Number of iterations: %d\n\n", random_iterations_14);

disp("Random weights for input/output mapping from slide 15:");
disp(random_weights_15);
printf("Number of iterations: %d\n\n", random_iterations_15);

disp("Hebbian weights for input/output mapping from slide 15:");
disp(hebbian_weights_15);
printf("Number of iterations: %d\n\n", hebbian_iterations_15);

