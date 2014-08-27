class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(:username =>params[:user][:username], :password => params[:user][:password])
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end
end
