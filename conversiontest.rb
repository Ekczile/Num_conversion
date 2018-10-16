require "minitest/autorun"
require_relative "rom_num_conversion.rb"
require_relative "num_rom_conversion.rb"

class Testallconversions < Minitest::Test
    def test_1_is_1
        assert_equal(1,1)
    end
    def test_number_to_roman
        assert_equal(3, "III".de_romanizer())
    end
end