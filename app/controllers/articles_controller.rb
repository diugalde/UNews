class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end
    
    def create
        @article = Article.new(article_params)
    end
    
    def index
       @articles = Article.all 
       render :layout => false
    end
    
    def edit
    end
    
    def update
    end
    
    private
    def article_params
       params.require(:article).permit(:title, :summary, :body) 
    end
end