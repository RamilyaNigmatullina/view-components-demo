module Shared
  module NavigationBar
    module AuthenticatedUserLinks
      class Component < Shared::NavigationBar::Component
        def render?
          current_user
        end
      end
    end
  end
end
