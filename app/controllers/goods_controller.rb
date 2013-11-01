class GoodsController < ApplicationController

	def index
		@goods = Good.all
	end

	def new
		@good = Good.new
	end

	def create
		@good = Good.create(good_params)
		redirect_to root_path
	end

	def show
		id = params[:id]
		@good = Good.find(id)
	end

	def edit
		@good = Good.find(params[:id])
	end

	def update
		@good = Good.find(params[:id])
		@good.update_attributes!(good_params)
		redirect_to root_path
	end

	def destroy
		id = params[:id]
		good = Good.find(id)
		good.destroy
		redirect_to root_path
	end

	private

	def good_params

		params.require(:good).permit(:name)
	end

end