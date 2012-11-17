class ConsumerController < ApplicationController
    def index
    end
    def new
        @consumer = Consumer.new
    end
    def create
        @consumer = Consumer.new
    end

end
