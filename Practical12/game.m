c1_health = 17;
c1_armor = 10;
c1_damage = 20;

c2_health = 15;
c2_armor = 12;
c2_damage = 16;

%This line calls your function and expects two returned variables.
[c1_health,c2_health] = fight(c1_health,c1_armor,c1_damage,c2_health,c2_armor,c2_damage);
disp([c1_health,c2_health])


%(In-script defined functions are defined at the bottom of section.)
function [c1_health,c2_health] = fight(c1_health,c1_armor,c1_damage,c2_health,c2_armor,c2_damage)
    while true
        turn = randi(2);
        switch turn 
            case 1
                armour_check = randi(20);
                disp("first not strikes")
                if armour_check > c2_armor
                    c2_health = c2_health - c1_damage;
                    disp("first strikes second")
                end
                if c1_health <= 0 || c2_health <= 0
                    break
                end
                armour_check = randi(20);
                disp("second not strikes")
                if armour_check > c1_armor
                    c1_health = c1_health - c2_damage;
                    disp("now second strikes")
                end
                if c1_health <= 0 || c2_health <= 0
                    break
                end
            case 2
                armour_check = randi(20);
                disp("second not strikes")
                if armour_check > c1_armor
                    c1_health = c1_health - c2_damage;
                    disp("second strikes first")
                end
                if c1_health <= 0 || c2_health <= 0
                    break
                end
                armour_check = randi(20);
                disp("first not strikes")
                if armour_check > c2_armor
                    c2_health = c2_health - c1_damage;
                    disp("now first strikes")
                end
                if c1_health <= 0 || c2_health <= 0
                    break
                end
        end
    end
    c1_health = c1_health;
    c2_health = c2_health;
end
