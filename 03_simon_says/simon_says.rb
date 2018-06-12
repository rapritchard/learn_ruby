#write your code here
def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat(str, num=2)
    result = []
    num.times do |i| 
        result.push(str)
    end
    result.join(" ")
end

def start_of_word(str, num)
    str.slice(0, num)
end

def first_word(str)
    str.split.first
end

def titleize(str)
    array = str.split(' ')
    result = []
    i = 0
    array.each do |item|
        if i == 0 || i == (array.length - 1) || item.length > 4
            result<<item.capitalize
        else
            result<<item 
        end
        i+=1
    end
    result.join(" ")
end
