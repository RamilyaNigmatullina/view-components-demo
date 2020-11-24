module Shared
  module NavigationBar
    class Component < ViewComponent::Base
      def initialize(current_user:)
        @current_user = current_user
      end

      def root_link
        link_to "ViewComponent Demo", root_path
      end

      private

      attr_reader :current_user
    end
  end
end
