# Define a table of morse code characters and their corresponding letters or numbers.
MORSE_TABLE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
  '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8',
  '----.' => '9'
}.freeze

# Define a method to decode a single character from morse code.
def decode_char(char)
  MORSE_TABLE[char]
end

# Define a method to decode a whole word from morse code.
def decode_word(word)
  my_word = ''

  # Look up each character in the morse code table and append its corresponding letter or number to the decoded word.
  word.split.each do |char|
    my_word += decode_char(char)
  end
  # Return the decoded word.
  my_word
end

# Define a method to decode a whole sentence from morse code.
def decode(sentence)
  my_sentence = ''

  # Decode each word and append it to the decoded sentence, separated by spaces.
  sentence.split('   ').each do |word|
    my_sentence += "#{decode_word(word)} "
  end

  # Return the decode sentence
  my_sentence
end

# Print the decoded message for a sample input.
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
