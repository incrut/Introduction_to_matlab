        % Reading loading data
load('thisfile.mat');

% Task 1
signal_start_pattern = [1,-1,1,-1,1,1,-1,-1,1,1];
sequences_indices = strfind(data, signal_start_pattern);
nr_of_sequences = size(sequences_indices, 2);

% Task 2
all_temperatures = [];
all_temperatures_count = [];
for i=1:nr_of_sequences-1
    temperature = data(sequences_indices(i)+18:sequences_indices(i+1)-1);
    all_temperatures = [all_temperatures, temperature];
    all_temperatures_count = [all_temperatures_count, size(temperature, 2)];
end
max_nr_of_temperature_values = max(all_temperatures_count);

% Task 3
data_struc = zeros(nr_of_sequences, 18+max_nr_of_temperature_values);
for i=1:nr_of_sequences-1
    seq = data(sequences_indices(i):sequences_indices(i+1)-1);
    data_struc(i, 1:size(seq, 2)) = seq;
end


% Task 4
data_clean = zeros(nr_of_sequences, max_nr_of_temperature_values);
for i=1:nr_of_sequences-1
    seq = data(sequences_indices(i):sequences_indices(i+1)-1);
    day_binary = seq(11:17);
    day_numerical = bi2de(day_binary, 2, 'left-msb');
end





