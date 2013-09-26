# author: Galia Zainagtdinova

class Player
  @health = 20
  @resc = false
  def play_turn(warrior)
    # cool code goes here
    if (warrior.health < 20 && warrior.feel.empty? && warrior.health >= @health) then
        warrior.rest!
    else
      if (warrior.feel.enemy?) then
          warrior.attack!
      elsif ((warrior.feel:backward).captive?) then
          warrior.rescue!:backward
          @resc = true
      else
          if(!@resc || warrior.health < 10) then
            warrior.walk!:backward
          else
            warrior.walk!
          end
      end
    end
    @health = warrior.health
  end
end
