require_relative 'lib/throw'

puts 'What would you like to throw?'
player_input = gets.chomp.to_sym

until Throw::ARRAY_OF_THROWS.include? player_input
  puts "Try again. Options are rock, paper, scissors, lizard, or Spock, and are case-sensitive"
  player_input = gets.chomp.to_sym
end

player_throw = Throw.new(player_input)

puts "You chose #{player_throw.throw_name}"

computer_throw = Throw.new(Throw::ARRAY_OF_THROWS.sample)

puts "Computer chose #{computer_throw.throw_name}"

if player_throw.exterminates? computer_throw
  puts "You win!"
elsif computer_throw.exterminates? player_throw
  puts "Computer wins! All your base are belong to us."
else
  "Tie!"
end
