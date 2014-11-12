class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
    @bla = "blabla"
  end 
  
  def new
    @article = Article.new
    @bla = "blabla"
  end
  
  def create
    @article = Article.new(article_params)
 
    if @article.save
      redirect_to @article
    else    
      render 'new'
    end
    
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
