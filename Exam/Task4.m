record = 'SNSRHSRNWONSSHSONWSNSRHWSHWRHWONWSHWONSSHWOHSRHSSHSRNSONWRNSONSSNSOHSONWONSSNSRHWOHWRNSOHW';

ticket_cost = 10;
day_count = 0;
day_played = 0;

for i = (1:3:length(record))
    
    day_count = day_count + 1;

switch record(i)

    case 'S'    %If the weather is sunny
        switch record(i+1)
            case 'N'    %and humidity is normal
                day_played = day_played + 1;
        end

    case 'O'    %If the weather is overcast
        day_played = day_played + 1;

    case 'R'    %if the weather is rainny
        switch record(i+2)
            case 'W'    %and wind is weak
                day_played = day_played + 1;
        end
end

end

money_spent = day_played * 10;

disp(day_count + " days have past totally");
disp(day_played + " of them he played");
disp("And therefore he has spent " + money_spent + " Euros");