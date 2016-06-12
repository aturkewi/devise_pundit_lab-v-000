class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show]

  def index
    authorize current_user
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    if current_user.show?(@user)
      @user = current_user
    else
      flash[:alert] = "Access denied."
    end
  end
end
