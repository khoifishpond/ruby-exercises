class Hobbit
  attr_reader :name, :disposition, :age, :adult, :old, :height

  def initialize(name, disposition='homebody', age=0, adult=false, old=false, height='short')
    @name = name
    @disposition = disposition
    @age = age
    @adult = adult
    @old = old
    @height = height
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if @age >= 33
      @adult = true
    else
      @adult
    end
  end

  def old?
    if @age >= 100
      @old = true
    else
      @old
    end
  end

  def has_ring?
    if @name == "Frodo"
      true
    else
      false
    end
  end

  def is_short?
    if @height == 'short'
      true
    else
      false
    end
  end

end
