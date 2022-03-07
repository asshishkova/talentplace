class ApplicationController < ActionController::Base
  before_action :authenticate!

  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def authenticate!
    return true if skip_login?

    redirect_to login_path, alert: 'Please sign in first'
  end

  def skip_login?
    current_place || current_talent || devise_controller?
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:photo])
  end
end
