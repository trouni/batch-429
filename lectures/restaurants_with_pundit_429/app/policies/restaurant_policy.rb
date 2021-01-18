class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # if user.admin?
      #   scope.all
      # else
      #   scope.where(active: true)
      # end
    end
  end

  def show?
    true
  end

  # def new?
  #   true
  # end

  def create?
    true
  end

  # def edit?
  #   update?
  # end

  def update?
    # if the current user is the one who created the restaurant
    # => true
    # else
    # => false

    # user => current_user
    # record => the instance we called authorize on
    user_is_owner_or_admin?
  end

  def destroy?
    user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
    record.user == user || user.admin?
  end
end











