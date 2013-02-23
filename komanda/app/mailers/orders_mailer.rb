class OrdersMailer < ActionMailer::Base
  default from: "komandalife@gmail.com"
  
  def order_confirmation(user, order, product)
    @user = user
    @order = order
    if product.class.to_s == "Event"
      @event = product
    end
    mail(to: "#{user.name} <#{user.email}>", subject: "Komanda: Purchase Confirmaion")
  end
end
