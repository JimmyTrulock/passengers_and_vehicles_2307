require './lib/park'

describe Park do
    it "exsist" do
        park = Park.new("Denve Park", 18)

        expect(park).to be_an_instance_of(Park)
    end
end
