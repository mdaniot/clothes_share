class DealsController < ApplicationController
  before_action :set_item, only: %i[new create]
  def new
    @deal = Deal.new
    @user = current_user
  end

  # POST /deals
  def create
    @deal = Deal.new(deal_params)
    @deal.user = current_user
    @deal.item = @item
    if @deal.save
      @item.availability = false
      @item.save
      redirect_to @item, notice: "deal successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:item_id])
  end

  # Only allow a list of trusted parameters through.
  def deal_params
    params.require(:deal).permit(:start_date, :finish_date)
  end
end
