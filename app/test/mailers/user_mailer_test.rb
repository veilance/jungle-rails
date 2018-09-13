class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'
   
    def welcome_email(order)
      @order = order
      @info = LineItem.where(order_id: order.id)
      mail(to: 'user@example.com', subject: 'Order #{@order.id}: Order Received') do |format|
        format.html
      end
    end
  end