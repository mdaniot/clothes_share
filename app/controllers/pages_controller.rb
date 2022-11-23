class PagesController < ApplicationController
  def home
    @items = Item.all.sample(8)
  end
end
