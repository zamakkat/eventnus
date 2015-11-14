class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    if user.roles?(:admin)
      can :manage, :all
    else
      can :manage, :all
      # can :read, :all
    end
  end
end
