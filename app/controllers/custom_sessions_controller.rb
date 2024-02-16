# app/controllers/custom_sessions_controller.rb
class CustomSessionsController < ApplicationController
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped

  def logout
    sign_out if user_signed_in?
    redirect_to root_path
  end
end
