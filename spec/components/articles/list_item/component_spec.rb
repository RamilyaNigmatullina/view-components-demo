require "rails_helper"

describe Articles::ListItem::Component do
  subject(:component) { described_class.with_collection(articles) }

  let(:articles) { ArticleDecorator.decorate_collection(Article.all) }

  let!(:first_article) { create :article, title: "Lorem ipsum" }
  let!(:second_article) { create :article, title: "Maxime dolorem quo animi" }

  it "displays articles" do
    render(component)

    expect(rendered).to have_link("Lorem ipsum", href: article_path(first_article))
    expect(rendered).to have_link("Maxime dolorem quo animi", href: article_path(second_article))
  end
end
