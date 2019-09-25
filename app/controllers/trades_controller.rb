class TradesController < ApplicationController
  def index
    @trade = Trade.new

    @price = get_price
    @jpy = get_my_money("JPY")["amount"]
    @btc = get_my_money("BTC")["amount"]
    @orders = order_history

    gon.bardata = []
    6.times do |i|
      data = rand(100.0)
      gon.bardata << data
    end
  end

  def create
    @trade = Trade.new(order_params)
    @trade.save

    side = params[:trade][:side]
    price = params[:trade][:price]
    # price = price.to_i
    size = params[:trade][:size]
    # size = size.to_f
    order(side,price,size)
    # order_history[]
    redirect_to root_path
  end

  private
  def order_params
    params.require(:trade).permit(:side, :price, :size)
  end
end