%1st task

load("thisfile.mat")    %loading this variable
to_find = [1 -1 1 -1 1 1 -1 -1 1 1];    %Start of signal that we want to find
indexes = strfind(data, to_find);  %searching for it (its indexes)
nr_of_sequences = numel(indexes);   %its length is a number that we want to find

%2nd task

temps = []; %all temps are here
temps_count = [];   %temps indexes to count them later
for i=1:nr_of_sequences-1
    temper = data(indexes(i)+18:indexes(i+1)-1);    %temperature starts where the index ends 
    temps = [temps, temper];    %append temps with temps
    temps_count = [temps_count, numel(temper)]; %append temps counter with lengths of temps
end
max_nr_of_temperature_values = max(temps_count);    %searching what is the max value for temps count

%3rd task

data_struc = zeros(nr_of_sequences, 18+max_nr_of_temperature_values);   %create a data struct full of zeros with this dimensions
for i=1:nr_of_sequences-1
    temporary = data(indexes(i):indexes(i+1)-1);    %temporary sequence that carries a full var (temps and signal)
    data_struc(i, 1:numel(temporary)) = temporary;  %replace 0 with a new var
end

%4th task

data_clean = zeros(nr_of_sequences-1, 2);  %creating a data_clean matrix
for i=1:nr_of_sequences-1
    data_clean(i,1) = bi2de(data_struc(i, 11:18),2,"left-msb"); %convert to decimal and replace 0 with a decimal day
    data_clean(i,2) = mean(data(indexes(i)+18:indexes(i+1)-1)); %replace 0 with temperatures of this day
end
data_clean = sort (data_clean); %sorting all the values

%5th task

stem(data_clean(:,2))   %visualising this informationx
xlabel ('Days')
ylabel ('Mean temperature')

%conclusion: temperature is increasing. 