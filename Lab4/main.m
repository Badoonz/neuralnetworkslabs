% Define the discrete input/output data
inputs = [0, 2, 1; 1, 2, 3; 2, 1, 3];
outputs = [0; 1; 2];
k = 4;

% Add a bias input of 1 to each input vector
inputs = [ones(size(inputs, 1), 1), inputs];

% Define a function to transform the continuous outputs back to discrete values
function y = continuous_to_discrete(x, k)
  if x < -1 || x > 1
    error('Input x must be within [-1, 1]');
  end
  y = floor((x + 1) * k / 2);
end

% Run the learning algorithm with different tolerance values
tolerances = [0.01, 0.05, 0.1];

for i = 1:length(tolerances)
  % Transform the inputs and outputs to continuous values
  inputs_continuous = arrayfun(@(x) discrete_to_continuous(x, k), inputs);
  outputs_continuous = arrayfun(@(x) discrete_to_continuous(x, k), outputs);

  % Apply the error-correction learning algorithm
  [weights, iterations, rmse_values] = error_correction_learning(inputs_continuous, outputs_continuous, tolerances(i));

  % Compute the outputs for the inputs and transform them to discrete values
  outputs_learned_continuous = tanh(inputs_continuous * weights(1:size(inputs_continuous, 2)));
  outputs_learned = arrayfun(@(x) continuous_to_discrete(x, k), outputs_learned_continuous);

  % Display the learned outputs and their integer interpretation
  fprintf('Tolerance: %f\n', tolerances(i));
  fprintf('Learned outputs (continuous): \n');
  disp(outputs_learned_continuous);
  fprintf('Learned outputs (discrete): \n');
  disp(outputs_learned);
  fprintf('\n');
end

