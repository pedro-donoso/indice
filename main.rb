# Requerimiento 1, se solicita un programa que mediante el uso de métodos permita calcular el nuevo salario de un colaborador/a en función de un porcentaje mínimo de aumento establecido

puts "REQUERIMIENTO 1"
puts " "
def tu_salario
    puts "Ingresa tu salario actual aquí $:"
    tu_salario = gets.chomp.to_i
    puts "Ingresa un incremento (en porcentaje) %:"
    porcentaje = gets.chomp.to_f
    incremento = tu_salario * (porcentaje/1000)
    nuevo_salario = tu_salario + incremento
end
nuevo_salario = tu_salario
puts "El nuevo salario corresponde a $: #{nuevo_salario.to_f}"
puts " "
puts "______________________________________________________"
puts " "

#Requerimiento 2, te solicitan un programa que simule el juego de “Adivina el número”. En este programa el computador va a elegir un número aleatorio y el usuario al seleccionar un número debe indicarle si ganó o perdió. La condición para ganar es que el número del computador debe ser igual al del jugador. El rango de número va entre 1 hasta n, tomando en consideración que mientras más amplio sea el rango más duradero será el juego.

puts "ADIVINA el número elegido por la máquina para ganar (tienes 5 intentos)"
puts
def adivinanza
    indice = 1
    5.times  do |indice|
        print "Elige tu número entre 1 y 4: "
        eleccion = gets.chomp.to_i
        maquina = rand(1...3)
        puts
        if maquina  == eleccion 
        puts "RESULTADO: ¡Adivinaste! --> Máquina también eligió #{eleccion} "
        puts
        else 
            puts "RESULTADO: Perdiste:( --> Máquina eligió #{maquina}"
            puts
         end
         puts
    break if indice > 6
        end
end
adivinanza
puts "FIN DEL JUEGO, ocupaste tus 3 intentos"

puts " "
puts "______________________________________________________"
puts " "

puts "Requerimiento 3, utilizando como base el ejercicio de cálculo de IMC en la guía de ejercicios, agregar en el cálculo de Obesidad los elementos faltantes dado que la obesidad se subdivide en 3 niveles. Deberás agregar a la lógica condicional los cálculos para esos tres niveles"
    def imc
        print "Ingresa tu peso en Kilos exactos (ejemplo 104): "
            peso = gets.chomp.to_f
      puts " "
            print "Ingresa tu altura con puntos (ejemplo 1.73): "
            altura = gets.chomp.to_f
            resultado = peso / (altura * altura)
    end
    puts 
    def masa_cuerpo (resultado)
        puts
        puts "Tu Indice de Masa Corporal (IMC) es #{resultado}"
        if resultado < 18.5
            puts "¡Alerta!, estás en BAJO PESO"
        elsif resultado >= 18.5 && resultado<25 
            puts
            puts "¡Bien!, estás en PESO NORMAL"
        elsif resultado >= 25.0 && resultado<30
            puts "¡Cuidado!, estás en SOBREPESO"
        elsif
            resultado > 30 && resultado < 35
            puts
            puts "¡Preocupate!, Estás en OBESIDAD"
            puts "TIPO: Obesidad Grado I"
            puts "RANGO: Moderado (30 - 34.9)"
        elsif resultado >= 35 && resultado <50 
            puts "TIPO: Obesidad grado II"
            puts "RANGO: Severo (35 - 39.9)"
        else 
            puts
            puts "TIPO: Obesidad grado III"
            puts "RANGO: Muy Severo (más de 40)"
        end
    end 
    indice_total = imc 
    masa_cuerpo (indice_total)







