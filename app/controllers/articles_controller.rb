class ArticlesController < ApplicationController
    
    def index
      category = params[:category]
      if category && category != "todas"
        @articles = Article.where(:category => category)
      else
        @articles = Article.all 
      end
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
      @article.user_id = current_user.id;
      @article.state = "pending"
      @article.likes = 0
      if @article.save
        redirect_to url_for(:controller => :pages, :action => :home)
      else
        render :action => 'new'
      end
    end
    
    def edit
    end
    
    def update
    end
    
    private
    def article_params
      params.require(:article).permit(:title, :summary, :body, :category, :link) 
    end
    
end