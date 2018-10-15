require "minitest/autorun"
require_relative "num_rom_conversion.rb"

class TestNumeralConversion < Minitest::Test
    
    def test_assert_that_1_equals_1
        assert_equal(1,1)
    end
    def test_that_result_is_string
        assert_equal(String, 1.romanizer().class) 
    end
    def test_1_equal_I
        assert_equal("I", 1.romanizer()) 
        assert_equal("II", 2.romanizer())  
        assert_equal("III", 3.romanizer()) 
    end
    def test_4_equals_IV
        assert_equal("IV", 4.romanizer())
    end
    def test_5_equals_V
        assert_equal("V", 5.romanizer())
    end
    def test_6_7_8
        assert_equal("VI", 6.romanizer())
        assert_equal("VII", 7.romanizer())
        assert_equal("VIII", 8.romanizer())
    end
    def test_9_equals_IX
        assert_equal("IX", 9.romanizer())
    end
end
