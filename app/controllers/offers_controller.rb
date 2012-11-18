class OffesController < ApplicationController
	def index
    @offers = Offer.all
		respond_to do |format|
    	format.html # index.html.erb
    	format.json { render json: @offer }
    end
  end
  
	def show
    @offer = Offer.find(params[:id])

   	respond_to do |format|
   		format.html # show.html.erb
   		format.json { render json: @offer }
    end
  end
	
	def new
		@offer = Offer.new
		respond_to do |format|
    	format.html # index.html.erb
  		format.json { render json: @offer }
    end
	end

  def create
    @offer = Offer.new
    @offer.name = params[:offer][:name]
    @offer.description = params[:offer][:description]
    @offer.coupon_value = params[:offer][:coupon_value]
    @offer.num_coupons = params[:offer][:num_coupons]
    @offer.point_value = params[:offer][:point_value]
    @offer.bid_value = params[:offer][:bid_value]

    respond_to do |format|
      if @offer.save
        format.html { redirect_to @offer, notice: 'offer was successfully created.' }
        format.json { render json: @offer, status: :created, location: @offer }
      else
        format.html { render action: "new" }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end
end