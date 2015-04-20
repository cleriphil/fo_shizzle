class String
  define_method(:fo_shizzle) do
    fo_shizzled_array = []
    words = self.split()
    words.each() do |word|
      letters = word.split("")
      letters_size = letters.length()
      word_array = []
      letters_size.times() do |time|
        current_letter = letters[time]
        if time.>(0).&(current_letter.==('s'))
            word_array.push('z')
        else
          word_array.push(current_letter)
        end
      end
      p(word_array)
      fo_shizzled_array.push(word_array.join())
      p(fo_shizzled_array)
    end
    fo_shizzled_sentence = fo_shizzled_array.join(" ")
    fo_shizzled_sentence
  end
end
