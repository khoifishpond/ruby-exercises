class Pirate
  attr_reader :name, :job, :heinous_acts, :cursed, :booty, :robbed

  def initialize(name, job='Scallywag')
    @name = name
    @job = job
    @heinous_acts = 0
    @cursed = false
    @booty = 0
    @robbed = 0
  end

  def commit_heinous_act
    @heinous_acts += 1
  end

  def cursed?
    if @heinous_acts < 3
      @cursed = false
    else
      @cursed = true
    end
  end

  def has_booty?
    @booty = 100 * @robbed
    p "#{name} has #{booty} booty."
  end

  def rob_ship
    @robbed += 1
  end

end
