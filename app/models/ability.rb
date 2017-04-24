class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    can :manage, Drill do |d|
      d.user == user
    end
  end
end
