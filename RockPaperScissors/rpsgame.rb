play_again = 'y'

results = {
  :players_choice => 0,
  :comp_choose => 0,
  :TIE => 0
}

while play_again == "y"
  rps_array = [ "rock", "paper", "scissor"]
  puts "Rock, paper, scissor?"
  players_choice = gets.chomp.downcase
  comp_choose = rps_array.sample
  puts comp_choose

  if players_choice == comp_choose
    puts "TIE"
  elsif players_choice == "rock" and comp_choose == "scissor"
    puts "PLAYER wins!"
  elsif players_choice == "scissor" and comp_choose == "paper"
    puts "PLAYER wins!"
  elsif players_choice == "paper" and comp_choose == "rock"
    puts "PLAYER wins!"
  else
    puts "CPU wins!"
  end
  puts "Play again? (y/n)"
  play_again = gets.chomp
end
