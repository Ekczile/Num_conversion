class String

    def de_romanizer()
        numbers = {
             "I" => 1
        }
       result = 0
       x = self
       numbers.each do |key, value|
       result += value * (x.scan(/#{key}/).count)
        end
        return result
    end
end
