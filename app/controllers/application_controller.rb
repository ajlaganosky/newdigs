class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  before_filter :set_timezone

 def set_timezone
   Time.zone = 'EST'
 end
end