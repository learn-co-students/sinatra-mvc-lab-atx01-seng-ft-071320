class PigLatinizer
    # def initialize(text)
    #     @text = text
    # end

    def piglatinize(input)
        input.split(" ").map{ |word| piglatinize_word(word)}.join(" ")
    end 

    def piglatinize_word(word)
        first_letter = word[0].downcase 

        if %w(a e i o u).include?(first_letter)
            "#{word}way"
        else
            consonants = []
            consonants << word[0]

            if %w(a e i o u).include?(word[1]) == false
                consonants << word[1]
                if %w(a e i o u).include?(word[2]) == false
                    consonants << word[2]
                end
            end
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end
    end
end 