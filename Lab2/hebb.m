function hebb = hebb (inputs, output)
  x = [ones(size(output)(2), 1).'; inputs(:, :)];
  w = [];

  for i = 1:size(x)(1)
    w(end+1) = sum(x(i:i, :) .* output) / size(output)(2);
  endfor

  hebb = w;
endfunction

