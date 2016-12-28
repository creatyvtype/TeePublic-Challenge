class MainController < ApplicationController

	def initialize
		super
		@tshirt = Item.new(filename: "Womens-Tee-Asphalt", name: "Womens-Tee")
		@iphone = Item.new(filename: "iphone-7-plus", name: "iPhone 7 Plus")
		@item_options = [@tshirt, @iphone]

		@graphic = Design.new(filename: "Freud_Rage_Art", name: "Freud Rage")
		@graphic_options = [@graphic]

		@size_options = [600, 800]
	end



    def index
  		@item_options = @item_options
  		@graphic_options = @graphic_options
  		@size_options = @size_options

  	    @item = @tshirt
	  	@graphic = @graphic
	  	@size = 600
    end

    def item

	  	@item = nil
	  	@item_options.each do |item|
	  		@item = item if item.filename == params[:filename]
	  	end
	  	
	  	respond_to do |format|
	  		format.js
	  	end
  	end

	def size
		@size = 600
		@size_options.each do |option|
			@size = option if option.to_i == params[:size].to_i
		end

	  	respond_to do |format|
	  		format.js
	  	end

	end
end
