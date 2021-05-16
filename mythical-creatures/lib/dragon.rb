class Dragon
  attr_reader :name, :color, :rider, :hungry, :eaten

  def initialize(name, color, rider, hungry=true, eaten=0)
    @name = name
    @color = color
    @rider = rider
    @hungry = hungry
    @eaten = eaten
  end

  def hungry?
    @hungry
  end

  def eat
    @eaten += 1

    if @eaten >= 3
      @hungry = false
    end
  end

end
