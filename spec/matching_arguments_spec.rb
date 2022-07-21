RSpec.describe 'matching arguments' do
  it 'can return different values depending on the argument' do
    there_element_array = double # [1,2,3]

    allow(there_element_array).to receive(:first).with(no_args).and_return(1)
    allow(there_element_array).to receive(:first).with(1).and_return([1])
    allow(there_element_array).to receive(:first).with(2).and_return([1,2])
    allow(there_element_array).to receive(:first).with(be >=3).and_return([1,2,3])

    expect(there_element_array.first).to eq(1)
    expect(there_element_array.first(1)).to eq([1])
    expect(there_element_array.first(2)).to eq([1,2])
    expect(there_element_array.first(5)).to eq([1,2,3])

  end
end