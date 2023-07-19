class Passenger
    attr_accessor :name, :age, :driver

    def initialize(details)
        @name = details["name"]
        @age = details["age"]
        @driver = false
    end

    def adult?
        if @age >= 18
            true
        else 
            false
        end
    end

    def drive
        @driver = true
        @driver
    end

    def driver?
        if @driver == true
            true
        else
            false
        end
    end
end
