require_relative "black_jack"

def state_of_the_game(player_score, bank_score)
  "Your score is #{player_score}, bank is #{bank_score}"
end

def end_of_the_game(player_score, bank_score)
  if player_score > 21
    "You are over 21... You loose."
  elsif player_score == 21
    "BLACK JACK!"
  elsif player_score > bank_score
    "You beat the bank! You win!!!"
  elsif player_score < bank_score
    "The bank beats you. You loose!"
  else
    "Push"
  end
end
