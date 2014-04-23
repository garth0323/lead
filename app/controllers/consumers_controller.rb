class ConsumersController < ApplicationController
  
  def index
  end
  
  def new
    @consumer = Consumer.new
  end
  
  def create
    @consumer = Consumer.new(consumer_params)

    if @consumer.save
      redirect_to edit_consumer_path(@consumer)
		else
			render :new
		end
	end

	def edit
    @consumer = Consumer.find(params[:id])
	end

	def update
    @consumer = Consumer.find(params[:id])
    if @consumer.update(consumer_params)
      redirect_to consumer_path(@consumer)
		else
			render :edit
		end
	end
  
  def show
  end
  
  private
  
  def consumer_params
    params.require(:consumer).permit!
	end
  
end