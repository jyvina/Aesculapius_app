class VideosController < ApplicationController
    
    def new
        @video= Video.new
    end
    
    def create
        @category = Category.find(params[:category_id])
        @category.videos.create(video_params)
         redirect_to categories_path(@category)
    end
    
    
    
    def show
        @video=Video.find(params[:id])
        @category= Category.find(params[:id])
    end
    
    def index
        @video=Video.all
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
     def video_params
         params.require(:video).permit(:title, :contents)
     end
end
