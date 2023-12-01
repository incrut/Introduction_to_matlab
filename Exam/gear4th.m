record = 'SNSRHSRNWONSSHSONWSNSRHWSHWRHWONWSHWONSSHWOHSRHSSHSRNSONWRNSONSSNSOHSONWONSSNSRHWOHWRNSOHW';

ticket_cost = 10;
day_count = 0;
day_played = 0;

for i = (1:3:length(record))
    
    day_count = day_count + 1;

if record(i) == 'S'     %If the weather is sunny
    if record(i+1) == 'N'    %and humidity is normal
        day_played = day_played + 1;
    end
end
if record(i) == 'O'    %If the weather is overcast
        day_played = day_played + 1;
end

if record(i) == 'R'    %if the weather is rainny
    if record(i+2) == 'W'    %and wind is weak
        day_played = day_played + 1;
    end
end

end

money_spent = day_played * 10;

disp(day_count + " days have past totally");
disp(day_played + " of them he played");
disp("And therefore he has spent " + money_spent + " Euros");