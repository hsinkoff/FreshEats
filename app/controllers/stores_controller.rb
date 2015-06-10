class StoresController < ApplicationController
	before_action :authenticate_user!

	def index
		if params[:a] == "tag"
			@stores = Store.all
		elsif params[:a] == "find"
			@stores = Store.where("apples = ? or oranges = ? or grapes = ? or bananas = ? or other_fruits = ? or carrots = ? or potatoes = ? or onions = ? or lettuce = ? or other_vegetables = ?", true, true, true, true, true, true, true, true, true, true)
		end
	end

	def show
		@store = Store.find(params[:id])
	end

	def edit
		@store = Store.find(params[:id])
	end

	def update
		@store = Store.find(params[:id])
		@store.update_attributes(store_params)
		current_user.update_attributes(usage: current_user.usage + 1)
		redirect_to root_path
	end

	private

	def store_params
		params.require(:store).permit(:name, :address, :zipcode, :latitude, :longitude, :apples, :oranges, :bananas, :grapes, :other_fruits, :lettuce, :carrots, :onions, :potatoes, :other_vegetables)
	end

end
