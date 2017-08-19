class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def show
  	@post = Post.find(params[:id])
  	render 'show'
  end

 def create
  	@post = Post.new(post_params)

  if @post.save
   render 'sucesso'
  else
   render 'new'
  end
 end

def index
	@posts = Post.all
end

  private

  def post_params
  	params.require(:post).permit(:name, :contact, :denouncement, :kind)
  end
end