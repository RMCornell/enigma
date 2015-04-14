require 'minitest/autorun'
require 'minitest/pride'
require './lib/character_map'

class CharacterMapTest < MiniTest::Test
	def test_it_exists
		assert CharacterMap.new
	end

	def test_it_contains_character_map
		character_map = CharacterMap.new
		assert_equal ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9"," ",".",","], character_map.char_map
	end
end