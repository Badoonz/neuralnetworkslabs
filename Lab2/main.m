## Task 1

#lecture 3, slide 14
inputs_slide14 = [1, 1, 1, 1, -1, -1, -1, -1; 1, 1, -1, -1, 1, 1, -1, -1; 1, -1, 1, -1, 1, -1, 1, -1];
output_slide14 = [1, 1, 1, -1, 1, 1, -1, -1];
weights_slide14 = hebb(inputs_slide14, output_slide14);
disp(weights_slide14);
result_slide14 = mapping_implementation_test(inputs_slide14, output_slide14, weights_slide14);
disp("Result for mappings from Slide 14:")
disp(result_slide14);

#lecture 3, slide 15
inputs_slide15 = [1, 1, 1, 1, -1, -1, -1, -1; 1, 1, -1, -1, 1, 1, -1, -1; 1, -1, 1, -1, 1, -1, 1, -1];
output_slide15 = [1, -1, -1, -1, 1, -1, 1, -1];
weights_slide15 = hebb(inputs_slide15, output_slide15);
disp(weights_slide15);
result_slide15 = mapping_implementation_test(inputs_slide15, output_slide15, weights_slide15);
disp("Result for mappings from Slide 15:")
disp(result_slide15);

## Task 2

#function 1
f1_inputs = [0.5, 0.5, 0.4, 0.4, -0.3, -0.3, -0.7, -0.7; 1, 1, -0.5, -0.5, 0.7, 0.7, -1, -1; 0.5, -0.3, 0.4, -0.5, 0.5, -0.4, 0.3, -0.5];
f1_output = [1, 1, 1, -1, 1, 1, -1, -1];
f1_weights = hebb(f1_inputs, f1_output);
f1_result = mapping_implementation_test(f1_inputs, f1_output, f1_weights);
disp("Result for function 1 from the second task:")
disp(f1_result);

#function 2
f2_inputs = [0.5, 0.5, 0.4, 0.4, -0.3, -0.3, -0.7, -0.7; 1, 1, -0.5, -0.5, 0.7, 0.7, -1, -1; 0.5, -0.3, 0.4, -0.5, 0.5, -0.4, 0.3, -0.5];
f2_output = [1, -1, -1, -1, 1, -1, 1, -1];
f2_weights = hebb(f2_inputs, f2_output);
f2_result = mapping_implementation_test(f2_inputs, f2_output, f2_weights);
disp("Result for function 2 from the second task:")
disp(f2_result);

