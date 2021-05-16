class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect

  def initialize(name, home="Beyond the Wall", size="Massive")
    @name = name
    @home = home
    @size =  size
    @starks_to_protect = []
    @hunts_white_walkers = true
  end

  def protects(stark)
    if stark.location == @home && @starks_to_protect.size < 2
      stark.protected
      @hunts_white_walkers = false
      @starks_to_protect << stark
    end
  end

  def hunts_white_walkers?
    @hunts_white_walkers
  end

  def leaves(stark)
    @starks_to_protect.delete(stark)
    @hunts_white_walkers = true
    stark.unprotected
    stark
  end
end
