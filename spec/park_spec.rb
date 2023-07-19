require './lib/park'
require './lib/vehicle'
require './lib/passenger'

describe Park do
    it "exsist" do
        park = Park.new("Denve Park", 18)

        expect(park).to be_an_instance_of(Park)
    end
end

describe "#entering" do
    it 'tracks vehicles coming into park' do
        park = Park.new("Denve Park", 18)
        vehicle = Vehicle.new("2001", "Honda", "Civic")
        park.entering(vehicle)

        expect(park.vehicles_entered).to eq([vehicle])
    end
end

describe "#list_passengers" do
    it "lists all passengers that entered the park" do
        park = Park.new("Denve Park", 18)
        vehicle = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        vehicle.add_passenger(charlie)
        vehicle.add_passenger(taylor)
        park.entering(vehicle)

        expect(park.list_passengers).to eq("Charlie, Taylor")

        jude = Passenger.new({"name" => "Jude", "age" => 20}) 
        vehicle.add_passenger(jude)

        expect(park.list_passengers).to eq("Charlie, Taylor, Jude")
    end
end

describe "#revenue" do
    it "checks how much revenue is generated" do
        park = Park.new("Denve Park", 18)
        vehicle = Vehicle.new("2001", "Honda", "Civic")
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        vehicle.add_passenger(charlie)
        vehicle.add_passenger(taylor)
        park.entering(vehicle)

        expect(park.revenue).to eq(18)

        jude = Passenger.new({"name" => "Jude", "age" => 20}) 
        vehicle.add_passenger(jude)

        expect(park.revenue).to eq(36)
    end
end


