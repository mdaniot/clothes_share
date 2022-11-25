class PagesController < ApplicationController
  def home
    @items = Item.all.sample(12)
  end

  def about
  end
end
