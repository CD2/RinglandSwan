class AdminController < ApplicationController
  layout 'admin_application'
  before_action :require_user

  private

    def require_user
      redirect_to login_path unless signed_in?
    end

end