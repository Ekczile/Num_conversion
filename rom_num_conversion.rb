class String

    def de_romanizer()
        numbers = {
            "CM" => 900,
            "M" => 1000,
            "CD" => 400,
            "D" => 500,
            "XC" => 90,
            "C" => 100,
            "XL" => 40,
            "L" => 50,
            "IX" => 9,
            "X" => 10,
            "IV" => 4,
            "V" => 5,
            "I" => 1,
        }
       result = 0
       x = self
        numbers.each do |key, value|
            # increments result by value times x times the key.
        result += value * (x.scan(/#{key}/).count)
        temp = [key]
        # for each item counted and stored in temp go through each
        # and substitute each integer with each string.
        temp.each {|v| x.sub!(v, '')}
        end
        return result
    end
end
