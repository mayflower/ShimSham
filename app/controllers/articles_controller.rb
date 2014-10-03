class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end 
  
  def new
    
  end
  
  def create
    @article = Article.new(article_params)
 
    @article.save
    redirect_to @article
    
#    render plain: params[:article].inspect
  end
    
  def show
    @test = "some text"
    @article = Article.find(params[:id])
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
