require './lib/passenger'

class Vehicle
    attr_accessor :year, :make, :modle, :speeding, :passengers

    def initialize(year, make, modle)
        @year = year
        @make = make
        @modle = modle
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
end