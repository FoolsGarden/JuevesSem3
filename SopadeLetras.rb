class Board
  # attr_accessor :board
  # You should put here the given boards templates
  # @@boards_templates = # Palabras y Plantillas de Tableros
  @@boards_template_1 = [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
  @@boards_template_2 = [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
  @@boards_template_3 = [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]
  @@abc = %w(Q W E R T Y U I O P L K J H G F D S A Z X C V B N M).shuffle
  def initialize
     @letters = @@boards_template_3[1]
    # letters = @@boards_template_2.drop 1
    # letters = @@boards_template_3.drop 1
    @@abc.each do |letter|
      @letters.sub!(/X/, letter)
    end
    @letters_strings = @letters.chars
     @dimensional_array = Array.new
  end

  def to_s

     8.times do 
        @dimensional_array << @letters_strings.pop(5)
     end

      @board = @dimensional_array.reverse

     # board.each{|row| print "#{row.join(' | ')}\n"}
     @board.each{|row| print "#{row}\n"}
  end

  def sarch_word_horizontal
      @board.each do |row|
      row_join = row.join
        @@boards_template_1[0].each do |word|  
        if row_join.include?(word)
          p word
          return true
        end
      end
    end
    false
  end

  def sarch_word_horizontal_reverse
     @board.each do |row|
      row_join = row.join
        @@boards_template_1[0].each do |word|  
        if row_join.include?(word.reverse)
          p word
          return true
        end
      end
    end
    false
  end

  def sarch_word_vertical
    @board.transpose.each do |row|
      row_join = row.reverse.join
        @@boards_template_2[0].each do |word|  
        if row_join.include?(word.reverse)
          p word
          p true
        end
      end
    end
    false

  end

  def sarch_word_vertical_reverse
    @board.transpose.each do |row|
      row_join = row.reverse.join
        @@boards_template_2[0].each do |word|  
        if row_join.include?(word)
          p word
          p true
        end
      end
    end
    false

  end

  def sarch_word_diagonal_derecha
    padding = @board.size - 1
    p @board
    padded_matrix = []

    @board.each do |row|
      inverse_padding = @board.size - padding
      padded_matrix << ([nil] * inverse_padding) + row + ([nil] * padding)
      padding -= 1    
    end

    padded_matrix.reverse.transpose.map(&:compact).each do |word|
      var = word.join 
      @@boards_template_3[0].each do |word|
        if var.include?(word)
          p word
          p true
        end
      end
    end
    false
  end

    def sarch_word_diagonal_derecha_reverse
    padding = @board.size - 1
    p @board
    padded_matrix = []

    @board.each do |row|
      inverse_padding = @board.size - padding
      padded_matrix << ([nil] * inverse_padding) + row + ([nil] * padding)
      padding -= 1   
    end 

    padded_matrix.transpose.map(&:compact).each do |word|
      var = word.join 
      @@boards_template_3[0].each do |word|
        if var.include?(word)
          p word
          p true
        end
      end
    end
    false
  end

  #  private
  # def complete_board!
  # end

end

    boards = Board.new
    puts  boards
    p boards.sarch_word_diagonal_derecha_reverse
    