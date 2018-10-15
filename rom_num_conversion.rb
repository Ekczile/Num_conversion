class String

    def de_romanizer()
        numbers = {
             "I" => 1
        }
       result = 0
       numbers.each do |key, value|
       result += value
        end
        return result
    end
end
