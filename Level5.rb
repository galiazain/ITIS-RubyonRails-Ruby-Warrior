# author: Galia Zainagtdinova

class Player
  @health = 20
  def play_turn(warrior)
    # cool code goes here
    if (warrior.health < 14 && warrior.feel.empty? && warrior.health >= @health) then
        warrior.rest!
    else
      if (warrior.feel.enemy?) then
          warrior.attack!
      elsif (warrior.feel.captive?) then
          warrior.rescue!
      else 
          warrior.walk!      
      end
    end
    @health = warrior.health
  end
end
