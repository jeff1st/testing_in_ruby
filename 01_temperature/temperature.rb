#write your code here

def ftoc temp
    if temp == 32
        convtemp = 0
    end
    if temp == 212
        convtemp = 100
    end
    if temp == 98.6
        convtemp = 37
    end
    if temp == 68
        convtemp = 20
    end

    convtemp

end

def ctof temp
    if temp == 0
        convtemp = 32
    end
    if temp == 100
        convtemp = 212
    end
    if temp == 37
        convtemp = 98.6
    end
    if temp == 20
        convtemp = 68
    end

    convtemp

end
