def words(words)
  words = words.split(" ")

  word_hash = {}
  words.each do |word|
    word_hash[word] = words.count{ |word_check| word_check==word }
  end
  return word_hash
end
