RSpec.describe 'include matcher' do
  describe 'hot chocolate' do 
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end

    it{ is_expected.to include('hot')}
    it{ is_expected.to include('choc')}
    it{ is_expected.to include('late')}
  end

  describe [10,20,30] do
    it 'checks for inclusion in the array, regardless of order' do
      expect(subject).to include(10)
      expect(subject).to include(20, 10)
      expect(subject).to include(30, 10)
    end

    it { is_expected.to include(10,30,20)}
    it { is_expected.to include(10,20)}
  end

  describe ({ a: 1, b: 2 }) do
    it 'can check for key existance' do 
      expect(subject).to include(:a)
      expect(subject).to include(:a, :b)
      expect(subject).to include(:b, :a)
    end

    it 'can check for key-value pair' do
      expect(subject).to include(a: 1)
    end


    it { is_expected.to include(:b)}
    it { is_expected.to include(b: 2)}
  end
end