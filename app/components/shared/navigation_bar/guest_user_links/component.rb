module Shared
  module NavigationBar
    module GuestUserLinks
      class Component < Shared::NavigationBar::Component
        def render?
          !current_user
        end
      end
    end
  end
end
