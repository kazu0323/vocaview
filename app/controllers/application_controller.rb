class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation ])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname])
  end

  def set_search
    @q = Song.ransack(params[:q])
    @result = @q.result(distinct: true).limit(12)
  end
end
