class StoresController < ApplicationController

	def index
		if params[:a] == "tag"
			@stores = Store.all
		elsif params[:a] == "find"
			@stores = Store.all
		#	@stores = Store.find_by(apples: true) 
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
		redirect_to root_path
	end

	private

	def store_params
		params.require(:store).permit(:name, :address, :zipcode, :latitude, :longitude, :apples, :oranges, :bananas, :grapes, :other_fruits, :lettuce, :carrots, :onions, :potatoes, :other_vegetables)
	end

end
