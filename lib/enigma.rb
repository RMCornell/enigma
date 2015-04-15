require_relative 'encryptor'
require_relative 'message_rotator'
require_relative 'rotor'


class Enigma
	attr_accessor :message, :date, :key

	def initialize(message, date, key)
		@message = message.chars
		@date = date
		@key = key
		@rotor = Rotor.new(message, date, key)
		@encrypted = []
	end

	def encrypt_a
		@rotor.encrypt_rotation_a
	end

	def encrypt_b
		@rotor.encrypt_rotation_b
	end

	def encrypt_c
		@rotor.encrypt_rotation_c
	end

	def encrypt_d
		@rotor.encrypt_rotation_d
	end

	# def encrypt_message
	# 		manipulate = @message(0..3)
	#
	#
	#
	# 		#parse Message
	# 		#pull first four
	# 		#encrypt first four
	# 		#push encrypted values to array
	# 		#purge array
	# 		#rotate message
	# 		#repeat
	#
	#
	# 	return @encrypted.join("")
	# end

end

