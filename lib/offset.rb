class Offset
attr_accessor :date

	def initialize(date = "020315")
		@date = date
		@offset_a = offset_a
	end

	def square_date
		sq = @date.to_i
		squared = sq ** 2
		return squared.to_s.chars
	end

	def offset_a
		square_date[-4].to_i
	end

	def offset_b
		square_date[-3].to_i
	end

	def offset_c
		square_date[-2].to_i
	end

	def offset_d
		square_date[-1].to_i
	end
end


