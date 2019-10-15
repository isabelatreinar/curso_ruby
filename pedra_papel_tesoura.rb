require_relative 'jogadas.rb'

class PedraPapelTesoura
 
     def jogar
         i = 0
         pj1 = 0
         pj2 = 0
  
        while i <= 2
            
             puts 'Digite sua escolha:'
             puts '[1] Pedra'
             puts '[2] Papel'
             puts '[3] Tesoura'
             puts 'JOGADOR 1'
             jogador1 = gets.chomp
             puts 'JOGADOR 2'
             jogador2 = gets.chomp
             
            jogada = Jogada.new(jogador1, jogador2)
            
            if jogada.vitoria == 1
                pj1 += 1
            elsif jogada.vitoria == 2
                pj2 += 1 
            end 
           i +=1 
    
        end
       
         if pj1 > pj2
             puts '*** Jogador 1 Venceu!!! ***'
         elsif pj2 > pj1
              puts '*** Jogador 2 Venceu!!! ***'
         end
     end
 end
 
 
 