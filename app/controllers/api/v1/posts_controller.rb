module Api::V1
  class PostsController < ApplicationController
    def index
      @posts = Post.order("created_at DESC")
      render json: @posts
    end


    def create 
      @post = Post.create(post_params)
      render json: @post
    end 


    private 

    def post_params
      params.require(:post).permit(:title, :body)
    end 
  end
end