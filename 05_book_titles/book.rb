class Book
    attr_accessor :title
    def initialize(title="")
        @title = title
        @wordsToExcept = ["of", "in", "and", "the", "if", "a", "an"]
    end

    def title
        temp = @title.split
        res = []
        k = 0
        temp.each do |word|
            if (@wordsToExcept.include?word) && (word == temp[0]) && (k == 0)
                k += 1
                letters = word.chars
                letters[0].upcase!
                cword = letters.join
                res.push(cword)
                res.push(" ")
            elsif (@wordsToExcept.include?word)
                res.push(word)
                res.push(" ")
            else
                letters = word.chars
                letters[0].upcase!
                cword = letters.join
                res.push(cword)
                res.push(" ")
            end
        end
        res.pop
        @title = res.join
        @title
    end

end
