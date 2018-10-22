class Integer

    def romanizer()
        numerals = {
            "M" => 1000,
            "CM" => 900,
            "D" => 500,
            "CD" => 400,
            "C" => 100,
            "XC" => 90,
            "L" => 50,
            "XL" => 40,
            "X" => 10,
            "IX" => 9,
            "V" => 5,
            "IV" => 4,
            "I" => 1
        }
        x = self
        # roman = a string
        roman = ""
        numerals.each do |key, value|
            # shovel key times variable x divided by the value
            roman << key * (x/value)
            # returning the remainder of the value as x
            x %= value
        end
        roman
    end
end