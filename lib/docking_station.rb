require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @@bicycle = []
  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
    @@bicycle << @bike
    if @@bicycle.count > 20
      raise 'No bike space'
    end
  end
end

