class ArticlesController < ApplicationController
    
    def index
      @articles = Article.all 
      render :layout => false
    end
  
    def index_state
      state = params[:state]
      @articles = Article.where(:state => state)
      render :layout => false
    end
    
    def like
      like = Like.new(user_id: current_user.id, article_id: params[:id])
      if u.likes.where(["article_id = ? and user_id = ?", like.article_id, article.user_id]).blank?
        article = Article.find(like.article_id)
        article.update_column("likes", article.likes+1)
        like.save
      else
        
      end
      
    end
      
    def show
      @article = Article.find(params[:id])
    end
    
    def new
      @article = Article.new
    end
    
    def create
      @article = Article.new(article_params)
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