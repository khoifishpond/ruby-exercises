class Rabbit
  attr_reader :name, :num_syllables

  def initialize(hash)
    @name = hash[:name]
    @num_syllables = hash[:num_syllables]
  end
end
