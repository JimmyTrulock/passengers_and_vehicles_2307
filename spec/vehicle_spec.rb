require './lib/vehicle'
require './lib/passenger'

describe Vehicle do
    it "exsist" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle).to be_an_instance_of(Vehicle)
    end
end

describe "#speed" do
    it "changes speeding attribute to true" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")
        
        expect(vehicle.speeding).to eq(false)

        vehicle.speed

        expect(vehicle.speeding).to eq(true)
    end
end

describe "#speeding?" do
    it "checks if vehicle is speeding" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")

        expect(vehicle.speeding?).to eq(false)

        vehicle.speed

        expect(vehicle.speeding?).to eq(true)
    end
end

describe "#add_passenger" do


