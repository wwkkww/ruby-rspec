RSpec.describe Array do 
  subject(:sally) do
    ["one", "two"]
  end

  it 'has two element in array and can delete element' do 
    expect(sally.length).to be(2)
    sally.pop()
    expect(sally.length).to be(1)
  end

  it 'has two element by default' do 
    expect(sally).to eq(['one', 'two'])
  end
end