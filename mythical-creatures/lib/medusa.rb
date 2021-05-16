class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stone
    @statues << victim
    if @statues.size > 3
      @statues[0].unstone
      @statues.shift
    end
  end

  def victims?
    @statues.size
  end
end
