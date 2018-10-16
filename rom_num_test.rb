require "minitest/autorun"
require_relative "rom_num_conversion.rb"

class TestNumberConversion < Minitest::Test
    def test_1_is_1
        assert_equal(1,1)
    end
    def test_1_equals_I
        assert_equal(Integer, "I".de_romanizer().class)
    end
    def test_that_one_converts
        assert_equal(1, "I".de_romanizer())
        assert_equal(2, "II".de_romanizer())
        assert_equal(3, "III".de_romanizer())
    end
    def test_that_5_equals_V
        assert_equal(4, "IV".de_romanizer())
        assert_equal(5, "V".de_romanizer())
        assert_equal(7, "VII".de_romanizer())
    end
    def test_that_10_equal_X
        assert_equal(9, "IX".de_romanizer())
        assert_equal(10, "X".de_romanizer())
        assert_equal(12, "XII".de_romanizer())
        assert_equal(15, "XV".de_romanizer())
        assert_equal(18, "XVIII".de_romanizer())
    end
    def test_that_50_equals_L
        assert_equal(40, "XL".de_romanizer())
        assert_equal(50, "L".de_romanizer())
    end
end