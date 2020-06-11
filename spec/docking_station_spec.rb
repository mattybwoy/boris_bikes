require './lib/docking_station'

=begin describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'is an instance of Bike class' do
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it 'docks a bike at the docking station' do 
    expect(subject.dock).to eq true
  end
end 
=end

describe DockingStation do

  describe '#release_bike' do

    it 'release a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

  end

  describe '#dock something' do
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
  end
  describe '#bike to return a docked bike' do
      bike = DockingStation.new.bike
    it { is_expected.to respond_to(:bike) }
  end
end