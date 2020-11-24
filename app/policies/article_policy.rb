class ArticlePolicy < ApplicationPolicy
  def index?
    true
  end

  def new?
    create?
  end

  def create?
    user.present?
  end

  def show?
    true
  end

  def edit?
    update?
  end

  def update?
    user == record.user
  end

  def destroy?
    user == record.user
  end
end
