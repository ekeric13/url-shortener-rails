class UsersController < ApplicationController
  # enable :sessions
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
      session[:user] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def login

  end

  def signin
    @user = User.find_by(:username =>params[:user])
    if @user != nil
      session[:user] = @user.id
      redirect_to user_path(@user)
    else
      render :login
    end

  end


end
