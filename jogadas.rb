
class Jogada 

    attr_accessor :jogada1, :jogada2, :vitoria
    
    def initialize(jogada1, jogada2)
        self.jogada1 = jogada1
        self.jogada2 = jogada2
        a = ["1","2","3"]
        #a = %w{one two three}
        unless a.include?(jogada1) || a.include?(jogada2) #a menos que
            puts "OPCAO INVÁLIDA"
            raise Exception("OPÇÃO INVÁLIDA!")
        end 
        self.valida_jogada
    end

    def to_s
        "Jogada do jogador 1: #{jogada1}. Jogada do jogador 2: #{jogada2}"
    end

    def valida_jogada

        if (jogada1 == "1" && jogada2 == "1" ) || 
            (jogada1 == "2" && jogada2 == "2" ) || 
            (jogada1 == "3" && jogada2 == "3" )
            self.vitoria = 0
            
        elsif jogada1 == "1" && jogada2 == "3"
            self.vitoria = 1
        elsif jogada1 == "2" && jogada2 == "1"
            self.vitoria = 1
        elsif jogada1 == "3" && jogada2 == "2"
           self. vitoria = 1
        elsif jogada2 == "1" && jogada1 == "3"
            self.vitoria = 2
        elsif jogada2 == "2" && jogada1 == "1"
            self.vitoria = 2
        elsif jogada2 == "3" && jogada1 == "2"
            self.vitoria = 2   
        end   
    end
end