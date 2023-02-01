require_relative "croupier"

# escolher o valor do banco.
bank_score = pick_bank_score
# iniciar o score do usuário a 0.
player_score = 0
# perguntar ao jogador por uma carta
puts "Card? 'y' or 'yes' to get a new card"
# pegar a resposta e guardar numa variavel
player_answer = gets.chomp
# se a resposta for y ou yes escolher a carta do jogador e adicionar ao score do jogador
if player_answer == 'y' || player_answer == 'yes'
  player_score += pick_player_card
  # mostrar o estado do jogo com a mensagem
  puts state_of_the_game(player_score, bank_score)
else
  # se ele disser algo diferente de y ou yes, mostrar a mensagem de fim do jogo
  puts end_of_the_game(player_score, bank_score)
end
