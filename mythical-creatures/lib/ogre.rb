class Ogre
  attr_reader :name, :home, :swings, :encounter_counter

  def initialize(name, home='Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    @encounter_counter += 1
    human.encounter

    swing_at(human) if human.notices_ogre? == true
  end

  def swing_at(human)
    @swings += 1

    human.knock_out if @swings % 2 == 0
  end

  def apologize(human)
    human.wake_up
  end
end
