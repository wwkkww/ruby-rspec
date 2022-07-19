RSpec.describe 'a random double' do
  it 'only allow defined method to be invoked' do

    ### Alternative 1:
    # stuntman = double("Mr. Danger", { fall_off_ladder: 'Ouch', light_on_fire: true })
    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to be_truthy

    ### Alternative 2:
    # stuntman = double("Mr. Danger")
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    # allow(stuntman).to receive(:light_on_fire).and_return(true)
    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to be_truthy

    ### Alternative 3:
    stuntman = double("Mr. Danger")
    allow(stuntman).to receive_messages({ fall_off_ladder: 'Ouch', light_on_fire: true})
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to be_truthy
  end

  it "tests the student's knowledge of the course's content" do
    db = double('Database Connection')
    allow(db).to receive_messages({ connect: true, disconnect: 'Goodbye'})
    expect(db.connect).to be_truthy
    expect(db.disconnect).to eq('Goodbye')
 

    fs = double('File System')
    allow(fs).to receive_messages({ read: 'Romeo and Juliet', write: false })
    expect(fs.read).to eq('Romeo and Juliet')
    expect(fs.write).to be_falsy
  end

end