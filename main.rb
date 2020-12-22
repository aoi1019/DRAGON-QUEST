class Brave
  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def hp=(hp)
    @hp = hp
  end
  
  def hp
    @hp
  end

  def offense=(offense)
    @offense = offense
  end

  def offense
    @offense
  end

  def defense=(defense)
    @defense = defense
  end
end

brave = Brave.new

brave.name = "テリー"
brave.hp = 1000
brave.offense = 100
brave.defense = 100