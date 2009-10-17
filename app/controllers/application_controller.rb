# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  helper_method :current_user
  
  layout "qkids"
  
  def rescue_404
    rescue_action_in_public(ActionController::RoutingError)
  end

  def rescue_action_in_public(exception)
    #maybe gather up some data you'd want to put in your error page

    case exception
      when ActionController::InvalidAuthenticityToken
      when ArgumentError
      when SyntaxError
        render :template => "shared/error500", :status => "500"
      else
        render :template => "shared/error404", :status => "404"
      end
  end

  def local_request?
    return false
  end
  
  protected
  
  def authorize
    unless current_user
      render :template => "shared/error404", :status => "404"
      return false
    end
  end
  
  private
  
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
end
