class Wizard
  attr_reader :name, :bearded, :rested, :spells_cast

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spells_cast = 0
  end

  def bearded?
    @bearded
  end

  def incantation(incant)
    "sudo #{incant}"
  end

  def rested?
    if @spells_cast < 3
      @rested
    else
      @rested = false
    end
  end

  def cast_spell(spell)
    @spells_cast += 1
    "#{spell.upcase}!"
  end

end
