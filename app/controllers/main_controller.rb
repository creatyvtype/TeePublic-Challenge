class MainController < ApplicationController
  def index
  	tshirt = Item.new(filename: "Womens-Tee-Asphalt.png", name: "Womens-Tee")
  	iphone = Item.new(filename: "iphone-7-plus.png", name: "iPhone 7 Plus")
  	@item_options = [tshirt, iphone]

  	graphic = Design.new(filename: "Freud_Rage_Art.png", name: "Freud Rage")
  	@graphic_options = [graphic]

  	@size_options = [600, 800]

  	@item = tshirt
  	@graphic = graphic
  	@size = 600

  end

  def item
  	# params[:type]

  	render json: {hello: params[:type]}
  end

  def art_resize

  end
end
