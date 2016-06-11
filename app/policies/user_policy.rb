class UserPolicy < ApplicationPolicy
  attr_reader :user, :note

  def initialize(user, note)
    @user = user
    @note = note
  end

  def index?
    user.admin?
  end

  def show?
    binding.pry
    user == current_user || user.admin?
  end

end
