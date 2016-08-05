# class RegistrationsController < ApplicationController

class  RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters, if: :devise_controller?
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
