class StaticPagesController < ApplicationController
  def home
    Game.find(1).reset
    Game.find(2).reset
  end
end
