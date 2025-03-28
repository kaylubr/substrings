def substrings(sentence, dictionary)
  words = sentence.split
  words_hash = dictionary.reduce(Hash.new) do |records, dictionary_word|
    count = 0
    words.each do |sentence_word|
      if sentence_word.downcase.include?(dictionary_word.downcase)
        count += 1
        records[dictionary_word] = count
      end
    end
    records
  end
end
