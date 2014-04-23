class BuyersController < ApplicationController
  
  def index
  end
  
  def new
    @buyer = Buyer.new
  end
  
  def create
    @buyer = Buyer.new(buyer_params)

    if @buyer.save
      redirect_to edit_buyer_path(@buyer)
		else
			render :new
		end
	end

	def edit
    @buyer = Buyer.find(params[:id])
	end

	def update
    @buyer = Buyer.find(params[:id])
    if @buyer.update(buyer_params)
      redirect_to buyer_path(@buyer)
		else
			render :edit
		end
	end
  
  def show
  end
  
  private
  
  def buyer_params
    params.require(:buyer).permit!
	end
  
end