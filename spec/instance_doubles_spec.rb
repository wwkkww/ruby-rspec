class Person
  def a(seconds)
    sleep(seconds)
    "Hello"
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: "Hello", b: 20)
      expect(person.a).to eq('Hello')
    end
  end

  describe 'instance double' do
    it 'can only implements methods that are defined in the class' do
      # person = instance_double(Person, { a: 'Hello', b: 20}) # mock of instance of Person class

      person = instance_double(Person)
      allow(person).to receive(:a).with(3).and_return('Hello')
      expect(person.a(3)).to eq("Hello")
    end
  end
end