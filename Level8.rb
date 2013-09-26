# author: Galia Zainagtdinova

class Player
  @health = 20
  @ar = []
  def play_turn(warrior)
    # cool code goes here
    if (warrior.health < 20 && warrior.feel.empty? && warrior.health >= @health) then
        warrior.rest!
    else
      @ar = warrior.look
      if (warrior.feel.captive?)
        warrior.rescue!
      elsif (@ar[2].enemy? && !@ar[1].captive?)
        warrior.shoot!
      else
        warrior.walk!
      end
    end
    @health = warrior.health
  end
end
