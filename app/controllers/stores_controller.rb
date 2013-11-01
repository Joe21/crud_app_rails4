class StoresController < ApplicationController

	def index
		@stores = Store.all
	end

	def new
		@store = Store.new
	end

	def create
		@store = Store.create(store_params)
		redirect_to root_path
	end

	def show
		id = params[:id]
		@store = Store.find(id)
	end

	def edit
		@store = Store.find(params[:id])
	end

	def update
		@store = Store.find(params[:id])
		@store.update_attributes!(store_params)
		redirect_to root_path
	end

	def destroy
		id = params[:id]
		store = Store.find(id)
		store.destroy
		redirect_to root_path
	end

	private

	def store_params

		params.require(:store).permit(:name)
	end

end