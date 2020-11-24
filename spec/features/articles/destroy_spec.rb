require "rails_helper"

feature "Update Article" do
  include_context "when current user signed in"

  let(:article) { create :article, user: current_user, title: "Lorem Ipsum" }

  scenario "User deletes article" do
    visit article_path(article)

    click_on "Delete"

    expect(page).to have_content("Article was successfully destroyed.")
    expect(page).not_to have_content("Lorem Ipsum")
  end
end
