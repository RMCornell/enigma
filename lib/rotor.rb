require_relative 'encryptor'

class Rotor
	attr_accessor :message
	attr_reader :a_encrypt, :b_encrypt, :c_encrypt, :d_encrypt, :manipulation

	def initialize(message = "rubytest", date = "020315", key = "41521")
		file = File.open(ARGV[0])
		contents = file.read.chomp
		@message = contents.downcase.split("")
		@char_map = ("a".."z").to_a + ("0".."9").to_a + [" ", ".", ","]
		@manipulation = []
		@encrypted_message = []
		@encrypt_count = 0
		@a_encrypt = Encryptor.new(date, key).encrypt_a
		@b_encrypt = Encryptor.new(date, key).encrypt_b
		@c_encrypt = Encryptor.new(date, key).encrypt_c
		@d_encrypt = Encryptor.new(date, key).encrypt_d
	end

	def parse_message
		@message.each_slice(4).each do |slice|
			slice.map do |letter|
				manipulation.push(@char_map.index(letter))
			end
		end
		return manipulation
	end

	def encrypt_message
		i = 0
		count = (parse_message.length) / 4
		count.times do
			rotated_map_a = @char_map.rotate(parse_message[i])
			char_a = rotated_map_a.rotate(a_encrypt)[0]
				@encrypted_message.push(char_a)
				i = i + 1

			rotated_map_b = @char_map.rotate(parse_message[i])
			char_b = rotated_map_b.rotate(b_encrypt)[0]
				@encrypted_message.push(char_b)
				i = i + 1

			rotated_map_c = @char_map.rotate(parse_message[i])
			char_c = rotated_map_c.rotate(c_encrypt)[0]
				@encrypted_message.push(char_c)
				i = i + 1

			rotated_map_d = @char_map.rotate(parse_message[i])
			char_d = rotated_map_d.rotate(d_encrypt)[0]
				@encrypted_message.push(char_d)
				i = i + 1
		end

		encrypted_file = File.open(ARGV[1], "w")
		encrypted_file << @encrypted_message.join("")
		encrypted_file.close
	end

	def file_writer
		encrypted_file = File.open(ARGV[1], "w")
		encrypted_file << @encrypted_message.join("")
		encrypted_file.close

	end
end

rotor = Rotor.new("rubytestrubyrubytest")
puts rotor.encrypt_message


