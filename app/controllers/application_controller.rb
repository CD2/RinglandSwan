class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :redirect_subdomain

  def redirect_subdomain
    if request.host == 'ringlandswan.co.uk'
      redirect_to 'http://www.puppies.com' + request.fullpath, :status => 301
    end
  end

  def verify_authenticity_token
  end

end
