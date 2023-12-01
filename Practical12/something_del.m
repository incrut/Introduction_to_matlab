c1_health = 17;
c1_armor = 10;
c1_damage = 20;

c2_health = 15;
c2_armor = 12;
c2_damage = 16;

%This line calls your function and expects two returned variables.
[c1_health,c2_health] = fight(c1_health,c1_armor,c1_damage,c2_health,c2_armor,c2_damage);


%(In-script defined functions are defined at the bottom of section.)
function [c1_health, c2_health] = fight(c1_health, c1_armor, c1_damage, c2_health, c2_armor, c2_damage)
    count = int32(0);
    while true
         choice = randi(2);
         if choice == 1
             dice = randi(20);
             if dice >  c2_armor
                 c2_health = c2_health - c1_damage;
             end
             if dice <= c2_armor
                 c2_health = c2_health + 0;
             end
         end
         if choice == 2
             dice = randi(20);
             if dice > c1_armor
                 c1_health = c1_health - c2_damage;
             end
             if dice < c1_armor
                 c1_health = c1_health + 0;
             end

         end
         count = count + 1;
         if count >= 1
             if c1_health <= 0
                 disp('Fight ends, c2 wins')
                 break
             end
             if c2_health <= 0
                 disp('Fight ends, c1 wins')
                 break
             end
         end
    end
end