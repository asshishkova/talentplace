class PagesController < ApplicationController
  skip_before_action :authenticate!, only: %i[home login]

  def home
  end

  def login
  end
end
