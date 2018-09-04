class PaymentsController < ApplicationController
  before_action :set_order
  def new
  end

  def create
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order.amount_cents,
      description:  "Payment for request #{@order.request_sku} for order #{@order.id}",
      currency:     @order.amount.currency
    )

    @order.update(payment: charge.to_json, state: 'paid')
    request = @order.request
    request.status = true
    request.save
    commission = @order.request.commission
    commission.requests.each do |request|
      unless request.status
        request.destroy
      end
    end
    commission.status = true
    commission.save
    redirect_to order_path(@order)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_payment_path(@order)
  end

  private

  def set_order
    @order = current_user.orders.where( state: 'pending').find(params[:order_id])
  end
end
