# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Game.create(my_board: Array.new(100, 0), opponent_board: Array.new(100, 0))
Game.create(my_board: Array.new(100, 0), opponent_board: Array.new(100, 0))
