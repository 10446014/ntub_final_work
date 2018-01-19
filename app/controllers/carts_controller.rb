class CartsController < ApplicationController
  def add
    current_cart.add_item(params[:id])

    session[:cart9487] = current_cart.serialize
    redirect_to organics_path, notice: "add to cart!"
  end

  def destroy
    session[:cart9487] = nil
    redirect_to organics_path, notice: "empty to cart!"
  end
end
