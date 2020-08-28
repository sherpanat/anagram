require 'json'

def to_words
  
end

def anagramize(words)
  anagrams = words.group_by { |word| word.downcase.chars.sort }.values
  # write_new_file(anagrams)
end

def fetch_words
  # file = File.open('words.txt')
  # file.readlines.map(&:chomp)
  # file.close
  File.read("words.txt").split
end

def write_new_file(anagrams)
  File.open("anagrams.txt", "w")
end


beginning_time = Time.now
anagrams = anagramize(fetch_words)
ending_time = Time.now
p "Vitesse d'execution de la fonction :"
p speed = ending_time - beginning_time
p anagrams



JSON.parse(File.read("words.txt"))
