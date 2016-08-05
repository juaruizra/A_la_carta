# class RegistrationsController < ApplicationController

class  RegistrationsController < Devise::RegistrationsController
  #mirar la rutas, que se relaciona con este archivo
  before_action :redirect_unless_admin,  only: [:new, :create]#habilitar admin
  skip_before_action :require_no_authentication
  before_action :configure_permitted_parameters, if: :devise_controller? # escribir en la Bd

  def sign_up(resource_name, resource) #para que no se auto sign_in cuando se sign up
  end

  private
    def redirect_unless_admin  #solo si es admin puede dar new
      unless current_user.try(:is_admin?)
        flash[:error] = "Only admins can do that"
        redirect_to root_path
      end
    end

   protected
   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:password,:password_confirmation, :email, :name, :cargo, :date_of_birth, :is_female, :is_admin])
      devise_parameter_sanitizer.permit(:account_update, keys: [:password, :password_confirmation, :email, :current_password,:name, :cargo, :date_of_birth, :is_female, :is_admin])
   end
end

# sign_in (Devise::SessionsController#create) - Permits only the authentication keys (like email)
# sign_up (Devise::RegistrationsController#create) - Permits authentication keys plus password and password_confirmation
# account_update (Devise::RegistrationsController#update) - Permits authentication keys plus password, password_confirmation and current_password
# t.string   "name"
# t.string   "cargo"
# t.datetime "date_of_birth"
# t.boolean  "is_female",              default: false
# t.boolean  "is_admin",               default: false
