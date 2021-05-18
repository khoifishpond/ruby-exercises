class Bag
  attr_accessor :candies, :count

  def initialize
    @candies = []
    @empty = true
    @count = 0
  end

  def << (candy)
    @empty = false
    @count += 1
    @candies << candy
  end

  def empty?
    if @count > 0
      false
    else
      true
    end
  end

  def contains?(type)
    @candies.any? { |candy| candy.type == type }
  end
end
