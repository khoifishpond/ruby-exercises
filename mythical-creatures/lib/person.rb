class Person
  attr_reader :name, :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stone
    @stoned = true
  end

  def unstone
    @stoned = false
  end

  def stoned?
    @stoned
  end
end
