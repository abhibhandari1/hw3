class PostsController < ApplicationController

    def new
        @posts = Post.new
        end
    
        def create
            @posts = Post.new
            @posts["title"] = params["post"]["location"]
            @posts["description"] = params["post"]["description"]
            @posts["posted_on"] = params["post"]["posted_on"]
            @posts["place_id"] = params["post"]["place_id"]
            @posts.save
            redirect_to "/places"
    
        end


end
