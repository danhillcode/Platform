require 'pry'
class Users::SessionsController < Devise::SessionsController
  before_action :authenticate_users!, only: :show

  def after_sign_in_path_for(resource)
    if resource.type == "Teacher"# student_path(resource)
     teacher_dashboard_path
    else 
     student_dashboard_path
    end
  end


  def after_sign_out_path_for(resource)
    home_path
  end







# before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
