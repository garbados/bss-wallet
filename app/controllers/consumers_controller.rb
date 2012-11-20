class ConsumersController < ApplicationController

    respond_to :js, :html
    
    def index
        @consumers = Consumer.all

        respond_to do |format|
            format.html
            format.json { render json: @consumer }
        end
    end

    def show
        @consumer = Consumer.find(params[:id])

        respond_to do |format|
            format.html
            format.json { render json: @consumer }
        end
    end

    def new
        @consumer = Consumer.new

        respond_to do |format|
            format.html
            format.json { render json: @consumer }
        end
    end


    def create
        @consumer = Consumer.new
        @consumer.first_name = params[:consumer][:first_name]
        @consumer.last_name = params[:consumer][:last_name]
        @consumer.email = params[:consumer][:email]
        @consumer.first_name = params[:consumer][:first_name]
        @consumer.zip = params[:consumer][:zip]
        
        respond_with @consumer do |f|
            if @consumer.save
                f.html { redirect_to @consumer, notice: "User created" }
                f.json { render json: @consumer, status: :created, location: @consumer }
            else
                 f.html { render action: 'new' }
            end
        end
    end

    def destroy
        @consumer.destroy
    end

    def edit
        @consumer = Consumer.find(params[:id])
    end

    def update
        @consumer = Consumer.find(params[:id])
        @consumer.first_name = params[:consumer][:first_name]
        @consumer.last_name = params[:consumer][:last_name]
        @consumer.email = params[:consumer][:email]
        @consumer.first_name = params[:consumer][:first_name]
        @consumer.zip = params[:consumer][:zip]

        respond_with @user do |f|
            if @consumer.save
                f.html { redirect_to @consumer, notice: "User edited" }
                f.json { render json: @consumer, status: :created, location: @consumer }
            else
                f.html { render action: 'edit' }
            format.json { render json: @consumer.errors, status: :unprocessable_entity }
            end
        end
    end


end
