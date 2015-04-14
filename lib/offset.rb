class Offset
attr_accessor :date, :offset_a

	def initialize(date)
		@date = date
		@offset_a = offset_a
	end

	def square_date
		sq = @date.to_i
		sq ** 2
	end

	def offset_a
		@offset_a = square_date[-4]
	end

	def offset_b
		square_date[-3]
	end

	def offset_c
		square_date[-2]
	end

	def offset_d
		square_date[-1]
	end
end
