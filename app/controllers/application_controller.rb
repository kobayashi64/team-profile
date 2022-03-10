class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  
  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:image, :name, :introduction, :birthday, :assignment_date, :group_id,
                                             :prefecture_id, :telephone_number])

    devise_parameter_sanitizer.permit(:account_update,
                                      keys: [:image, :name, :introduction, :birthday, :assignment_date, :group_id,
                                             :prefecture_id,:telephone_number])
  end
end
