class TradesController < ApplicationController
  def index
    @trade = Trade.new

    @price = get_price
    @jpy = get_my_money("JPY")["amount"]
    @btc = get_my_money("BTC")["amount"]
    @orders = order_history
  end

  def create
    @trade = Trade.new(order_params)
    @trade.save

    side = params[:trade][:side]
    price = params[:trade][:price]
    size = params[:trade][:size]
    order(side,price,size)
    redirect_to root_path
  end

  private
  def order_params
    params.require(:trade).permit(:side, :price, :size)
  end
end