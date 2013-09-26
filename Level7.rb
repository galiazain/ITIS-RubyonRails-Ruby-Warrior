# author: Galia Zainagtdinova

class Player
  @health = 20
  @turn = false
  def play_turn(warrior)
    # cool code goes here
    if (warrior.health < 20 && warrior.feel.empty? && warrior.health >= @health) then
        warrior.rest!
    else
      if ((warrior.feel).enemy?) then
          warrior.attack!
      elsif(warrior.feel.wall?) then
          warrior.pivot!
          @turn = true
      else
          if(!@turn) then
            warrior.walk!
          elsif (warrior.health < 12)
            warrior.walk!:backward
          else
            warrior.walk!
          end
      end
    end
    @health = warrior.health
  end
end
