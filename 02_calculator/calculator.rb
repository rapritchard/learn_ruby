#write your code here
def add(a, b)
    sum = a + b
end

def subtract(a,b)
    sum = a - b
end

def sum(numbers)
    #Can also be done quicker 
    # and less lines with total = array.sum
    total = 0
    numbers.each do |i|
        total = total + i
    end
    total
end

def multiply(args)
    result = 1
    args.each do |i|
        result *= i
    end
    result
end

def power(a, b)
    result = 1
    b.times do |i|
        result *= a
    end
    result
end

def factorial(number)
    if number < 0
        number = -1
    elsif number == 0
        number = 1
    else
        number = number * factorial(number -1)
    end
end
