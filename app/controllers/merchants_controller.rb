class MerchantsController < ApplicationController
	def index
    	@messages = Merchant.all

    	respond_to do |f|
      	f.html # index.html.erb
      	f.json { render json: @messages }
    end
  end

	def show
        @merchant = Message.find(params[:id])

    	respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @merchant }
    	end
    end
	
	def new
		@merchant = Merchant.new
	end
	
	def create
		@merchant = Merchant.new
		@merchant.store_name = params[:merchant][:first_name]
        @merchant.rep_first_name = params[:merchant][:first_name]
        @merchant.rep_last_name = params[:merchant][:last_name]
        @merchant.email = params[:merchant][:email]
        @merchant.address_st_1 = params[:merchant][:address_st_1]
        @merchant.address_st_2 = params[:merchant][:address_st_2]
        @merchant.city = params[:merchant][:city]
        @merchant.state = params[:merchant][:state]
        @merchant.zip = params[:merchant][:zip]
        @merchant.save
        # if @merchant.save
        #     respond_with @merchant do |f|
        #         f.html { redirect_to @merchant, flash: {notice: 
        #             "User created"} }
        #         f.json { }
        #     end
        # else
        #     respond_with @user do |f|
        #         f.html { render action: 'new' }
        #     end
        # end
	end

end
