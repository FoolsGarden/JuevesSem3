#chess
def chess
  board  = [[], [], [], [], [], [], [], []]
  pieces = %w(R K B Q K B K R)
  pawns  = "p"
  space  = "  "
  white  = "W"
  black  = "B"

  board.each_with_index do |array, index| 
    case index
    when 0
      pieces.each do |piece|
        board[0] << piece + white
      end 
      
    when 1
      8.times{board[1] << pawns + white}

    when 2
      8.times{board[2] << space}

    when 3
      8.times{board[3] << space}

    when 4
      8.times{board[4] << space}

    when 5
      8.times{board[5] << space}
  
    when 6
      8.times{board[6] << pawns + black}
      
    when 7
      pieces.each do |piece|
        board[7] << piece + black
      end 
 end #do2
end #def
board.each do |row|
  print "#{row.join(' | ')}\n"
end
end #def

chess

#classmates
table = [["Nombre",           "Edad",  "Genero",    "Grupo",    "Calificaciones"],
         ["Rodrigo García",     13,   "Masculino",  "Primero",   [9, 9, 7, 6, 8]],                 
         ["Fernanda Gonzalez",  12,   "Femenino",   "Tercero",   [6, 9, 8, 6, 8]],    
         ["Luis Perez",         13,   "Masculino",  "Primero",   [8, 7, 7, 9, 8]],                
         ["Ana Espinosa",       14,   "Femenino",   "Segundo",   [9, 9, 6, 8, 8]],         
         ["Pablo Moran ",       11,   "Masculino",  "Segundo",   [7, 8, 9, 9, 8]]
        ]

p table[0][4] == "Calificaciones"
p table[2][1] == 12
p table[2][2] == "Femenino"
p table[3][3] == "Primero"
p table[3][4] == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6