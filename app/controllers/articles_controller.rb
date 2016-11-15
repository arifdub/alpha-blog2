class ArticlesController < ApplicationController
    def new
        @article= Article.new
    end
    def create
        @article = Article.new(article_params)
        if
            @article.save
            flash[:notice] = "Your article was saved succefully"
            redirect_to article_path(@article)
        else
            render 'new'
        end
    end
    def edit
        @article = Article.find(params[:id])
    end
    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "Your article was successfully updated"
            redirect_to article_path(@article)
        else
            render 'edit'
        end
    end
    def show
        @article = Article.find(params[:id])
    end
    def index
    end
    
    private
    def article_params
        params.require(:article).permit(:title, :description)
    end
    
end