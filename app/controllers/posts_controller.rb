class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @country = Country.find(params[:country_id])
    @area = Area.find(params[:area_id])
    @post = Post.new(post_params)
    @post.user = current_user
    @post.area = @area
    @post.save
    redirect_to country_area_path(@country, @area)
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :category, :area_id)
  end
end
