class TrickOrTreater
  attr_accessor :costume, :bag

  def initialize(costume)
    @costume = costume.style
    @bag = Bag.new
  end

  def dressed_up_as
    @costume
  end

  def has_candy?
    if @bag.empty? == false
      true
    else
      false
    end
  end

  def candy_count
    @bag.count
  end

  def eat
    @bag.count -= 1
  end
end
