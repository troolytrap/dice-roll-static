class DiceController < ApplicationController
  def home
    render({ :template => "dice_templates/homepage" })
  end
  def two_six
    render({ :template => "dice_templates/2d6" })
  end
  def two_ten
    render({ :template => "dice_templates/2d10" })
  end
  def one_twenty
    render({ :template => "dice_templates/1d20" })
  end
  def five_four
    render({ :template => "dice_templates/5d4" })
  end
  def anydice
    @quantity = params.fetch("quantity")
    @sides = params.fetch("sides")
    @rolls = []
    @quantity.to_i.times do
      die = rand(1..@sides.to_i)
      @rolls.push(die)
    end
    render({ :template => "dice_templates/anydice" })

  end
end
