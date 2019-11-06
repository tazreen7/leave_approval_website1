class ApplicationController < ActionController::Base
before_action :authenticate_user!
before_action :set_locale


private
def set_locale
  I18n.locale = params[:locale] || I18n.default_locale
  # current_user.locale
end
def default_url_options(options = {})

  { locale: I18n.locale }.merge  options

end

end
