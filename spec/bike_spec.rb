require 'bike'

describe Bike do
  #it { is_expected.to respond_to :working? }
  #alternative one liner syntax
  
  #it "checks bike is working" do 
    #expect(subject.working?).to eq true

  describe 'working?' do
    it 'bike responds to bike working?' do
    bike = Bike.new
      expect(bike).to respond_to :working?

    end
  end
end
