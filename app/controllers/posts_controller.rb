class PostsController < ApplicationController

    def new
        @posts = Post.new
        @posts["place_id"] = params["place_id"]
    end


    
    
    def create
        @posts = Post.new
        @posts["title"] = params["post"]["title"]
        @posts["posted_on"] = params["post"]["posted_on"]
        @posts["description"] = params["post"]["description"]
        @posts["place_id"] = params["post"]["place_id"]
        @posts.save
        redirect_to "/places/#{@posts["place_id"]}"
    end


end
