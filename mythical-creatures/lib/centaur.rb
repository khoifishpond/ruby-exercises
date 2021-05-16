class Centaur
  attr_reader :name, :breed, :cranky, :standing, :laying, :rested, :drunk

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @rested = false
    @drunk = false
    @actions = 0
  end

  def shoot
    @actions += 1
    if @actions >= 3 || @laying == true
      'NO!'
    elsif @actions < 3 || @laying == false
      'Twang!!!'
    end
  end

  def run
    @actions += 1
    if @actions >= 3 || @laying == true
      'NO!'
    elsif @actions < 3 || @laying == false
      'Clop clop clop clop!'
    end
  end

  def cranky?
    if @actions == 3
      @cranky = true
    else
      @cranky
    end
  end

  def sleep
    if @laying == true && standing == false
      @actions = 0
      @cranky = false
    else
      'NO!'
    end
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def standing?
    @standing
  end

  def lay_down
    @laying = true
    @standing = false
  end

  def laying?
    @laying
  end

  def rested?
    @rested
  end

  def drink_potion
    if @standing == false
      'NO'
    else
      @rested = true
    end
  end

  def drunk?
    if @rested == true
      @drunk = true
    end
  end
end
