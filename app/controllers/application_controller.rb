class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def comic
    @comic = Comic.find_by_id(params['id'])
    render 'comic'
  end
  
  def create
    c = Comic.new
    c.title = params['title']
    c.writer = params['writer']
    c.publisher = params['publisher']
    c.cover = params['cover']
    c.save
    redirect_to "/comic/#{ c.id }"
  end
  
  def edit
    @comic = Comic.find_by_id(params['id'])
  end
  
  def update
    c = Comic.find_by_id(params['id']) 
    c.title = params['title']
    c.writer = params['writer']
    c.publisher = params['publisher']
    c.cover = params['cover']
    c.save
    redirect_to "/comic/#{ c.id }"
  end
  
end
