class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to @user, notice: 'Twitterもどきへようこそ'
    else
      render :new
    end
  end

  def show
  end

  def index
    @users = User.all
  end

  def edit

  end

  def update

  end

  def destroy

  end

   private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)

    end


end
