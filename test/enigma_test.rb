require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test
	def test_it_exists
		assert Enigma.new("rubytest", "020315", "41521")
	end

	def test_it_encrypts_char_a
		skip
		enigma = Enigma.new("rubytest", "020315", "41521")
		assert_equal "2", enigma.encrypt_a
	end

	def test_it_encrypts_char_b
		skip
		enigma = Enigma.new("rubytest", "020315", "41521")
		assert_equal ".", enigma.encrypt_b
	end

	def test_it_encrypts_char_c
		skip
		enigma = Enigma.new("rubytest", "020315", "41521")
		assert_equal "q", enigma.encrypt_c
	end

	def test_it_encrypts_char_d
		skip
		enigma = Enigma.new("rubytest", "020315", "41521")
		assert_equal "l", enigma.encrypt_d
	end




	def test_it_rotates_to_next_four
		skip
		enigma = Enigma.new("rubytest", "020315", "41521")
		assert_equal ["t", "e", "s", "t", "r", "u", "b", "y"], enigma.rotate
	end




end



