class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    update_session_count
  end

  private
  def update_session_count
    if session[:counter].nil?
      session[:counter] = 1;
    else
      session[:counter] += 1;
    end
  end
end
