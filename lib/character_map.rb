class CharacterMap
	attr_accessor :char_map

	def char_map
		("a".."z").to_a + ("0".."9").to_a + [" ", ".", ","]
	end
end


