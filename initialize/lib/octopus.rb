class Octopus
  attr_reader :name, :friendly

  def initialize(name, friendly)
    @name = name
    @friendly = friendly
  end

  def friend
    @friendly
  end
end
