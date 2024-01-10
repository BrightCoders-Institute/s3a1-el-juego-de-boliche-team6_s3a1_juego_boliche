print 'Presiona la letra t para tirar la bola: '

if gets.chomp == 't'

  tiro_aleatorio = rand(1..10)
  puts "Numero de bolos tirados : #{tiro_aleatorio}"
else
  print 'No presionaste la letra t no se te contara ningun punto'

end
