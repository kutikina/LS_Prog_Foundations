VALID_CHOICES = %w(r p s l sp).freeze

def prompt(message)
  puts("=>#{message}")
end

WINNERS = {
  'r' => %w(s l),
  'p' => %w(r sp),
  's' => %w(p s),
  'l' => %w(sp p),
  'sp' => %w(s r)
}.freeze

CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}.freeze

def short_to_long(ch)
  CHOICES[ch]
end

def win?(first, second)
  WINNERS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie")
  end
end

welcome_message = <<-MSG
  Welcome to advanced 'Rock, paper scissors'
    You are playing the computer, first to five wins.
    You have five choices...
MSG

choice_prompt = <<-MSG
  What would you like to choose?
    'r' for rock
    'p' for paper
    's' for scissors
    'sp' for spock
    'l' for lizard
  MSG

prompt(welcome_message)
computer_score = 0
player_score = 0

while player_score < 5 && computer_score < 5
  choice = ''

  loop do
    prompt(choice_prompt)
    choice = gets.chomp
    prompt('You must make a valid choice') unless %w(s p r sp l).include?(choice)
    break
  end

  computer_choice = VALID_CHOICES.sample
  prompt "You chose #{short_to_long(choice)}; Computer chose #{short_to_long(computer_choice)}."

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1
  end

  puts "\nThe scores are Player #{player_score} Computer #{computer_score}.\n\n"

end

if computer_score == 5
  puts "Game over, the computer won!!"
else
  puts "Game over, you won!!"
end

prompt("Thanks for playing.")
