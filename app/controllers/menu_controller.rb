class MenuController < ApplicationController
  before_action :set_cats
  def index
    @page = 'menu'
    @products = Product.all
  end

  def search
    query = params[:search]

    results = Product.where('name LIKE ?', "%#{query}%")
    if params[:filter] == 'Filtrar por'
      @products = results
    else
      # 'Gluten Free' -> 'Gluten_Free' -> 'gluten_free' -> :gluten_free
      symbol = params[:filter].gsub(/ /, '_').downcase!.to_sym
      # @products = results.where(:gluten_free => true)
      @products = results.where(symbol => true)
    end
  end

  private

  def set_cats
    @cats = Category.all.where(display: true)
  end
end