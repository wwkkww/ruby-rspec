RSpec.describe 'spies' do
  let(:animal) {spy('animal')}

  it 'confirms that a message has been received' do
    animal.eat_food
    expect(animal).to have_received(:eat_food)
    expect(animal).not_to have_received(:eat_meat)
  end

  it 'resets between examples' do
    expect(animal).not_to have_received(:eat_food)
  end

  it 'retains the same functionality of a regular double' do
    animal.eat_food
    animal.eat_food('Sushi')
    animal.eat_food
    animal.eat_food('Sushi')
    expect(animal).to have_received(:eat_food).exactly(4).times
    expect(animal).to have_received(:eat_food).at_least(2).times
    expect(animal).to have_received(:eat_food).with('Sushi').exactly(2).times
    expect(animal).to have_received(:eat_food).twice.with('Sushi')
  end
end
