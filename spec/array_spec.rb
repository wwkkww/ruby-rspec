RSpec.describe Array do
  it 'should have start off with empty array' do
    expect(subject.length).to be(0)
    subject.push('a')
    expect(subject.length).to be(1)
  end
end