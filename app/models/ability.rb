class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    can :manage, Drill do |d|
      # you should put an expression here that returns true / false. It should
      # return true when the use should be able to do the opertaion, which is
      # `manage` in this case
      d.user == user
    end
  end
end
