
require 'minitest/autorun'
require_relative '../jogadas.rb'

class JogadasTest < Minitest::Test

    def test_initialize_jogada
        j = Jogada.new('1','1')
        assert_equal j.vitoria, 0
    end

end