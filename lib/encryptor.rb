require_relative 'offset'
require_relative 'key'

class Encryptor

	def initialize( date = "020315", key = "41521")
		@date = date
		@key = key
		@offset = Offset.new(date)
		@key = Key.new(key)
	end

	def encrypt_a
		@offset.offset_a + @key.rotation_a
	end

	def encrypt_b
		@offset.offset_b + @key.rotation_b
	end

	def encrypt_c
		@offset.offset_c + @key.rotation_c
	end

	def encrypt_d
		@offset.offset_d + @key.rotation_d
	end
end
