class RollController < ApplicationController
  def home 
    render({ :template => "roll_templates/home"})

  end

  def results 
    @num_sides = params.fetch("sides").to_i
    @num_dice = params.fetch("dice").to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@num_sides)
      @rolls.push(die)
    end
    
    render({ :template => "roll_templates/results"})

  end



end
