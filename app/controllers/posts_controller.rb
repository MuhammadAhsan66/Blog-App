class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :show, :destroy]

  def index
    # @posts = Post.all.order('created_at ASC')
    @pagy, @posts = pagy(Post.all.order('created_at ASC'), page: params[:page], items: 3)
  end

  def new
    @post = Post.new
  end

  def prac
    puts "HELLO"
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      # PostMailer.post_created.deliver_now
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private
  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
