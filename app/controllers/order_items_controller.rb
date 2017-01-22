class OrderItemsController < ApplicationController
  def create
    @order = current_order

    #do not create new items in current order if item already there, just increase quantity
    if current_order.order_items.find_by(product_id: order_item_params['product_id']).present?
      @order_item = current_order.order_items.find_by(product_id: order_item_params['product_id'])
      @order_item.update_attributes(quantity: @order_item.quantity + 1)
    else
      @order_item = @order.order_items.new(order_item_params)
      @order_item.quantity = 1
      @order.save
    end

    session[:order_id] = @order.id
    respond_to do |format|
      format.json { render json: { count: current_order.order_items.size }}
      format.js
    end
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end
  private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
