class DashboardController < ApplicationController

  before_action :authenticate_user!, only: [:secure]

  def public
  end

  def secure
  end
end
