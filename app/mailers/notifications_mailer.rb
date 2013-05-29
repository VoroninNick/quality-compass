class NotificationsMailer < ActionMailer::Base

  default :from => 'support@voroninstudio.eu'
  default :to => 'support@voroninstudio.eu'

  def new_order(p)
    @details = p
    mail(:subject => "#Order request from [#{p.company}]. Message send from your website.", :from => p.email)
    mail(:subject => "#Order request from [#{p.company}]. Message send from your website.", :from => p.email, :to => 'p.korenev@voroninstudio.eu')
    mail(:subject => "#Order request from [#{p.company}]. Message send from your website.", :from => p.email, :to => 'nick@voroninstudio.eu')
    
    server_subscribers = ['support@voroninstudio.eu', 'p.korenev@voroninstudio.eu','nick@voroninstudio.eu'];

    server_subscribers.each do |s|
    	mail(:subject => "#Order request from [#{p.company}]. Message send from your website.", :from => p.email, :to => s)
    end

  end
end
