# your code goes here
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(num)
        @happiness = num.clamp(0, 10)
    end

    def hygiene=(num)
        @hygiene = num.clamp(0, 10)
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(num)
        @num = num
        self.bank_account += num
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -=3
    end

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    # attr_accessor :happiness (not sure why this isn't working)

end