class DockingStation
  attr_reader :bikes
  attr_accessor :capacity
  
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    return raise "There are no bikes available" unless empty? == false

    @bikes.each_index do |index|
      if @bikes[index].working? == false
        return false
      else 
        released_bike = @bikes.delete_at(index)
        return released_bike
      end
    end
  end

  def no_of_bikes
    @bikes.length
  end

  def dock(bike)
    return raise "No more spaces to dock bike" unless full? == false
    return @bikes.push(bike) #if bike.instance_of?(Bike)
  end

  private 

  def full?
    if @bikes.length >= @capacity
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

  def initialize
    working?
  end

  def report_broken
    @working = false
  end

  def working?
    if @working == false
      return @working
    else 
      @working = true
    end
  end
end


class Van

end
