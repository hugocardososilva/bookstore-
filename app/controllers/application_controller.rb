class ApplicationController < ActionController::Base
  include InheritedResources
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.new_user_session_path, alert: exception.message
  end
end
