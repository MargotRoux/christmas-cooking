class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to post_path(@post), notice: 'Merci pour votre retour ! Votre commentaire a été publié avec succès ✌🏻'
    else
      redirect_to post_path(@post), alert: 'Oups ! Une erreur est survenue lors de la publication du commentaire'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
