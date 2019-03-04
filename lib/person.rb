class Person
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account
  def initialize(name)
    @name = name
    @bank_account = 25.00
    @happiness = 8
    @hygiene = 8
  end
  def clean?
    @hygiene > 7
  end
  def happy?
    @happiness > 7
  end
  def happiness=(amount)
    new = [0, amount, 10].sort[1] #clamp
    @happiness = new
  end
  def hygiene=(amount)
    new = [0, amount, 10].sort[1] #clamp
    puts new
    @hygiene = new
  end
  def get_paid amount
    @bank_account += amount
    "all about the benjamins"
  end
  def take_bath
    hygiene = hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    happiness = happiness + 2
    hygiene = hygiene - 3
    "♪ another one bites the dust ♫"
  end
  def call_friend friend
    happiness = happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end
  def start_conversation friend, topic
    case topic
      when "politics"
        happiness = happiness - 1
        friend.happiness = friend.happiness - 1
        "blah blah partisan blah lobbyist"
      when "weather"
        happiness = happiness + 1
        friend.happiness = friend.happiness + 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
    end
  end
end
