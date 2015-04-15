require 'minitest/autorun'
require 'minitest/pride'
require './lib/rotor'

class RotorTest < MiniTest::Test
	def test_it_exists
		assert Rotor.new("rubytest")
	end

end