RSpec.describe 'before and after hooks' do

  before(:context) do
    puts 'BEFORE context'
  end

  after(:context) do
    puts 'AFTER context'
  end

  before(:example) do
    puts 'BEFORE example'
  end
  
  after(:example) do
    puts 'AFTER example'
  end

  before(:each) do
    puts 'BEFORE each'
  end
  
  after(:each) do
    puts 'AFTER each'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just a another random example' do
    expect(3 - 2).to eq(1)
  end
end