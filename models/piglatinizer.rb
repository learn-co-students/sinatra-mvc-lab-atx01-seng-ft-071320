class PigLatinizer 
    def initialize
    end 

    def piglatinize(words)
        word_array = words.split 
        new_array = []

        word_array.each do |word|
            if word[0] == 'a' || word[0] == 'e' || word[0] == 'i' || word[0] == 'o' || word[0] == 'u' || word[0] == 'A' || word[0] == 'E' || word[0] == 'I' || word[0] == 'O' || word[0] == 'U'
                word += "way"
                new_array << word
            elsif word[0] != 'a' || word[0] != 'e' || word[0] != 'i' || word[0] != 'o' || word[0] != 'u' || word[0] != 'A' || word[0] != 'E' || word[0] != 'I' || word[0] != 'O' || word[0] != 'U'
                split_word = word.split /([aeiou].*)/
                split_word[0] += "ay"
                new_word = split_word[1] + split_word[0]
                new_array << new_word
            end
        end

        new_array.join(" ")
    end 
end 