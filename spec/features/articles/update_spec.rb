require "rails_helper"

feature "Update Article" do
  include_context "when current user signed in"

  let(:article) { create :article, user: current_user, title: "Lorem Ipsum", body: "Maxime dolorem quo animi." }

  scenario "User updates article" do
    visit edit_article_path(article)

    fill_in "Title", with: "Repudiandae in blanditiis"
    fill_in "Body", with: "Eum esse quod doloribus nisi. Quidem commodi et vel saepe voluptatem rerum."

    click_on "Update Article"

    expect(page).to have_content("Article was successfully updated.")
    expect(page).to have_content("Repudiandae in blanditiis")
  end
end
