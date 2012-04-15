class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end
  
  def new
    @url = Url.new
  end
  
  def create
    @url = Url.new(params[:url])
    if @url.save
      redirect_to urls_path, notice: 'A URL was created successfully'
    else
      render action: 'new'
    end
  end
  
  def show
    begin
      @url = Url.find(params[:id])
    rescue Mongoid::Errors::DocumentNotFound, BSON::InvalidObjectId
      render file: "public/404.html", status: 404
    end
  end
  
  def go
    @url = Url.find(params[:id])
    redirect_to @url.url_path#, :status => @url.http_status
  end
end
