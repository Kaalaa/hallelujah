class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
    can :manage, Order, id: user.id # this should rescrict the orders but doesn't
  end

end
