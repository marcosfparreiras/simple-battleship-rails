class Game < ActiveRecord::Base
  serialize :my_board, Array
  serialize :opponent_board, Array
end
