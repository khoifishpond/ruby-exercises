class Human
  attr_reader :name, :encounter_counter, :knocked_out

  def initialize
    @name = 'Jane'
    @encounter_counter = 0
    @knocked_out = false
  end

  def encounter
    @encounter_counter += 1
  end

  def notices_ogre?
    if @encounter_counter % 3 == 0
      true
    else
      false
    end
  end

  def knock_out
    @knocked_out = true
  end

  def wake_up
    @knocked_out = false
  end

  def knocked_out?
    @knocked_out
  end
end
