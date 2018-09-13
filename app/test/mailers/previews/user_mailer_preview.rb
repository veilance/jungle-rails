
class UserMailerPreview < ActionMailer::Preview
  def welcome_email(order)
    @order = order
    @info = LineItem.where(order_id: order.id)
    mail(to: 'user@example.com', subject: 'Order #{@order.id}: Order Received') do |format|
      format.html
    end
  end
end