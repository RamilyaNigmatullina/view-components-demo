module Shared
  module NavigationBar
    class ComponentPreview < ViewComponent::Preview
      def guest_user
        render Shared::NavigationBar::Component.new(current_user: nil)
      end

      def authenticated_user
        render Shared::NavigationBar::Component.new(current_user: User.first)
      end
    end
  end
end
