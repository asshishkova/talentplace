class ApplicationController < ActionController::Base
  before_action :authenticate!

  private

  def authenticate!
    return true if skip_login?

    redirect_to login_path, alert: 'Please sign in first'
  end

  def skip_login?
    current_place || current_talent || devise_controller?
  end
end
