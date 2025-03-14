class DiceController < ApplicationController
  def two_six
    render({ :template => "dice_templates/2d6" })
  end
end
