require 'rspec'
require './lib/medusa'
require './lib/person'

RSpec.describe Medusa do
  it 'has a name' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.name).to eq('Cassiopeia')
  end

  it 'has no statues when created' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.statues).to be_empty
  end

  it 'gains a statue when staring at a person' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    medusa.stare(victim)
    expect(medusa.statues.count).to eq(1)
    expect(medusa.statues.first.name).to eq('Perseus')
    expect(medusa.statues.first).to be_an_instance_of(Person)
  end

  it 'turns a person to stone when staring at them' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    expect(victim.stoned?).to be false
    medusa.stare(victim)
    expect(victim.stoned?).to be true
  end

  it 'can only have three victims' do
    medusa = Medusa.new('Cassiopeia')
    khoi = Person.new('Khoi')
    kathy = Person.new('Kathy')
    duy = Person.new('Duy')
    ryan = Person.new('Ryan')
    han = Person.new('Han')
    ashley = Person.new('Ashley')

    medusa.stare(khoi)
    medusa.stare(kathy)
    medusa.stare(duy)
    medusa.stare(ryan)
    medusa.stare(han)
    medusa.stare(ashley)
    expect(medusa.victims?).to eq(3)
  end

  it 'if a fourth victim is stoned the first is unstoned' do
    medusa = Medusa.new('Cassiopeia')
    khoi = Person.new('Khoi')
    kathy = Person.new('Kathy')
    duy = Person.new('Duy')
    ryan = Person.new('Ryan')

    medusa.stare(khoi)
    expect(khoi.stoned?).to be true
    medusa.stare(kathy)
    medusa.stare(duy)
    medusa.stare(ryan)

    expect(khoi.stoned?).to be false
  end
end
