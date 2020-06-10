class DockingStation

  def release_bike
    bike = Bike.new
    @bike = bike
  end
  
  def dock
    true
  end
end