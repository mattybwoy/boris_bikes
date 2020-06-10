require './lib/docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  #it "responds to release bike" do
  #expect(release_bike).to respond_to 

  it 'is an instance of Bike class' do
    expect(subject.release_bike).to be_instance_of(Bike)
  end
  it 'docks a bike at the docking station' do 
    expect(subject.dock).to eq true
  end
end