class CharitiesController < ApplicationController
	def index
		@charities = Charity.all 
	end
	def show
		@charity = Charity.find(params[:id])
	end
	def new
		@charity = Charity.new
	end

	def donate
		@charity = Charity.find(current_user.next_donation)
		@amount = (current_user.monthly_payment * 100).round

		customer = Stripe::Customer.create(
			:email => 'example@stripe.com',
			:card => params[:stripeToken]
		)

		charge = Stripe::Charge.create(
			:customer => customer.id,
			:amount => @amount,
			:description => "Donated to #{@charity.name}",
			:currency => 'usd'
		)
		redirect_to root_path, notice: "Success! You've donated to #{@charity.name}"
		rescue Stripe::CardError => e
    		flash[:error] = e.message
    		redirect_to root_path
    end
end