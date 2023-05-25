function y = discrete_to_continuous(x, k)

  % Calculate the length of each subinterval
  interval_length = 2 / k;

  % Calculate the lower bound of the subinterval
  lower_bound = -1 + x * interval_length;

  % Calculate the upper bound of the subinterval
  upper_bound = lower_bound + interval_length;

  % Return the midpoint of the subinterval
  y = (lower_bound + upper_bound) / 2;

endfunction
