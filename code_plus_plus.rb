class CodePlusPlus
	def initialize (name)
		@lines = 0
		File.open(name, "r") do | file |
			while line = file.gets
				@lines += 1 unless my_match(line.strip)
			end
		end
	end

	def to_s
		"#{@lines} LOC"
	end

	private
	@block = false
	def my_match (line)
		@block ||= line.start_with?("=begin")
		t_end = line.start_with?("=end")
		if (!@block && !t_end)
			line.start_with?("#") || line.empty?
		else
			@block = false if t_end
			true
		end
	end
end