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
      @like = Like.new(user_id: current_user.id, article_id: params[:id])
      @article = Article.find(@like.article_id)
      if Like.where(["article_id = ? and user_id = ?", @like.article_id, @like.user_id]).blank?
        @like.save
        @article.update_column("likes", @article.likes+1)
      else
        Like.find_by(user_id: current_user.id, article_id: params[:id]).destroy
        @article.update_column("likes", @article.likes-1)
      end
      render :layout => false
    end
    
    def show_comments
      @article_id = params[:id]
      @comments = Comment.where(:article_id => @article_id)
      render :layout => false
    end
    
    def comment
      cont = params[:content]
      @comment = Comment.new(user_id: current_user.id, article_id: params[:id], content: cont)
      @comment.save
      render :layout => false
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