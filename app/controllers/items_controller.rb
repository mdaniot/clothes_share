class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :destroy]

  def show
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:price, :avaliability, :product_tipe, :category, :size, :color, :brand)
  end

end
