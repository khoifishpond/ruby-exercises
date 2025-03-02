class Stark
  attr_reader :name, :location, :house_words

  def initialize(name, location="Winterfell")
    @name = name
    @location = location
    @safe = false
    @house_words = "Winter is Coming"
  end

  def protected
    @safe = true
  end

  def unprotected
    @safe = false
  end

  def safe?
    @safe
  end
end
