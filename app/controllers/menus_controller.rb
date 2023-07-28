class MenusController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_menu, only: [:edit, :update]

  def index
    # @menu = Menu.all
    @menus = Menu.all
    @menu = @menus.first
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @menu = Menu.find(params[:id])
    @comment = Comment.new
    @comments = @menu.comments.includes(:user)
  end

  def edit
    return unless current_user != @menu.user
    redirect_to root_path
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update(menu_params)
      redirect_to @menu
    else
      render :edit
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to root_path
    return unless current_user != @menu.user
  end

  private

  def menu_params
    params.require(:menu).permit(:title, :calorie, :nutrient, :image).merge(user_id: current_user.id)
  end

  def set_menu
    @menu = Menu.find(params[:id])
  end
end
