# require 'pry'

class PigLatinizer

    def piglatinize(text)
        vowels = ["a", "e", "i", "o", "u"]
        array = text.split(" ")
        array.map! do |word|
            splitword = word.split("")
            front = []
            until vowels.include?(splitword[0].downcase)
                front << splitword.shift
            end
            splitword = splitword + front
            if front == []
                splitword.join("") + "way"
            else
                splitword.join("") + "ay"
            end
        end
        array.join(" ")
    end
end

# translator = PigLatinizer.new
# binding.pry

