class NumberMapping

  attr_reader :dictionary

  LETTERS = {
    2 => ["a", "b", "c"],
    3 => ["d", "e", "f"],
    4 => ["g", "h", "i"],
    5 => ["j", "k", "l"],
    6 => ["m", "n", "o"],
    7 => ["p", "q", "r", "s"],
    8 => ["t", "u", "v"],
    9 => ["w", "x", "y", "z"],
  }

  def initialize
    @dictionary = []
    load_dictionary
  end

  def load_dictionary
    file_path = 'dictionary.txt'
    File.open( file_path, 'r' ).each do |line|
      @dictionary << line.strip.downcase
    end
  end

end

