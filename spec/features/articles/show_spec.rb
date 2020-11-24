require "rails_helper"

feature "Show Article" do
  let(:user) { create :user, full_name: "John Smith" }
  let(:article) { create :article, user: user, title: "Lorem Ipsum", body: "Maxime dolorem quo animi." }

  scenario "User sees article" do
    visit article_path(article)

    expect(page).to have_content("Lorem Ipsum")
    expect(page).to have_content("Maxime dolorem quo animi.")
    expect(page).to have_content("John Smith")
  end
end
