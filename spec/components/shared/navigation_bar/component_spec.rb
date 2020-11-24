require "rails_helper"

describe Shared::NavigationBar::Component do
  subject(:component) { described_class.new(current_user: current_user) }

  let(:current_user) { nil }

  it "displays guest user's navigation bar" do
    render(component)

    expect(rendered).to have_link("Sign in", href: new_user_session_path)
    expect(rendered).to have_link("Sign up", href: new_user_registration_path)
  end

  context "with current user" do
    let(:current_user) { create :user, full_name: "John Smith" }

    it "displays authenticated user's navigation bar" do
      render(component)

      expect(rendered).to have_content("John Smith")
      expect(rendered).to have_link("Edit profile", href: edit_user_registration_path)
      expect(rendered).to have_link("New Article", href: new_article_path)
      expect(rendered).to have_link("Sign out", href: destroy_user_session_path)
    end
  end
end
