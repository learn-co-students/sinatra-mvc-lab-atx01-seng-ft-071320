

class PigLatinizer

  def piglatinize(user_input)
    translated_words = []
    vowels = "aeiouAEIOU"
    user_input.split.each do |word|
      if vowels.include?word[0]
        translated_words << "#{word}way"
      elsif word.length == 1
        translated_words << "#{word}way"
      else
        broken_word = word.split(/([aeiou].*)/)
        translated_words << "#{broken_word[1]}#{broken_word[0]}ay"
      end
    end
    translated_words.join(" ")
  end

end
