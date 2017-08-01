class Ability
  include CanCan::Ability

    # Define abilities for the passed in user here. For example:
    #
    def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    if user.is_admin?
      can :manage, :all
      cannot :close, Tournament, close: true
      cannot :sign, Tournament, close: true
      cannot :sign_valid, Tournament, close: true
      cannot :play_games, Tournament, close:false

    elsif !user.pseudo.nil?
      can :read, :all
      can :sign, Tournament, close: false
      can :sign_valid, Tournament, close: false
      can :stats, Player
    else
      can :read, :all
    end
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
