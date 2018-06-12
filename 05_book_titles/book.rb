class Book
# write your code here
    attr_reader :title
    def title=(str)
        conjunctions = ["a", "the", "and", "in", "of", "an", "in", "for", "nor", "but", "or", "yet", "so"]
        array = str.split(" ")
        array.each do |i|
            if !conjunctions.include? i
                i.capitalize!
            end
        end

        array.first.capitalize!
        @title = array.join(" ")
    end
end
