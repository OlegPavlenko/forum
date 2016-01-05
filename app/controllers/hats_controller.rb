class HatsController < ApplicationController
  before_action :find_hat, only: [:show, :edit, :update, :destroy]
  before_action :all_hats, only: [:index, :show]

  def index
  end

  def show
  end

  def new
    @hat = Hat.new
  end

  def create
    @hat = Hat.new(hat_params)
    if @hat.save
      redirect_to @hat
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @hat.update(hat_params)
      redirect_to @hat
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def all_hats
    @hats = Hat.all.order("created_at DESC")
  end

  def find_hat
    @hat = Hat.find(params[:id])
  end

  def hat_params
    params.require(:hat).permit(:title, :content)
  end
end
