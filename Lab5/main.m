% Load the data
load('wdbc_MLP_Learning_Testing_Data.mat');

% Initialize some parameters
noutputs = 1;  % number of network outputs
errorlimit = 0.1;  % tolerance threshold for the error
iterationslimit = 5000;  % max # of iterations
OutputFlag = 100;  % only every 100th learning iteration will be displayed

% Determine the number of inputs from the data
[N, ninputs] = size(Learning_wdbc_MLP);
ninputs = ninputs - 1;  % minus one because the last column is the target

% Specify the numbers of hidden neurons to test
hidden_neurons = [2, 4, 8, 12, 16];

% Run a loop for different numbers of hidden neurons, training and testing the MLP each time
results = [];  % to store the classification rate for each number of hidden neurons

for i = 1:length(hidden_neurons)
    nhiddenneurons = hidden_neurons(i);

    % Train the MLP
    [netw, iteration, RMSE] = LearningMLP(Learning_wdbc_MLP, nhiddenneurons, noutputs, errorlimit, iterationslimit, OutputFlag);

    % Test the MLP
    RMSE = TestingMLP2(Testing_wdbc_MLP, nhiddenneurons, netw);

    % Save the results
    results = [results; nhiddenneurons RMSE];

    % Wait for user input to continue
    input('Press Enter to continue to the next experiment...');
end

% Determine the number of hidden neurons that gives the best classification rate
[~, idx] = min(results(:, 2));
best_nhiddenneurons = results(idx, 1);

% Run 5 experiments with the best network topology and different random weights
results2 = [];  % to store the classification rate for each experiment

for experiment = 1:5
    % Reset the weights of the network to random values
    net = CreateNN(ninputs, best_nhiddenneurons, noutputs);
    netw = net.w;

    % Train the MLP
    [netw, iteration, RMSE] = LearningMLP(Learning_wdbc_MLP, best_nhiddenneurons, noutputs, errorlimit, iterationslimit, OutputFlag);

    % Test the MLP
    RMSE = TestingMLP2(Testing_wdbc_MLP, best_nhiddenneurons, netw);

    % Save the results
    results2 = [results2; experiment RMSE];

    % Wait for user input to continue
    input('Press Enter to continue to the next experiment...');
end

% Calculate average classification rate
avg_classification_rate = mean(results2(:, 2));

% Display the results
disp('Results for different number of hidden neurons:');
disp(results);

disp('Results for 5 experiments with best number of hidden neurons:');
disp(results2);

disp('Average classification rate:');
disp(avg_classification_rate);

