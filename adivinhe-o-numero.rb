novo_jogo = "s"

while novo_jogo == "s"

    puts "Adivinhe o número entre 1 e 100"
    seu_numero = gets.to_i
    puts seu_numero

    pc_numero = Random.rand(99) + 1
    #puts pc_numero

    tentativas = 1

    while pc_numero != seu_numero
        if pc_numero > seu_numero
            puts "O número é maior que #{seu_numero}"
        else 
            puts "O número é menor que #{seu_numero}"
        end

        tentativas = tentativas + 1
        puts "Tente novamente: "
        seu_numero = gets.to_i
    end

    puts "Parabéns, você acertou! O número era #{pc_numero}"
    puts "Você usou #{tentativas} tentativas"

    puts "Deseja jogar novamente? (s/n)"
    novo_jogo = gets.chomp  #chomp não pula a linha [Ruby sempre pula]

end

puts "Obrigado por jogar comigo :)"

