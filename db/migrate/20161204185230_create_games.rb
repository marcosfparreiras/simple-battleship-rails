class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.text :my_board
      t.text :opponent_board

      t.timestamps
    end
  end
end
