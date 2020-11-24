module Articles
  module ListItem
    class Component < ViewComponent::Base
      with_collection_parameter :article

      def initialize(article:)
        @article = article
      end

      private

      attr_reader :article
    end
  end
end
