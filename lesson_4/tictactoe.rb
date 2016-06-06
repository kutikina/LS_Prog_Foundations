require 'pry'

INITIAL_MARKER = " ".freeze
PLAYER_MARKER = "X".freeze
COMPUTER_MARKER = "O".freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagionals
CHOOSE_PLAYER = "choose"


def prompt(mesg)
  puts "=> #{mesg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, pl_score, comp_score, first_player)
  system 'clear'
  puts "You are a #{PLAYER_MARKER} and the computer is a #{COMPUTER_MARKER}."
  puts "The scores are Player: #{pl_score}, Computer: #{comp_score}."
  if first_player == "computer"
    puts "Ok, the computer goes first this time."
  else
    puts "Ok, your turn first..."
  end
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd [7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, seperator = ', ', final = 'or')
  arr.size > 1 ? arr[0..-2].join(seperator) + seperator + final + ' ' + arr.last.to_s : arr.last
end

def player_places_piece!(brd)
  square = ''
  unless board_full?(brd)
    loop do
      prompt "Please choose a square (#{joinor(empty_squares(brd), ', ', 'or')}):"
      square = gets.chomp.to_i
      break if empty_squares(brd).include?(square)
      prompt 'That\'s not a valid choice.'
    end
    brd[square] = PLAYER_MARKER
  end
end

def computer_places_piece!(brd)
  if detect_opportunity(brd)
    square = fill_opportunity(brd)
  elsif detect_threat(brd)
    square = block_threat(brd)
  elsif brd[5] == INITIAL_MARKER
    square = 5
  else
    square = empty_squares(brd).sample
  end
  #binding.pry
  brd[square] = COMPUTER_MARKER
  #binding.pry
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_threat(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 && brd.values_at(*line).count(COMPUTER_MARKER) == 0
      return line
    end
  end
  nil
end

def block_threat(brd)
     detect_threat(brd).select {|value| brd[value] == INITIAL_MARKER}.join.to_i
end

def detect_opportunity(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2 && brd.values_at(*line).count(PLAYER_MARKER) == 0
      return line
    end
  end
  nil
end

def fill_opportunity(brd)
    detect_opportunity(brd).select {|value| brd[value] == INITIAL_MARKER}.join.to_i
end



def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

loop do
  player_score = 0
  computer_score = 0
  first_player = ''
  games_total = 0
  if CHOOSE_PLAYER == "choose"
    prompt "Who goes first you or the computer? ('c' for computer)"
    answer = gets.chomp
    if answer.downcase.start_with?('c')
      first_player = "computer"
    end
  end

  loop do
    board = initialize_board
    #puts "The scores are Player: #{player_score}, Computer: #{computer_score}."

    if first_player == "computer"
      loop do
        computer_places_piece!(board)
        display_board(board, player_score, computer_score, first_player)
        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
      end
    else
      loop do 
        display_board(board, player_score, computer_score, first_player)
        player_places_piece!(board)
        computer_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
      end
    end

    display_board(board, player_score, computer_score, first_player)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      detect_winner(board) == "Player" ? player_score += 1 : computer_score += 1
    else
      prompt "It's a tie"
    end

    first_player == "computer" ? first_player = "" : first_player = "computer"

    break unless player_score < 5 && computer_score < 5
  end

  puts (player_score == 5 ? "Player wins the game!" : "Computer wins the game!")

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing!"
