class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = params[:query] ? user_query : User.paginate(page: params[:page])
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :title, :phone, :status)
  end

  def user_query
    query = params[:query]
    User.where("email LIKE ?
      OR name LIKE ?
      OR status LIKE ?
      OR phone LIKE ?
      OR title LIKE ?",
      "%#{query}%", 
      "%#{query}%", 
      "%#{query}%", 
      "%#{query}%", 
      "%#{query}%").
      paginate(page: params[:page])
  end
end
