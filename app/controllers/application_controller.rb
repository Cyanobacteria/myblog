class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #respond_to :html, :json
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
       u.permit(:name, :email, :password, :password_confirmation,
                :age, :gender, :location  )

    
    end
  end

end
