#write your code here

def echo word
    word
end

def shout word
    sword = word.upcase
    sword
end

def repeat word, num = 1
    if num == 1
        rword = word + " " + word
    else
        rword = (word + " ") * num
        b = rword.chars
        b.pop
        rword = b.join
    end
    rword
end

def start_of_word word, num
    res = []
    [0..num-1].each do |i|
       res.push(word[i])
    end
    start = res.join
    start
end

def first_word word
    temp = word.split
    res = temp[0]
    res
end

def titleize word
    littleList = ["the", "a", "over", "an", "and", "but"]
    sword = word.split
    final = []
    
    sword.each do |part|
        if (littleList.include?part) && (final[0] != nil)
            final.push(part)
            final.push(" ")
        else
            ln = part.length
            temp = part.chars
            res = []
    
            res.push(temp[0].upcase)

            [1..ln-1].each do |i|
                res.push(temp[i])
            end
            final.push(res.join)
            final.push(" ")
        end
    end

    final.pop
    title = final.join
    title
end

