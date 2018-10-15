class Integer

    def romanizer()
        numerals = {
            "I" => 1
        }
        x = self
        roman = ""
        numerals.each do |key, value|
            roman << key
        end
        roman
    end
end