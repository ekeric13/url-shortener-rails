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
    p params
    @user = User.new(:username => params[:user][:username])
    @user.pass = params[:user][:pass]
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
    @user = User.find_by(:username =>params[:username])
    if @user != nil
      session[:user] = @user.id
      redirect_to user_path(@user)
    else
      render :login
    end
  end

  def edit
    @user=User.find(params[:id])
    if session[:user] == @user.id
      @user=User.find(params[:id])
    else
      redirect_to root_path
    end
  end
  def update

    @user=User.find params[:id]
    if @user.update_attribute :password, params[:user][:password]
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    user=User.find params[:id]
    user.destroy
    redirect_to root_path
  end


end
