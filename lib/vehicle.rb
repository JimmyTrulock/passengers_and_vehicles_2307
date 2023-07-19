require './lib/passenger'

class Vehicle
  attr_accessor :year, :make, :model, :speeding, :passengers

  def initialize(year, make, modle)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
  end

  def speeding?
    if @speeding == true
      true
    else 
      false
    end
  end

  def speed
    @speeding = true
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    count = 0
    passengers.each do |passenger|
      if passenger.age >= 18
        count = count + 1
      end
    end
    count
  end
end