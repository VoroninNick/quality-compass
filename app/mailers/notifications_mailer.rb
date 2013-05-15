class NotificationsMailer < ActionMailer::Base
  default :from => 'support@voroninstudio.eu'
  default :to => 'office@qc.com'

  def new_order(order)
    @order = order
    mail(:subject => "[YourWebsite.tld] #{order.company}")
  end
end
