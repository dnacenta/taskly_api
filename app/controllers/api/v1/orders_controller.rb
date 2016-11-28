class Api::V1::OrdersController < ApplicationController
  def index
    user = User.find_by(id: params[:user_id])
    unless user
      render json: {error: 'User not found'}, status: 404
      return
    end
    orders_completed = user.orders.where(completed: true)
    orders_pending = user.orders.where(completed: false)
    render json: {completed: orders_completed, pending: orders_pending}
  end

  def create
    order = Order.create(order.params)
    render json: order
  end

  def show
    user = User.find_by(id: params[:user_id])
    unless user
      render json: {error: 'User not found'}, status: 404
      return
    end
    order = user.orders.find_by(id: params[:id])
    unless order
      render json: {error: 'Order not found'}, status: 404
      return
    end
    render json: order
  end

  def destroy
    user = User.find_by(id: params[:user_id])
    unless user
      render json: {error: 'Order not found'}, status: 404
      return
    end
    order = user.orders.find_by(id: params[:id])
    unless order
      render json: {error: 'Order not found'}, status: 404
      return
    end
    order.destroy
    render json: order
  end

  def complete
    user = User.find_by(id: params[:user_id])
    unless user
      render json: {error: 'User not found'}, status: 404
      return
    end
    order = user.order.find_by(id: params[:id])
    unless order
      render json: {error: 'Order not found'}, status: 404
      return
    end
    order.complete
    render json: order
  end


  private

  def order_params
    params.require(:order).permit(:name, :due_date, :user_id)
  end
end
