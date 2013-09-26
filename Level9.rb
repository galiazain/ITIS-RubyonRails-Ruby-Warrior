# author: Galia Zainagtdinova

class Player
	@health = 20
	@ar = []
	@killshtr = false
	@complete = false
	@gokillshtr = false
	
	def play_turn(warrior)
		# cool code goes here
		if (warrior.health < 20 && warrior.feel.empty? && warrior.health >= @health) then
			warrior.rest!
		else
			if(!@gokillshtr) 
				@gokillshtr = true
				warrior.pivot!
			elsif(warrior.feel.stairs? && !@complete)
				@killshtr = true
				warrior.pivot!
			elsif(warrior.feel.wall?)
				@complete = true
				warrior.pivot!
			else 
				@ar = warrior.look
				if (warrior.feel.captive?)
					warrior.rescue!
				elsif (warrior.feel.enemy?)
					warrior.attack!
				elsif (@ar[2].enemy? && !@ar[1].captive? && @killshtr)
					warrior.shoot!
				else
					warrior.walk!
				end
			end
		end
		@health = warrior.health
	end
end
