require "minitest/autorun"
require_relative "num_rom_conversion2.rb"

class TestNumberConversion < Minitest::Test
def test_1_is_1
    assert_equal(1,1)
end
def test_1_equals_I
    assert_equal(Integer, "I".de_romanizer().class)
end
end