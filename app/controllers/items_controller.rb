class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @items = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
  end

  private

  def item_params
    params.require(:item).permit(:price, :availability, :item_type, :category, :size, :color, :brand, :user_id.name)
  end
end
