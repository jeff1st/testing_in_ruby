#write your code here

def translate noun
    vow = ["a", "e", "i", "o", "u", "y"]
    tot = []
    wordList = noun.split

    wordList.each do |word|

        if vow.include?word[0]
            tword = word + "ay"
            tot.push(tword)
            tot.push(" ")
        elsif (word[0]=="q") && (word[1]=="u")
            temp = []
            ln = word.length
            [2..ln-1].each do |i|
                temp.push(word[i])
            end
            temp.push(word[0])
            temp.push(word[1])
            tword = temp.join + "ay"
            tot.push(tword)
            tot.push(" ")
        elsif (!vow.include?word[0]) && (word[1]=="q") && (word[2]=="u")
            temp = []
            ln = word.length
            [3..ln-1].each do |i|
                temp.push(word[i])
            end
            temp.push(word[0])
            temp.push(word[1])
            temp.push(word[2])
            tword = temp.join + "ay"
            tot.push(tword)
            tot.push(" " )
        elsif (!vow.include?word[0]) && (vow.include?word[1])
            temp = []
            ln = word.length
            [1..ln-1].each do |i|
                temp.push(word[i])
            end
            temp.push(word[0])
            tword = temp.join + "ay"
            tot.push(tword)
            tot.push(" ")
        elsif (!vow.include?word[0]) && (!vow.include?word[1]) && (vow.include?word[2])
            temp = []
            ln = word.length
            [2..ln-1].each do |i|
                temp.push(word[i])
            end
            temp.push(word[0])
            temp.push(word[1])
            tword = temp.join + "ay"
            tot.push(tword)
            tot.push(" ")
        elsif (!vow.include?word[0]) && (!vow.include?word[1]) && (!vow.include?word[2])
            temp = []
            ln = word.length
            [3..ln-1].each do |i|
                temp.push(word[i])
            end
            temp.push(word[0])
            temp.push(word[1])
            temp.push(word[2])
            tword = temp.join + "ay"
            tot.push(tword)
            tot.push(" ")
        end
    end
    tot.pop
    final = tot.join
    final
end

