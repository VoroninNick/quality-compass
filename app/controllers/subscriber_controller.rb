class SubscriberController < ApplicationController
  def subscribe
  	#@articles = Article.all
  	@errors = {}
  	email = params[:email]
  	unless email =~ /^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/
        @errors[:email] = "Your email address does not appear to be valid";
    end
  	if(params[:format] == 'xml')

  		if @errors.count == 0
  			@valid = 'true'
        record = Subscriber.find( :first, :conditions => "email = '#{email}'");
        if(record == nil)
          Subscriber.new( :email => email ).save
          @result_message = 'successfully added'
          @exists = 'true'
        else
          @result_message = 'email already exists'
          @exists = 'false'
        end
  		else
  			@valid = 'false'
        @result_message = 'query has errors'
  		end
  		render :template =>'subscriber/subscribe.xml.erb'

  	elsif(params[:format] == 'json')
  		render :inline => 'json'
  	else
  		render :inline => 'html'
  	end
  end
  
  def form
  	@subscribe = Subscriber.new
  end
end
