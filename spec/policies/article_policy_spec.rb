require "rails_helper"

describe ArticlePolicy do
  let(:policy) { described_class.new(user, article) }

  let(:article) { create :article, user: author }
  let(:author) { create :user }
  let(:user) { nil }

  describe "#index?" do
    subject { policy.index? }

    it { is_expected.to be_truthy }
  end

  describe "#new?" do
    subject { policy.new? }

    it { is_expected.to be_falsey }

    context "with user" do
      let(:user) { create :user }

      it { is_expected.to be_truthy }
    end
  end

  describe "#create?" do
    subject { policy.create? }

    it { is_expected.to be_falsey }

    context "with user" do
      let(:user) { create :user }

      it { is_expected.to be_truthy }
    end
  end

  describe "#show?" do
    subject { policy.show? }

    it { is_expected.to be_truthy }
  end

  describe "#edit?" do
    subject { policy.edit? }

    it { is_expected.to be_falsey }

    context "with user" do
      let(:user) { create :user }

      it { is_expected.to be_falsey }

      context "when user is article's author" do
        let(:user) { author }

        it { is_expected.to be_truthy }
      end
    end
  end

  describe "#update?" do
    subject { policy.update? }

    it { is_expected.to be_falsey }

    context "with user" do
      let(:user) { create :user }

      it { is_expected.to be_falsey }

      context "when user is article's author" do
        let(:user) { author }

        it { is_expected.to be_truthy }
      end
    end
  end

  describe "#destroy?" do
    subject { policy.destroy? }

    it { is_expected.to be_falsey }

    context "with user" do
      let(:user) { create :user }

      it { is_expected.to be_falsey }

      context "when user is article's author" do
        let(:user) { author }

        it { is_expected.to be_truthy }
      end
    end
  end
end
