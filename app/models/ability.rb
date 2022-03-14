# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    
    user ||= User.new
    if user.is_admin?
      can :manage, :all
    else
      cannot :read, :all
    end

  end
end
