class Item
	attr_reader :filename, :name
	def initialize(args)
		@filename = args.fetch(:filename)
		@name = args.fetch(:name)
	end
end