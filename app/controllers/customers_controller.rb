class CustomersController < ApplicationController

	def index
		@customers = Customer.all
	end

	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.create(customer_params)
		redirect_to root_path
	end

	def show
		id = params[:id]
		@customer = Customer.find(id)
	end

	def edit
		@customer = Customer.find(params[:id])
	end

	def update
		@customer = Customer.find(params[:id])
		@customer.update_attributes!(customer_params)
		redirect_to root_path
	end

	def destroy
		id = params[:id]
		customer = Customer.find(id)
		customer.destroy
		redirect_to root_path
	end

	private

	def customer_params

		params.require(:customer).permit(:name)
	end

end
