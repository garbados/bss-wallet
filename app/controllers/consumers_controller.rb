class ConsumerController < ApplicationController
    def index
        @consumers = Consumer.all?
    end

    def show
        @consumer = Consumer.find(params[:id])
    end

    def new
        @consumer = Consumer.new
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
                    f.html { redirect_to @consumer, flash: {notice: 
                        "User created"} }
                    f.json { }
            else
                 f.html { render action: 'new' }
            end
        end
    end

    def destroy
        @consumer.destroy
    end

    def edit

    end

    def update
        @consumer.first_name = params[:consumer][:first_name]
        @consumer.last_name = params[:consumer][:last_name]
        @consumer.email = params[:consumer][:email]
        @consumer.first_name = params[:consumer][:first_name]
        @consumer.zip = params[:consumer][:zip]

        respond_with @user do |f|
            if @consumer.save
                f.html { redirect_to @consumer, flash: {notice: 
                    "User edited"} }
                f.json { }
            else
                f.html { render action: 'edit' }
            end
        end
    end


end
