class UrlsController < ApplicationController
  # respond_to :html, :js

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
    @url = Url.create(long_url: params[:url][:long_url])
    @user = User.find(session[:user])
    @user.urls << @url

      respond_to do |format|
        if @url.save
          format.html
          format.js
          # format.json { render json: @url, status: :created, location: '/users/show.html.erb' }
        end
      end
      # render json: @url
      #redirect_to url_path(@url)


  end
end
