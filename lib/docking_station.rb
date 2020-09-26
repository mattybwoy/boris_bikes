require_relative 'bike'

class DockingStation
  attr_reader :bike, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @@bicycle = []
    @capacity = capacity
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

