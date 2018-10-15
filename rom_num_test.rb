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
        assert_equal(5, "V".de_romanizer())
    end

end