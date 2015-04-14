require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryptor'

class EncryptorTest < MiniTest::Test
	def test_it_exists
		assert Encryptor.new("020315", "41521")
	end

	def test_it_encrypts_for_a

		encrypt = Encryptor.new("020315", "41521")
		assert_equal 50, encrypt.encrypt_a
	end

	def test_it_encrypts_for_b

		encrypt = Encryptor.new("020315", "41521")
		assert_equal 17, encrypt.encrypt_b
	end

	def test_it_encrypts_for_c

		encrypt = Encryptor.new("020315", "41521")
		assert_equal 54, encrypt.encrypt_c
	end

	def test_it_encrypts_for_d

		encrypt = Encryptor.new("020315", "41521")
		assert_equal 26, encrypt.encrypt_d
	end
end
