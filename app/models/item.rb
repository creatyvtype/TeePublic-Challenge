class Item
	attr_reader :filename, :name
	def initialize(args)
		@filename = args.fetch(:filename)
		@file_type = ".png"
		@name = args.fetch(:name)
	end

	def cloudinary_name
		@filename + @file_type
	end
end