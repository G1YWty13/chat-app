class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # 非ログイン時にログイン画面に遷移

  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  # device用のストロングパラメーター設定。 nameを許可している。

end

