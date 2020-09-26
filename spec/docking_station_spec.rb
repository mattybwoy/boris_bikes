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
    it 'can release a bike' do
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
    it 'rejects another bike' do
      bike = Bike.new
      20.times { subject.dock Bike.new }
      expect { subject.dock(bike) }.to raise_error 'No bike space'
  end
  
  describe '#bike to return a docked bike' do
    it 'allows bike to be returned' do
      bike = DockingStation.new.bike
    expect { is_expected.to respond_to(:bike) }
  end
end
  describe 'default capacity is 20' do
    it 'checks the default is 20 bikes max' do
      expect(subject.capacity).to eq(20)
    end
  end
end
end