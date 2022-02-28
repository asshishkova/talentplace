class ApplicationController < ActionController::Base
  before_action :authenticate!

  private

  def authenticate!
    return true if current_place || current_talent

    redirect_to root_path, alert: 'You must sign in first'
  end
end
