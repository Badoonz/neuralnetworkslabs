function [weights, iterations, rmse_values] = error_correction_learning(inputs, desired_outputs, tolerance, weights = [], random_weights = true)

  % Get the number of samples and features
  [N, num_features] = size(inputs);

  % Initialize the weights
  if isempty(weights)
    if random_weights
      weights = rand(num_features + 1, 1);
    else
      weights = sum(bsxfun(@times, inputs, desired_outputs)) / N;
      weights = [mean(desired_outputs); weights];
    end
  end

  iterations = 0;
  rmse_values = [];

  % Add a column of ones to the inputs (for the bias)
  inputs = [ones(N, 1), inputs];

  while true
    iterations = iterations + 1;

    % Initialize the sum of squared errors
    sse = 0;

    for j = 1:N
      % Compute the weighted sum of inputs
      z = weights' * inputs(j, :)';

      % Compute the output using the tanh activation function
      y = tanh(z);

      % Compute the error
      error = desired_outputs(j) - y;

      % Adjust the weights using the error-correction rule
      weights = weights + error * inputs(j, :)';

      % Update the sum of squared errors
      sse = sse + error^2;
    end

    % Compute the RMSE
    rmse = sqrt(sse / N);

    % Store the RMSE
    rmse_values = [rmse_values; rmse];

    % Check the stopping criterion
    if rmse <= tolerance
      break;
    end
  end

  % Plot the RMSE values
  figure;
  plot(rmse_values);
  title('RMSE over iterations');
  xlabel('Iteration');
  ylabel('RMSE');

endfunction

