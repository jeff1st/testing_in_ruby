#write your code here

def add a, b
    sum = a + b
    sum
end

def subtract a, b
    sub = a - b
    sub
end

def sum arr
    sum = 0
    arr.each do |i|
        sum += i
    end

    sum
end

def multiply arr
    mult = 1
    arr.each do |i|
        mult *= i
    end
    mult
end

def power a, b
    pow = a ** b
    pow
end

def factorial num
    i = num
    res = 1
    if num == 0
        res = 1
    else
        while i >=1 do
            res *= i
            i -= 1
        end
    end
    res
end
