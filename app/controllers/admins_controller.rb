class AdminsController < ApplicationController
  def index
    @users= User.all
  end
  def destroy
    @user= User.find(params[:id]) #codigo igual
    @user.destroy
    redirect_to :all_admins
  end
end
