%Ex1. Finding the number of sequences
%-------------------------------------------------------------------
signal_start_pattern = [1 -1 1 -1 1 1 -1 -1 1 1];
nr_of_sequences = numel(strfind(data, signal_start_pattern));
ind_start = strfind(data, signal_start_pattern);

%Ex2. 
%--------------------------------------------------------------------

temp_count = [];    
temps_all = [];     
for i=1:numel(ind_start) - 1
    temp = data(ind_start(i)+18:ind_start(i+1)-1);
    temps_all = [temps_all temp];
    temp_count = [temp_count numel(temp)];
end

max_nr_of_temperature_values = max(temp_count);

%Ex3. 
%---------------------------------------------------------------------
data_struc = zeros(nr_of_sequences, 10+8+max_nr_of_temperature_values);

%Ex4. 
%----------------------------------------------------------------------
for i = 1:numel(ind_start)-1
    seq = data(ind_start(i):ind_start(i+1)-1);
    data_struc(i, 1:numel(seq)) = seq;  
end

%Ex5 -------------------------------------------------------------------


data_sorted = zeros(nr_of_sequences, max_nr_of_temperature_values);

days = [];
for i = 1:numel(ind_start)
    day_bit = data(ind_start(i)+10:ind_start(i)+17);
    days = [days ; day_bit];
end


for i = 1:numel(ind_start)-1
    seq = data(ind_start(i):ind_start(i+1)-1);
    for j = 1:size(days, 1)
        if (~isempty(strfind(seq, days(j,:))))
            day_normal = bi2de(days(j,:),2,'left-msb');
            data_sorted(day_normal, 1:numel(seq(19:end))) = seq(19:end);
        end
    end
end

%Ex6. Surfing
%-----------------------------------------------------------------------

%Array of days in normal form (e.g 1, 2...)
%In fact, this is useless, as there are just 152 days, so we can make an array
%Like days_normal = 1:152
%I left this code in case it that days from data are not in order
%And some are missed (e.g.: 1, 2, 5, 6, 15)
days_normal = [];
for i = 1:152
    day_normal = bi2de(days(i,:), 2, 'left-msb');
    days_normal = [days_normal day_normal];
end
days_normal = sort(days_normal, 'ascend');


%Graphing 
temp_number = 1:141;
s = surf(temp_number, days_normal, data_sorted);
s.EdgeColor = 'none';
colorbar;

