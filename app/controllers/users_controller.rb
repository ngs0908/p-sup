class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @menus = @user.menus
  end
end
