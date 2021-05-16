require 'rspec'
require './lib/wizard'

RSpec.describe Wizard do
  it 'has a name' do
    wizard = Wizard.new('Eric')
    expect(wizard.name).to eq('Eric')
  end

  it 'has a different name' do
    wizard = Wizard.new('Alex')
    expect(wizard.name).to eq('Alex')
  end

  it 'is bearded by default' do
    wizard = Wizard.new('Ben')
    expect(wizard.bearded?).to be true
  end

  it 'is not always bearded' do
    wizard = Wizard.new('Valerie', bearded: false)
    expect(wizard.bearded?).to be false
  end

  it 'has root powers' do
    wizard = Wizard.new('Stella', bearded: false)
    expect(wizard.incantation('chown ~/bin')).to eq('sudo chown ~/bin')
  end

  it 'has many root powers' do
    wizard = Wizard.new('Sal', bearded: true)
    expect(wizard.incantation('rm -rf /home/mirandax')).to eq('sudo rm -rf /home/mirandax')
  end

  it 'starts rested' do
    # create wizard
    wizard = Wizard.new("Khoi")
    # .rested? returns true
    wizard.rested?
  end

  it 'can cast spells' do
    # create wizard
    wizard = Wizard.new("Kathy")
    # .cast returns "MAGIC MISSILE!"
    wizard.cast_spell("magic missile")
    expect(wizard.cast_spell("magic missile")).to eq('MAGIC MISSILE!')
  end

  it 'gets tired after casting three spells' do
    # create wizard
    wizard = Wizard.new("Khoi")
    # casts spell twice
    2.times do
      wizard.cast_spell("fireball")
    end
    # check if wizard is rested
    wizard.rested?
    expect(wizard.rested?).to be true
    # casts spell
    wizard.cast_spell("blizzard")
    # check wizard is not rested
    wizard.rested?
    expect(wizard.rested?).to be false
  end
end
