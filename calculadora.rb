class Calculadora
  def adicao(n1, n2)
    res = n1 + n2
    puts "#{n1} + #{n2} = #{res}"
    res
  end

  def subtracao(n1, n2)
    res = n1 - n2
    puts "#{n1} - #{n2} = #{res}"
    res
  end

  def multiplicacao(n1, n2)
    res = n1 * n2
    puts "#{n1} * #{n2} = #{res}"
    res
  end

  def divisao(n1, n2)
    if n2 == 0
      puts "Divisão inválida! Não é possível dividir por zero."
      return nil
    else
      res = n1.to_f / n2
      puts "#{n1} / #{n2} = #{res.round(3)}"
      res.round(3)
    end
  end

  def operacao_invalida
    puts "Operação inválida!"
  end
end

referencia = 1

while referencia == 1
  puts "Calculadora"
  puts "-----------"
  puts "Escolha a operação:"
  puts "1 - Adição"
  puts "2 - Subtração"
  puts "3 - Multiplicação"
  puts "4 - Divisão"
  print "Digite a operação desejada: "
  operacao = gets.chomp.to_i

  print "Digite o primeiro número: "
  n1 = gets.chomp.to_f

  print "Digite o segundo número: "
  n2 = gets.chomp.to_f

  calculo = Calculadora.new

  case operacao
  when 1
    calculo.adicao(n1, n2)
  when 2
    calculo.subtracao(n1, n2)
  when 3
    calculo.multiplicacao(n1, n2)
  when 4
    calculo.divisao(n1, n2)
  else
    calculo.operacao_invalida
  end

  puts "\nDeseja realizar uma nova operação?"
  puts "1 - Sim"
  puts "2 - Não"
  print "Escolha: "
  referencia = gets.chomp.to_i

end

puts "Programa finalizado. Obrigado por usar a calculadora!"
