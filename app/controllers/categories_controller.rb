class CategoriesController < ApplicationController
    
    def new
        @category=Category.new
    end
    
    def create
        @category=Category.new(category_params)
        if @category.save
            redirect_to categories_path
        else
            render 'new'
        end
    end
    
    def show
        @category=Category.find(params[:id])
       
    end
    
    
    def index
        @category=Category.all
    end
    
    def edit
        @category=Category.find(params[:id])
    end
    
    def update
        @category = Category.find(params[:id])
        if @category.update(category_params)
            redirect_to categories_path
        else
            render 'edit'
        end
    end
    
    def destroy
    end
    
    private
     def category_params
         params.require(:category).permit(:title, :contents)
     end
end
