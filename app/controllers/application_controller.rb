class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  helper_method :get_text

  def get_text(id)
    @text = Text.find(id)
  end

  private
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    Rails.application.routes.default_url_options[:locale]= I18n.locale
  end
end
