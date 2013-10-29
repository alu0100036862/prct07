# frac_main.rb

require "racional"
	
  racional1 = Racional.new(4,12)	#fraccion1 = Racional.new(1,3)
  racional2 = Racional.new(4,6)		#fraccion2 = Racional.new(2,3)

  # Debe existir un numerador
  puts "El numerador del número racional1 es :  #{racional1.num}"	
  puts "El numerador del número racional2 es :  #{racional2.num}"	

  # Debe existir un denominador
  puts "El denomerador del número racional1 es :  #{racional1.denom}"
  puts "El denomerador del número racional2 es :  #{racional2.denom}"
	
  # Debe de estar en su forma reducida
  puts "El número racional1 se imprime :  #{racional1}"
  puts "El número racional2 se imprime :  #{racional2}"

  # Se debe invocar al metodo num() para obtener el numerador
  puts "El numerador de fraccion1 es  :  #{racional1.num()}"

  # Se debe invocar al metodo denom() para obtener el denominador
  puts "El numerador de fraccion1 es :  #{racional1.denom()}"

  # Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador
  puts "El numerador de fraccion1 es :  #{racional1.to_s}"
  puts "El numerador de fraccion2 es :  #{racional2.to_s}"

  # Se debe mostar por la consola la fraccion en formato flotante
  puts "racional_1: #{racional1}, vale: #{racional1.to_f}"
  puts "racional_2: #{racional2}, vale: #{racional2.to_f}"

  # Se debe comparar si dos fracciones son iguales con ==
  puts "Es fraccion1 == fraccion2? #{racional1 == racional2}"
  puts "Es fraccion1 == 10/30? #{racional1 == Racional.new(10, 30)}"

  # Se debe calcular el valor absoluto de una fraccion con el metodo abs
  puts "Valor absoluto racional1: #{racional1.abs}"
  puts "Valor absoluto racional2: #{racional2.abs}"

  # Se debe calcular el reciproco de una fraccion con el metodo reciprocal
  puts "racional1 reciproca: #{racional1.reciprocal}"

  # Se debe calcular el opuesto de una fraccion con -
  puts "El opuesta de la racional1: #{-racional1}"
  puts "El opuesta de la racional2: #{-racional2}"

  # Se debe sumar dos fracciones con + y dar el resultado de forma reducida
  puts "racional1 + racional2: #{racional1 + racional2}"

  # Se debe restar dos fracciones con - y dar el resultado de forma reducida
  puts "racional1 - racional2: #{racional1-racional2}"

  #Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida
  puts "racional1 * racional2: #{racional1*racional2}"

  # Se debe dividir dos fracciones con / y dar el resultado de forma reducida
  puts "racional1 / racional2: #{racional1/racional2}"

  # Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida
  puts "racional1 % racional2: #{racional1%racional2}"

  # Se debe de poder comprobar si una fracion es menor que otra
  puts "racional1 < racional2? --> #{racional1 < racional2}"

  # Se debe de poder comprobar si una fracion es mayor que otra
  puts "racional1 > racional2? --> #{racional1 > racional2}"

  # Se debe de poder comprobar si una fracion es menor o igual que otra
  puts "racional1 <= racional2? --> #{racional1 <= racional2}"

  # Se debe de poder comprobar si una fracion es mayor o igual que otra
  puts "racional1 >= racional2? --> #{racional1 >= racional2}"

