class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :destroy, :edit, :update]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item), notice: "Anúncio criado com sucesso!."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def list
    @items = Item.where(item_type: params[:type].capitalize)
  end

  def edit
  end

  def update
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :price, :availability, :item_type, :category, :size, :color, :brand,
                                 :description, :photo)
  end
end
