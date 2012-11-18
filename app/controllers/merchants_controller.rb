class MerchantsController < ApplicationController
	def index
    	@merchants = Merchant.all
		respond_to do |format|
      		format.html # index.html.erb
      		format.json { render json: @merchant }
    	end
    end
  

	def show
        @merchant = Merchant.find(params[:id])

    	respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @merchant }
    	end
    end
	
	def new
		@merchant = Merchant.new
		respond_to do |format|
      		format.html # index.html.erb
      		format.json { render json: @merchant }
    	end
	end

	def create
		@merchant = Merchant.new
		@merchant.store_name = params[:merchant][:store_name]
        @merchant.rep_first_name = params[:merchant][:rep_first_name]
        @merchant.rep_last_name = params[:merchant][:rep_last_name]
        @merchant.email = params[:merchant][:email]
        @merchant.address_st_1 = params[:merchant][:address_st_1]
        @merchant.address_st_2 = params[:merchant][:address_st_2]
        @merchant.city = params[:merchant][:city]
        @merchant.state = params[:merchant][:state]
        @merchant.zip = params[:merchant][:zip]
       	
       	respond_to do |format|
      		if @merchant.save
		        format.html { redirect_to @merchant, notice: 'merchant was successfully created.' }
		        format.json { render json: @merchant, status: :created, location: @merchant }
      		else
		        format.html { render action: "new" }
		        format.json { render json: @merchant.errors, status: :unprocessable_entity }
      		end
   		 end
	end
end
