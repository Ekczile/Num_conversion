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
    def test_10_equals_X
        assert_equal("X", 10.romanizer())
        assert_equal("XX", 20.romanizer())
        assert_equal("XXX", 30.romanizer())
    end
    def test_50_equals_L
        assert_equal("XL", 40.romanizer())
        assert_equal("L", 50.romanizer())
        assert_equal("LV", 55.romanizer())
        assert_equal("LXV", 65.romanizer())
    end
    def test_100_equals_C
        assert_equal("XC", 90.romanizer())
        assert_equal("C", 100.romanizer())
        assert_equal("CC", 200.romanizer())
        assert_equal("CCC", 300.romanizer())
    end
    def test_for_500_equals_D
        assert_equal("CD", 400.romanizer())
        assert_equal("D", 500.romanizer())
        assert_equal("DLV", 555.romanizer())
        assert_equal("DLIII", 553.romanizer())
    end
    def test_for_1000_equals_M
        assert_equal("CM", 900.romanizer())
        assert_equal("CMLII", 952.romanizer())
        assert_equal("M", 1000.romanizer())
        assert_equal("MCCXII", 1212.romanizer())
        assert_equal("MMCCXII", 2212.romanizer())
    end
end
