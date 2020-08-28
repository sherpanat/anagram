def anagramize(words)
  anagrams = words.group_by { |word| word.downcase.chars.sort }.values
end

def fetch_words
  File.read("words.txt").split
end

beginning_time = Time.now
anagrams = anagramize(fetch_words)
ending_time = Time.now

p anagrams

p "Vitesse d'execution de la fonction :"
p speed = ending_time - beginning_time
