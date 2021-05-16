RSpec.describe 'Any Pattern Test' do

  it 'has at least one zero' do
    numbers = [2, 0, 9, 3, 0, 1]
    has_zero = true
    numbers.each do |number|
      number.zero?
    end
    expect(has_zero).to eq(true)
  end

  it 'does not have eachzeros' do
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = true
    numbers.each do |number|
      has_zero = false unless number.zero?
    end
    expect(has_zero).to eq(false)
  end

  it 'has at least one alice' do
    names = ["Bill", "Bob", "Burton", "Alice", "Brandon"]
    has_alice = false
    names.each do |name|
      has_alice = true if name.include?("Alice")
    end
    expect(has_alice).to eq(true)
  end

  it 'no alices' do
    names = ["Chuck", "Charlene", "Cory", "Chris", "Carl"]
    has_alice = true
    names.each do |name|
      has_alice = false unless name.include?("Alice")
    end
    expect(has_alice).to eq(false)
  end

  it 'has a multi word phrase' do
    phrases = ["Sure!", "OK.", "I have no idea.", "Really?Whatever."]
    has_multi_word_phrase = false
    phrases.each do |phrase|
      has_multi_word_phrase = true if phrase.include?(" ")
    end
    expect(has_multi_word_phrase).to eq(true)
  end

  it 'has no monkeys' do
    animals = ["elephant", "hippo", "jaguar", "python"]
    has_monkeys = true
    animals.each do |animal|
      has_monkeys = false unless animal.include?("monkey")
    end
    expect(has_monkeys).to eq(false)
  end

  it 'has no multiples of five' do
    numbers = [3, 1, 3, 2, 4, 9, 8]
    multiples_of_5 = true
    numbers.each do |number|
      multiples_of_5 = false unless number % 5 == 0
    end
    expect(multiples_of_5).to eq(false)
  end
end
