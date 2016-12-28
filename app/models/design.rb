class Design
	attr_reader :filename, :name
	def initialize(args)
		@filename = args.fetch(:filename)
		@name = args.fetch(:name)
		@size = args.fetch(:size, "600")
	end
end