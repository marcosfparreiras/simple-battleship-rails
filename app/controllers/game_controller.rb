class GameController < ApplicationController
  def create
  end

  def update
    HitsHandler.new(params['id'], params['cell']).update_players_boards
  end

  def show
    game = Game.find(params[:id])
    @player = game.id
    @my_board = game.my_board
    @opponent_board = game.opponent_board
  end

  def destroy
    game = Game.find(params['id'])
    game.reset
  end
end
