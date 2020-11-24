class ArticlesController < ApplicationController
  expose_decorated :article
  expose_decorated :articles, :fetch_articles

  before_action :authorize_resource!

  def index
  end

  def new
  end

  def create
    article.user = current_user
    article.save

    respond_with article
  end

  def show
  end

  def edit
  end

  def update
    article.update(article_params)

    respond_with article
  end

  def destroy
    article.destroy

    respond_with article
  end

  private

  def authorize_resource!
    authorize article
  end

  def fetch_articles
    Article.all.page(params[:page]).per(10)
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
