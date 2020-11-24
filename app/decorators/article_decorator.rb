class ArticleDecorator < ApplicationDecorator
  delegate :title, :body, :user

  def humanized_created_at
    l(object.created_at, format: :long_date)
  end
end
