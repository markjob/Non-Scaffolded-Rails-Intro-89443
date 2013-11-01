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
    @post = Post.new(params[:post])
    if @post.save
      #redirect to index action
      redirect_to :action => :index
    else
      #load view associated with new action
      render :action => :new
    end
  end
  #on success, redirects to index, else uses new.html.erb

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :action => :index
  end
end
