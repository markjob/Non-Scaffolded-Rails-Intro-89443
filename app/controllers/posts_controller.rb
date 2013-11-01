class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  #autoload index.html.erb
  
  def show
  end
  #autoload show.html.erb
  
  def new
    @post = Post.new
  end
  #loads app views posts new.html.erb
  
  def create
    #create
  end
  #on success, redirects to index, else uses new.html.erb
end
