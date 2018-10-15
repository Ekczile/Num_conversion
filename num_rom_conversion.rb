class Integer

    def romanizer()
        numerals = {
            "IX" => 9,
            "V" => 5,
            "IV" => 4,
            "I" => 1
        }
        x = self
        roman = ""
        numerals.each do |key, value|
            roman << key * (x/value)
            x %= value
        end
        roman
    end
end