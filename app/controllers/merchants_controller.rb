class MerchantsController < ApplicationController
	def index
    	@merchants = Merchant.all
		respond_to do |format|
      		format.html # index.html.erb
      		format.json { render json: @merchants }
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
    @merchant = Merchant.new(params[:merchant])
        
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

  def edit
    @merchant = Merchant.find(params[:id])
  end

  def update
    @merchant = Merchant.find(params[:id])
        
    respond_to do |format|
      if @merchant.update_attributes(params[:merchant])
        format.html { redirect_to @merchant, notice: 'merchant was successfully updated.' }
        format.json { render json: @merchant, status: :created, location: @merchant }
      else
        format.html { render action: "new" }
        format.json { render json: @merchant.errors, status: :unprocessable_entity }
      end
     end
  end
end
