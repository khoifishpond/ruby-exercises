class Werewolf
  attr_reader :name, :location, :human, :wolf, :hungry

  def initialize(name, location='London')
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def change!
    if @human == true
      @human = false
      @wolf = true
      @hungry = true
    else
      @human = true
      @wolf = false
    end
  end

  def hungry?
    @hungry
  end

  def consume(victim)
    victim.status = :dead
    if @human == true
      "You cannot eat a human in human form!"
    else
      @hungry = false
    end
  end
end
