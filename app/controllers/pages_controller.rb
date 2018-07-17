class PagesController < ApplicationController
    def index
        @pages = Page.all
    end  
    
    def show
       @page = Page.find(params[:id]) 
    end  
    
    def new 
        @page = Page.new       
    end  
    
    def create
        #Set up permitted form entry values
        @page = Page.new(page_params)
        @page.save
        redirect_to @page
    end  
    
    def edit
        @page = Page.find(params[:id])
    end  
    
    def update
        @page = Page.find(params[:id])       
        @page.update(page_params)
        @page.save
        redirect_to @page
    end    

    def destroy
        @page = Page.find(params[:id]) 
        @page.destroy
        redirect_to pages_path
    end    

    private
        #This methods should only be called by the pages controller
        def page_params
            page_params = params.require(:page).permit(:title, :body, :slug)
        end    

end
