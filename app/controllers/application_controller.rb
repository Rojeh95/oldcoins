class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  http_basic_authenticate_with :name =>"sodo" , :password => "coinsboxa"

private
	
	def set_locale
		I18n.locale = params[:locale] if params[:locale].present?
 	end 

 	def default_url_options(options = {})
 		{locale: I18n.locale}
 	end

end

