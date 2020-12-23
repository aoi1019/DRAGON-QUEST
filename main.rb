require './brave'
require './monster'

brave = Brave.new(name: "テリー", hp: 1000, offense: 50, defense: 20)
monster = Monster.new(name: "スライム", hp: 100, offense: 50, defense: 20)

puts <<~TEXT
NAME:#{brave.name}
HP:#{brave.hp}
OFFENSE:#{brave.offense}
DEFENSE:#{brave.defense}\n
TEXT

loop do
  brave.attach(monster)
  break if monster.hp <= 0
  monster.attack(brave)
  break if brave.hp <= 0
end

battle_result = brave.hp > 0

if battle_result
  exp = (monster.offense + monster.defense) * 2
  gold = (monster.offense + monster.defense) * 3
  puts <<~TEXT
  #{monster.name}を倒した
  #{brave.name}は戦いに勝った
  #{exp}の経験値と#{gold}ゴールドを獲得した
  TEXT
else
  puts <<~TEXT
  #{brave.name}は戦いに負けた
  目の前が真っ暗になった
  TEXT
end