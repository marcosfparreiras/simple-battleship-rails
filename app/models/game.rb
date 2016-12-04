class Game < ActiveRecord::Base
  serialize :my_board, Array
  serialize :opponent_board, Array

  WATTER = UNKNOWN = 0
  SHIP = MISS = 1
  HIT = 2

  def reset
    self.update(
      my_board: EmptyBoardGenerator.generate,
      opponent_board: EmptyBoardGenerator.generate
    )
  end
end
