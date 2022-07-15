class HotChocolate
  def drink
    'Delicious'
  end

  def discard
    "Plop!"
  end

  def purchase(number)
    "Awesome, I just purchased #{number} more hot chocolate"
  end
end

RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method / has a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:discard)
    expect(subject).to respond_to(:purchase, :drink)
  end

  it 'confirms that an object can respond to a method with arguments' do
    expect(subject).to respond_to(:purchase)
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:purchase, :discard)}
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end