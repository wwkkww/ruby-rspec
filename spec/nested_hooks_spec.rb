RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER: BEFORE Context'
  end
  
  before(:example) do
    puts 'OUTER: BEFORE example'
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts 'INNER: BEFORE Context'
    end
    
    before(:example) do
      puts 'INNER: BEFORE example'
    end

    it 'does basic add' do
      expect(1 + 1).to eq(2)
    end

    it 'does basic substraction' do
      expect(3 - 1).to eq(2)
    end
  end
end 
