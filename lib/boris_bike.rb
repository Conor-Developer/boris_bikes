class DockingStation
  attr_reader :bikes, :DEFAULT_CAPACITY

  def initialize
    @bikes = []
    @DEFAULT_CAPACITY = 20
  end

  def release_bike
    return raise "There are no bikes available" unless empty? == false
    @bikes.pop
    Bike.new
  end

  def no_of_bikes
    @bikes.length
  end

  def dock(bike)
    return raise "No more spaces to dock bike" unless full? == false
    return @bikes.push(bike) if bike.instance_of?(Bike)
  end

  private 

  def full?
    if @bikes.length >= @DEFAULT_CAPACITY
      true
    else
      false
    end
  end

  def empty?
    if @bikes.length == 0
      true
    else
      false
    end
  end
end

class Bike

  def working?
    true
  end
end
