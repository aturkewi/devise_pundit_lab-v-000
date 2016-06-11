class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show]

  def index
    @users = User.all
  end

  def show
    if current_user.id == params[:id].to_i
      @user = current_user
    else
      flash[:alert] = "Access denied."
    end
  end
end
