class MerchantsController < ApplicationController
	def index
    	@merchants = Merchant.all
		respond_to do |format|
      		format.html # index.html.erb
      		format.json { render json: @merchant }
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
		respond_to do |format|
      		format.html # index.html.erb
      		format.json { render json: @merchant }
    	end
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
       	redirect_to index.html.erb
      #   if @merchant.save
      #       respond_to do |format|
      # 			format.html # index.html.erb
      # 			format.json { render json: @merchant }
    		# end
      #   else
      #       respond_to @merchant do |format|
      #           format.html { render action: 'new' }
      #       end
      #   end
	end

end
