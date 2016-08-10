class AdminsController < ApplicationController
  def index
    @users= User.all
  end
  def destroy
    # User.find(params[:id]).destroy
    # flash[:success] = "User destroyed."
    # redirect_to root_path
    @user= User.find(params[:id]) #codigo igual
    @user.destroy
    redirect_to :all_admins
  end
end
