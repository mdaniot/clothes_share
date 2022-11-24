class PagesController < ApplicationController
  def home
    @items = Item.all.sample(8)
  end

  def about
  end
end
