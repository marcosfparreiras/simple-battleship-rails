class Game < ActiveRecord::Base
  serialize :my_board, Array
  serialize :opponent_board, Array

  WATTER = UNKNOWN = 0
  SHIP = MISS = 1
  HIT = 2

  def reset
    self.update(
      my_board: sample_map,
      opponent_board: EmptyBoardGenerator.generate
    )
  end

  def sample_map
    map = EmptyBoardGenerator.generate
    BoardsGenerator.sample_board.each do |cell|
      map[cell] = SHIP
    end
    map
  end
end
