#write your code here
def translate(str)
    array = str.split(" ")
    pig_latin = []

    for i in 0..array.length-1
        word = array[i]

        if word =~ /^[aeiou]/
            pig_latin[i] = word<<"ay"
        elsif word=~/^[bcdfghjklmnpqrstvwxz][aeiou]/ && word !~ /^qu/
            pig_latin[i] = word[1..-1]<<word[0]<<"ay"
        elsif (word=~/^[bcdfghjklmnpqrstvwxz]{2}[aeiou]/ || word =~ /^qu/) && word !~ /^.qu/
            pig_latin[i] = word[2..-1]<<word[0..1]<<"ay"
        elsif word=~/^[bcdfghjklmnpqrstvwxz]{3}[aeiou]/ || word =~ /^.qu/
            pig_latin[i] = word[3..-1]<<word[0..2]<<"ay"
        end
    end
    pig_latin.join(" ")
end
