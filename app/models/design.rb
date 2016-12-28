class Design
	attr_reader :filename, :name
	def initialize(args)
		@filename = args.fetch(:filename)
		@file_type = ".png"
		@name = args.fetch(:name)
		@size = args.fetch(:size, "600")
	end

	def cloudinary_name
		@filename + @file_type
	end
end