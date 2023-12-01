user_input = input("Enter a number (integer) ");

if isnumeric(user_input)

    if rem(user_input, 1) == 0

        if isinteger (int8(user_input))

            if rem(user_input, 2) == 0
                disp ("Your input is an even number");

            else
                disp ("Your input is an odd number");
            end
        
        else
            disp ("Something went wrong")

        end
    else
        disp("The number is not an integer")
    end
else 
    disp("The number is not an integer")
end