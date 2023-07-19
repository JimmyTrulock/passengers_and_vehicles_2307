require './lib/vehicle'
require './lib/passenger'

class Park
    attr_accessor :name, :admission_price, :vehicles_entered

    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles_entered = []
    end

    def entering(vehicle)
        @vehicles_entered << vehicle
    end

    def list_passengers
        passenger_list = []
        @vehicles_entered.each do |vehicle|
            vehicle.passengers.each do |passenger|
                passenger_list << passenger.name
            end
        end
        passenger_list.join(", ")
    end
end
