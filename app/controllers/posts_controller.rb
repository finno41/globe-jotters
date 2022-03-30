class PostsController < ApplicationController
  def new
    @country = Country.find(params[:country_id])
    @area = Area.find(params[:area_id])
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

  def show
    @country = Country.find(params[:country_id])
    @area = Area.find(params[:area_id])
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    @area = Area.find(params[:area_id])
    @country = Country.find(params[:country_id])
  end

  def update
    @area = Area.find(params[:area_id])
    @country = Country.find(params[:country_id])
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to country_area_post_path(@country, @area, @post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :summary, :description, :category, :area_id, :main_image, images: [])
  end

  def post_params_images
    params.require(:post).permit(:images)
  end
end
