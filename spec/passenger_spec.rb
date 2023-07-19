require './lib/passenger.rb'

describe Passenger do
    it "exsist" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})  

        expect(charlie).to be_an_instance_of(Passenger)
        expect(taylor.age).to eq(12)
    end
end

describe "#adult?" do
    it "checks if the passenger is 18 or over" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
        
        expect(charlie.adult?).to eq(true)
        expect(taylor.adult?).to eq(false)
    end
end

describe "#drive" do
    it "changes drive attribute to true" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        
        expect(charlie.driver).to eq(false)
        
        charlie.drive

        expect(charlie.driver).to eq(true)
    end
end

describe "#driver?" do
    it "checks passenger to see if they are a driver" do
        charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
        charlie.drive

        expect(charlie.driver?).to eq(true)
        expect(taylor.driver?).to eq(false)
    end
end

        
