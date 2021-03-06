class PostsController < ApplicationController

  get '/' do # posts#index action
    @posts = Post.all

    erb :"posts/index.html"
  end

  get '/posts/favorites' do

    # posts with id 2 and 3 are my favorites
    # how do I load only posts 2 and 3?
    # @favorites = Post.where(:id => [2,3])
    @favorites = Post.find([2,3])

    erb :"posts/favorites.html"
  end

  # posts#show action
  get '/posts/:id' do

    # I want to load the blog post based on the value of id in the URL
    @post = Post.find(params[:id])

    erb :"posts/show.html" # render the posts/show template
  end

end
