require 'minitest/autorun'
require 'minitest/pride'
require 'offset'

class OffsetTest < Minitest::Test
	def test_it_exists
		assert Offset.new("020315")
	end

	def test_it_has_a_date
		offset = Offset.new("020315")
		assert Offset.new("020315")
	end

	def test_it_squares_date
	offset = Offset.new("020315")
	assert_equal ["4", "1", "2", "6", "9", "9", "2", "2", "5"], offset.square_date
	end

	def test_it_finds_a_offset

		offset = Offset.new("020315")
		offset.square_date
		assert_equal 9, offset.offset_a
	end

	def test_it_finds_b_offset

		offset = Offset.new("020315")
		assert_equal 2, offset.offset_b
	end

	def test_it_finds_c_offset

		offset = Offset.new("020315")
		assert_equal 2, offset.offset_c
	end

	def test_it_finds_d_offset

		offset = Offset.new("020315")
		assert_equal 5, offset.offset_d
	end
end
