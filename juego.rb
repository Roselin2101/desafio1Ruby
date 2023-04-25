arg = ARGV[0]

#Inicializa y declara opciones tijera, piedra o papel

option = 0 if arg == 'tijera'
option = 1 if arg == 'piedra'
option = 2 if arg == 'papel'

# Si se ingresa valores diferentes a los que se piden se va enviar un mensaje por puts especificando las opciones correctas

if option != 0 && option != 1 && option != 2
  puts "Argumento inválido: Debe ser piedra, papel o tijera"
else
  # rand_number = rand(0..2) # alternative el rango es desde 0,1,2 
  rand_number = rand(0-3)
  computer_option = 'tijera' if rand_number == 0
  computer_option = 'piedra' if rand_number == 1
  computer_option = 'papel' if rand_number == 2

  puts "Computador juega #{computer_option}"
  if option == rand_number
    puts "Empataste"
  elsif (option == 0 && rand_number == 1) || (option == 1 && rand_number == 2) || (option == 2 && rand_number == 0)
    puts "Perdiste"
  elsif (option == 2 && rand_number == 1) || (option == 1 && rand_number == 0) || (option == 0 && rand_number == 2)
    puts "Ganaste"
  end
end
