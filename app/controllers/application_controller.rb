class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  



  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:image, :name, :introduction, :birthday, :assignment_date, :group_id,
                                             :prefecture_id, :telephone_number, :c_certification_id, :b_certification_id, :a_certification_id])

    devise_parameter_sanitizer.permit(:account_update,
                                      keys: [:image, :name, :introduction, :birthday, :assignment_date, :group_id,
                                             :prefecture_id, :telephone_number, :c_certification_id, :b_certification_id, :a_certification_id])                                          
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER_1"] && password == ENV["BASIC_AUTH_PASSWORD_1"]
    end
  end
end
