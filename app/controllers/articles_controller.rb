class ArticlesController < ApplicationController
  def new
    @article = Article.new
    @article.title = 'Demo'
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to bienvenida_path, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end



# class ArticlesController < ApplicationController
#   def new
#     @article = Article.new
#     @article.title = 'Demo'
#   end

#   def create
#     @article = Article.new(article_params)

#     if @article.save
#       redirect_to bienvenida_path(article: @article.id), notice: 'Article was successfully created.'
#     else
#       render :new
#     end
#   end

#   private

#   def article_params
#     params.require(:article).permit(:title, :content)
#   end
# end
