class PostsController < ApplicationController
  def create
    # byebug
    @post = Post.create(
      title: params[:title],
      content: params[:content],
      image_url: params[:image_url]
    )
  end
end
