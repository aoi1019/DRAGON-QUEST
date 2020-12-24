require './brave'
require './monster'
require './games_controller'

games_controller = GamesController.new

terry = Brave.new(name: "テリー", hp: 1000, offense: 50, defense: 20)
slime = Monster.new(name: "スライム", hp: 100, offense: 50, defense: 20)

games_controller.battle(brave: terry, monster: slime)

# puts <<~TEXT
# NAME:#{brave.name}
# HP:#{brave.hp}
# OFFENSE:#{brave.offense}
# DEFENSE:#{brave.defense}\n
# TEXT
