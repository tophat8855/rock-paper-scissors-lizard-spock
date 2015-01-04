class Throw
  attr_reader :value, :throw_name
  ROCK = :rock
  PAPER = :paper
  SCISSORS = :scissors
  LIZARD = :lizard
  SPOCK = :Spock
  ARRAY_OF_THROWS = [ROCK, SPOCK, PAPER, LIZARD, SCISSORS,]

  def initialize(throw)
    if ARRAY_OF_THROWS.include? throw.to_sym
      @throw_name = throw.to_sym
    end

    @value = ARRAY_OF_THROWS.find_index(@throw_name).to_i
  end

  def exterminates?(opponent)
    outcome = (@value - opponent.value) % 5
    if outcome == 1 || outcome == 2
      true
    else
      false
    end
  end
end
