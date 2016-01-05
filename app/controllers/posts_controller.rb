class PostsController < ApplicationController
  def create
    @hat = Hat.find(params[:hat_id])
    @post = @hat.posts.create(params[:post].permit(:name, :theme, :post))

    if @post.save
      redirect_to hat_path(@hat)
    else
      render 'new'
    end
  end

  def destroy
    @hat = Hat.find(params[:hat_id])
    @post = @hat.posts.find(params[:id])
    @post.destroy
    redirect_to hat_path(@hat)
  end
end
