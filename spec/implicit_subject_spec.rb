RSpec.describe Hash do # pass Hash class in to instantiate an instance (subject)
  # let(:my_hash) { {} }
  # let(:subject) { Hash.new } # auto instantiate and assign to :subject

  it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject[:some_key] = "Some Value"
    expect(subject.length).to eq(1)
  end

  it 'is isolated between example' do
    expect(subject.length).to eq(0)
  end

end