RSpec.describe 'not_to matcher' do
  it 'checks for the inverse of a matcher' do 
    expect(5).not_to eq(10)
    expect([1,2,3]).not_to equal([1,2,3])
    
    expect([1,2,3]).not_to be_empty
    expect(10).not_to be_odd
    expect(nil).not_to be_truthy
    
    expect('Malaysia').not_to start_with('car')
    expect('Malaysia').not_to end_with('city')
    
    expect(5).not_to respond_to(:length)
    expect([:a, :b, :c]).not_to include(:d)

    expect { 11 / 3 }.not_to raise_error
    expect { 11 / 0 }.not_to raise_error(NameError)
  end
end