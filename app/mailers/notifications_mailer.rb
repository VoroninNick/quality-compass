class NotificationsMailer < ActionMailer::Base

  default :from => 'support@voroninstudio.eu'
  default :to => 'support@voroninstudio.eu'

  def new_order(p)
    @details = p
    mail(:subject => "#Order request from [#{p.company}]. Message send from your website.", :from => p.email)
  end
end
