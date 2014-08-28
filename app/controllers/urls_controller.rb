class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def show
    @url = Url.find params[:id]
  end

  def new
    @url = Url.new

  end

  def create
    url = Url.create(long_url: params[:url][:long_url])
    user = User.find(session[:user])
    user.urls << url
    if url.save

      redirect_to url_path(url)
    else
      render :new
    end
  end
end
