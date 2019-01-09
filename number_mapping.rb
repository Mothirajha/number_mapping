class NumberMapping

  attr_reader :dictionary, :numbers
  attr_accessor :mapped_letters

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

  def initialize(numbers)
    @dictionary = []
    @numbers = numbers
    load_dictionary
    @mapped_letters = map_digits_to_letters
    @total_length = @mapped_letters.length
    @min_count = 3
  end

  def load_dictionary
    file_path = 'dictionary.txt'
    File.open( file_path, 'r' ).each do |line|
      @dictionary << line.strip.downcase
    end
  end

  def map_digits_to_letters
    @numbers.to_s.chars.map { |number| LETTERS[number.to_i] }
  end

  def mix_up_letters
    ((@min_count-1)..(@total_length-1)).each do |i|
      mix_up_1 = @mapped_letters[0..i]
      mix_up_2 = keys[(i+1)..(@total_length-1)]
      next if mix_up_1.length < @min_count || mix_up_2.length < @min_count
    end
  end

  def form_words
    
  end

end

