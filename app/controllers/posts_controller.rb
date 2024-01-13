class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.published_at = Time.now
    @post.user = current_user

    if @post.save
      redirect_to posts_path, notice: 'Merci ! Votre recette a été publiée avec succès'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
    if @post.nil?
      redirect_to root_path, alert: 'Post introuvable.'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :ingredients, :difficulty, :preparation_time, :image_url)
  end
end
