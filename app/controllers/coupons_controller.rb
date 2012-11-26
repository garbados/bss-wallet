class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coupon }
    end
  end

  def show
    @coupon = Coupon.find(params[:id])


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offer }
    end
  end

  def destroy
    @coupon.destroy
  end

  def new
    @coupon = Coupon.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offer }
    end

  end

  def create
    logger.debug "Entered create for coupon"
    logger.debug "consumer id#{params[:consumer_id]}"
    @coupon = Coupon.new
    @coupon.consumer_id = params[:consumer_id]
    @coupon.offer_id = params[:offer_id]
    @coupon.state = 0;

    respond_to do |format|
      if @coupon.save
        format.html { redirect_to @coupon, notice: 'coupon was successfully created.' }
        format.json { render json: @coupon, status: :created, location: @coupon }
      else
        format.html { render action: "new" }
        format.json { render json: @coupon.errors, status: :unprocessable_entity }
      end
    end

  end

  def edit
    @coupon = Coupon.find(params[:id])
    @coupon.consumer_id = params[:consumer_id]
    @coupon.offer_id = params[:offer_id]
  
    respond_to do |format|
      if @coupon.save
        format.html { redirect_to @coupon, notice: 'coupon was successfully edited.' }
        format.json { render json: @coupon, status: :created, location: @coupon }
      else
        format.html { render action: "new" }
        format.json { render json: @coupon.errors, status: :unprocessable_entity }
      end
    end

  end

  def update

  end

  def redeem
    @coupon = Coupon.find(params[:id])
    @coupon.state = 1;

     respond_to do |format|
      if @coupon.save
        format.html { redirect_to @coupon, notice: 'coupon was successfully edited.' }
        format.json { render json: @coupon, status: :created, location: @coupon }
      else
        format.html { render action: "new" }
        format.json { render json: @coupon.errors, status: :unprocessable_entity }
      end
    end
       
  end


end