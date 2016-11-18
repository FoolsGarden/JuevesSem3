#Ejercicio 1

def tic_a_toe
gato = %w(X X X X X  O O O O).shuffle
board = [[],[], [], [], []]
space = "––––––––––"
  board.each_with_index do |array, index|
  case index
    when 0
      board[0] << gato.pop(3)
    when 1
      board[1] << space
    when 2
      board[2] << gato.pop(3)
    when 3
      board[3] << space
    when 4
      board[4] << gato.pop(3)
    end
end #do
board.each{|row| print "#{row.join(' | ')}\n"}
end

tic_a_toe

#Ejerciocio numero 2

persons = [["Nombre",           "Edad",  "Genero",    "Grupo",    "Calificaciones"],
         ["Rodrigo García",     13,   "Masculino",  "Primero",   [9, 9, 7, 6, 8]],                 
         ["Fernanda Gonzalez",  12,   "Femenino",   "Tercero",   [6, 9, 8, 6, 8]],    
         ["Luis Perez",         13,   "Masculino",  "Primero",   [8, 7, 7, 9, 8]],                
         ["Ana Espinosa",       14,   "Femenino",   "Segundo",   [9, 9, 6, 8, 8]],         
         ["Pablo Moran ",       11,   "Masculino",  "Segundo",   [7, 8, 9, 9, 8]]
        ]
keys = [persons.first]
keys_values = keys.product(persons.drop 1)
hashes = keys_values.map do |a| 
  a.transpose.to_h
end
p hashes[0]["Calificaciones"]
p hashes[1]["Nombre"]
p hashes[2]["Edad"]
p hashes[3]["Grupo"]
p hashes[4]["Genero"] 