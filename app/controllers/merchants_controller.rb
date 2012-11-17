class MerchantsController < ApplicationController
	def index
	end
	def new
		@merchant = Merchant.new
	end
	def create
	end

end
