RSpec.shared_examples 'Ruby object with three elements' do
  it 'returns the number off items' do 
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject {[1, 2, 3]}
  include_examples 'Ruby object with three elements'
end

RSpec.describe String do
  subject { 'abc' } 
  include_examples 'Ruby object with three elements'
end

RSpec.describe Hash do
  subject {{ a:1, b:2, c:3 }}
  include_examples 'Ruby object with three elements'
end

class SuasageLink
  def length
    3
  end
end

RSpec.describe SuasageLink do
  subject {described_class.new}
  include_examples 'Ruby object with three elements'
end