require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryptor'

class EncryptorTest < MiniTest::Test
	def test_it_exists
		assert Encryptor.new
	end
end
