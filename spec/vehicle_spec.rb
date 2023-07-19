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
    it "adds passengers to vehicle" do
        vehicle = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        jude = Passenger.new({"name" => "Jude", "age" => 20}) 
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        vehicle.add_passenger(charlie)
        vehicle.add_passenger(jude)
        vehicle.add_passenger(taylor)

        expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end
end


