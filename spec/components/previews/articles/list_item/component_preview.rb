module Articles
  module ListItem
    class ComponentPreview < ViewComponent::Preview
      def list
        articles = ArticleDecorator.decorate_collection(Article.limit(5))

        render Articles::ListItem::Component.with_collection(articles)
      end
    end
  end
end
