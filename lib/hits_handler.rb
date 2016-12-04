class HitsHandler
  WATTER = UNKNOWN = 0
  SHIP = MISS = 1
  HIT = 2

  def initialize(player_id, cell)
    @player = Game.find(player_id)
    @opponent = Game.find(opponent_id)
    @cell = cell.to_i
  end

  def update_players_boards
    opponent_board = (@opponent.my_board)
    opponent_cel = opponent_board[@cell]
    if opponent_cel == SHIP
      @player.opponent_board[@cell] = HIT
    else
      @player.opponent_board[@cell] = MISS
    end
    @opponent.my_board[@cell] = HIT
    @player.save
    @opponent.save
  end

  private

  def opponent_id
    @player.id == 1 ? 2 : 1
  end

end
