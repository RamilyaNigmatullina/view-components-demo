require "rails_helper"

feature "Create Article" do
  include_context "when current user signed in"

  scenario "User creates article" do
    visit root_path

    click_on "New Article"

    fill_in "Title", with: "Lorem Ipsum"
    fill_in "Body", with: "Maxime dolorem quo animi. Repudiandae in blanditiis facilis voluptatem et et aspernatur."

    click_on "Create Article"

    expect(page).to have_content("Article was successfully created.")
    expect(page).to have_content("Lorem Ipsum")
  end
end
