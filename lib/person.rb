require "pry"
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize name
        @name = name
        self.bank_account = 25
        self.happiness = 8
        self.hygiene = 8
    end

    def happiness=change_happy
        if change_happy > 10 
            @happiness = 10
        elsif change_happy < 0
            @happiness = 0
        else
            @happiness = change_happy
        end
    end

    def hygiene=godliness
        if godliness > 10
            @hygiene = 10
        elsif godliness < 0
            @hygiene = 0
        else
            @hygiene = godliness
        end
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness >7
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, topic
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

end

pat = Person.new("Patrick")
manda = Person.new("Amanda")
# binding.pry